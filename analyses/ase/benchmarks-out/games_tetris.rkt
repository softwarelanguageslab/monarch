(letrec ((any? (lambda (v) (letrec ((g7721 #t)) g7721)))
         (meta (lambda (v) (letrec ((g7722 v)) g7722)))
         (member
          (lambda (v lst)
            (letrec ((g7723
                      (letrec ((g7724
                                (letrec ((x-e7725 lst))
                                  (match
                                   x-e7725
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7726 (eq? v v1)))
                                       (if x-cnd7726 #t (member v vs)))))))))
                        g7724)))
              g7723)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7727 (lambda (v) (letrec ((g7728 v)) g7728)))) g7727)))
         (nonzero?
          (lambda (v)
            (letrec ((g7729 (letrec ((x7730 (= v 0))) (not x7730)))) g7729))))
  (letrec ((g7731
            (letrec ((g7732
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7733 '())
                                 (g7734
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7735
                                                        (lambda (k j lst)
                                                          (letrec ((g7736
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7737
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7737))
                                                                     lst)))
                                                            g7736))))
                                                g7735)))
                                           (real?/c
                                            (lambda (g7260 g7261 g7262)
                                              (letrec ((g7738
                                                        (letrec ((x-cnd7739
                                                                  (real?
                                                                   g7262)))
                                                          (if x-cnd7739
                                                            g7262
                                                            (blame
                                                             g7260
                                                             'real?)))))
                                                g7738)))
                                           (boolean?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7740
                                                        (letrec ((x-cnd7741
                                                                  (boolean?
                                                                   g7265)))
                                                          (if x-cnd7741
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'boolean?)))))
                                                g7740)))
                                           (number?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7742
                                                        (letrec ((x-cnd7743
                                                                  (number?
                                                                   g7268)))
                                                          (if x-cnd7743
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'number?)))))
                                                g7742)))
                                           (any/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7744
                                                        (letrec ((x-cnd7745
                                                                  ((lambda (v)
                                                                     (letrec ((g7746
                                                                               #t))
                                                                       g7746))
                                                                   g7271)))
                                                          (if x-cnd7745
                                                            g7271
                                                            (blame
                                                             g7269
                                                             '(lambda (v)
                                                                #t))))))
                                                g7744)))
                                           (any?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7747
                                                        (letrec ((x-cnd7748
                                                                  ((lambda (v)
                                                                     (letrec ((g7749
                                                                               #t))
                                                                       g7749))
                                                                   g7274)))
                                                          (if x-cnd7748
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7747)))
                                           (cons?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7750
                                                        (letrec ((x-cnd7751
                                                                  (pair?
                                                                   g7277)))
                                                          (if x-cnd7751
                                                            g7277
                                                            (blame
                                                             g7275
                                                             'pair?)))))
                                                g7750)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7752
                                                        (letrec ((x-cnd7753
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7753
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7752)))
                                           (integer?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7754
                                                        (letrec ((x-cnd7755
                                                                  (integer?
                                                                   g7283)))
                                                          (if x-cnd7755
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'integer?)))))
                                                g7754)))
                                           (symbol?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7756
                                                        (letrec ((x-cnd7757
                                                                  (symbol?
                                                                   g7286)))
                                                          (if x-cnd7757
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'symbol?)))))
                                                g7756)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7758
                                                        (lambda (k j v)
                                                          (letrec ((g7759
                                                                    (letrec ((x-cnd7760
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7760
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7759))))
                                                g7758)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7761
                                                        (lambda (k j v)
                                                          (letrec ((g7762
                                                                    (letrec ((x-cnd7763
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7763
                                                                        '()
                                                                        (letrec ((x7767
                                                                                  (letrec ((x7768
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7768)))
                                                                                 (x7764
                                                                                  (letrec ((x7766
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7765
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7766
                                                                                     k
                                                                                     j
                                                                                     x7765))))
                                                                          (orig-cons
                                                                           x7767
                                                                           x7764))))))
                                                            g7762))))
                                                g7761)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7769 #t)) g7769)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (= v 0)))
                                                          (not x7771))))
                                                g7770)))
                                           (nonzero?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7772
                                                        (letrec ((x-cnd7773
                                                                  ((lambda (v)
                                                                     (letrec ((g7774
                                                                               (letrec ((x7775
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7775))))
                                                                       g7774))
                                                                   g7289)))
                                                          (if x-cnd7773
                                                            g7289
                                                            (blame
                                                             g7287
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7772)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7776 v)) g7776)))
                                           (+
                                            (letrec ((xj7290 'server)
                                                     (xk7291 'client))
                                              (letrec ((g7777
                                                        ((lambda (j7294
                                                                  k7295
                                                                  f7296)
                                                           (letrec ((g7779
                                                                     (lambda (g7292
                                                                              g7293)
                                                                       (letrec ((g7780
                                                                                 (letrec ((x7781
                                                                                           (letrec ((x7783
                                                                                                     (number?/c
                                                                                                      j7294
                                                                                                      k7295
                                                                                                      g7292))
                                                                                                    (x7782
                                                                                                     (number?/c
                                                                                                      j7294
                                                                                                      k7295
                                                                                                      g7293)))
                                                                                             (f7296
                                                                                              x7783
                                                                                              x7782))))
                                                                                   (number?/c
                                                                                    j7294
                                                                                    k7295
                                                                                    x7781))))
                                                                         g7780))))
                                                             g7779))
                                                         xj7290
                                                         xk7291
                                                         (lambda (a b)
                                                           (letrec ((g7778
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7778)))))
                                                g7777)))
                                           (-
                                            (letrec ((xj7297 'server)
                                                     (xk7298 'client))
                                              (letrec ((g7784
                                                        ((lambda (j7301
                                                                  k7302
                                                                  f7303)
                                                           (letrec ((g7786
                                                                     (lambda (g7299
                                                                              g7300)
                                                                       (letrec ((g7787
                                                                                 (letrec ((x7788
                                                                                           (letrec ((x7790
                                                                                                     (number?/c
                                                                                                      j7301
                                                                                                      k7302
                                                                                                      g7299))
                                                                                                    (x7789
                                                                                                     (number?/c
                                                                                                      j7301
                                                                                                      k7302
                                                                                                      g7300)))
                                                                                             (f7303
                                                                                              x7790
                                                                                              x7789))))
                                                                                   (number?/c
                                                                                    j7301
                                                                                    k7302
                                                                                    x7788))))
                                                                         g7787))))
                                                             g7786))
                                                         xj7297
                                                         xk7298
                                                         (lambda (a b)
                                                           (letrec ((g7785
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7785)))))
                                                g7784)))
                                           (*
                                            (letrec ((xj7304 'server)
                                                     (xk7305 'client))
                                              (letrec ((g7791
                                                        ((lambda (j7308
                                                                  k7309
                                                                  f7310)
                                                           (letrec ((g7793
                                                                     (lambda (g7306
                                                                              g7307)
                                                                       (letrec ((g7794
                                                                                 (letrec ((x7795
                                                                                           (letrec ((x7797
                                                                                                     (number?/c
                                                                                                      j7308
                                                                                                      k7309
                                                                                                      g7306))
                                                                                                    (x7796
                                                                                                     (number?/c
                                                                                                      j7308
                                                                                                      k7309
                                                                                                      g7307)))
                                                                                             (f7310
                                                                                              x7797
                                                                                              x7796))))
                                                                                   (number?/c
                                                                                    j7308
                                                                                    k7309
                                                                                    x7795))))
                                                                         g7794))))
                                                             g7793))
                                                         xj7304
                                                         xk7305
                                                         (lambda (a b)
                                                           (letrec ((g7792
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7792)))))
                                                g7791)))
                                           (/
                                            (letrec ((xj7311 'server)
                                                     (xk7312 'client))
                                              (letrec ((g7798
                                                        ((lambda (j7315
                                                                  k7316
                                                                  f7317)
                                                           (letrec ((g7800
                                                                     (lambda (g7313
                                                                              g7314)
                                                                       (letrec ((g7801
                                                                                 (letrec ((x7802
                                                                                           (letrec ((x7804
                                                                                                     (number?/c
                                                                                                      j7315
                                                                                                      k7316
                                                                                                      g7313))
                                                                                                    (x7803
                                                                                                     (number?/c
                                                                                                      j7315
                                                                                                      k7316
                                                                                                      g7314)))
                                                                                             (f7317
                                                                                              x7804
                                                                                              x7803))))
                                                                                   (number?/c
                                                                                    j7315
                                                                                    k7316
                                                                                    x7802))))
                                                                         g7801))))
                                                             g7800))
                                                         xj7311
                                                         xk7312
                                                         (lambda (a b)
                                                           (letrec ((g7799
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7799)))))
                                                g7798)))
                                           (car
                                            (letrec ((xj7318 'server)
                                                     (xk7319 'client))
                                              (letrec ((g7805
                                                        ((lambda (j7321
                                                                  k7322
                                                                  f7323)
                                                           (letrec ((g7807
                                                                     (lambda (g7320)
                                                                       (letrec ((g7808
                                                                                 (letrec ((x7809
                                                                                           (letrec ((x7810
                                                                                                     (pair?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7320)))
                                                                                             (f7323
                                                                                              x7810))))
                                                                                   (any/c
                                                                                    j7321
                                                                                    k7322
                                                                                    x7809))))
                                                                         g7808))))
                                                             g7807))
                                                         xj7318
                                                         xk7319
                                                         (lambda (p)
                                                           (letrec ((g7806
                                                                     (orig-car
                                                                      p)))
                                                             g7806)))))
                                                g7805)))
                                           (cdr
                                            (letrec ((xj7324 'server)
                                                     (xk7325 'client))
                                              (letrec ((g7811
                                                        ((lambda (j7327
                                                                  k7328
                                                                  f7329)
                                                           (letrec ((g7813
                                                                     (lambda (g7326)
                                                                       (letrec ((g7814
                                                                                 (letrec ((x7815
                                                                                           (letrec ((x7816
                                                                                                     (pair?/c
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7326)))
                                                                                             (f7329
                                                                                              x7816))))
                                                                                   (any/c
                                                                                    j7327
                                                                                    k7328
                                                                                    x7815))))
                                                                         g7814))))
                                                             g7813))
                                                         xj7324
                                                         xk7325
                                                         (lambda (p)
                                                           (letrec ((g7812
                                                                     (orig-cdr
                                                                      p)))
                                                             g7812)))))
                                                g7811)))
                                           (cons
                                            (letrec ((xj7330 'server)
                                                     (xk7331 'client))
                                              (letrec ((g7817
                                                        ((lambda (j7334
                                                                  k7335
                                                                  f7336)
                                                           (letrec ((g7819
                                                                     (lambda (g7332
                                                                              g7333)
                                                                       (letrec ((g7820
                                                                                 (letrec ((x7821
                                                                                           (letrec ((x7823
                                                                                                     (any/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7332))
                                                                                                    (x7822
                                                                                                     (any/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7333)))
                                                                                             (f7336
                                                                                              x7823
                                                                                              x7822))))
                                                                                   (pair?/c
                                                                                    j7334
                                                                                    k7335
                                                                                    x7821))))
                                                                         g7820))))
                                                             g7819))
                                                         xj7330
                                                         xk7331
                                                         (lambda (a b)
                                                           (letrec ((g7818
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7818)))))
                                                g7817)))
                                           (vector-ref
                                            (letrec ((xj7337 'server)
                                                     (xk7338 'client))
                                              (letrec ((g7824
                                                        ((lambda (j7340
                                                                  k7341
                                                                  f7342)
                                                           (letrec ((g7826
                                                                     (lambda (g7339)
                                                                       (letrec ((g7827
                                                                                 (letrec ((x7828
                                                                                           (letrec ((x7829
                                                                                                     (vector?/c
                                                                                                      j7340
                                                                                                      k7341
                                                                                                      g7339)))
                                                                                             (f7342
                                                                                              x7829))))
                                                                                   (integer?/c
                                                                                    j7340
                                                                                    k7341
                                                                                    x7828))))
                                                                         g7827))))
                                                             g7826))
                                                         xj7337
                                                         xk7338
                                                         (lambda (v i)
                                                           (letrec ((g7825
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7825)))))
                                                g7824)))
                                           (vector-set!
                                            (letrec ((xj7343 'server)
                                                     (xk7344 'client))
                                              (letrec ((g7830
                                                        ((lambda (j7347
                                                                  k7348
                                                                  f7349)
                                                           (letrec ((g7832
                                                                     (lambda (g7345
                                                                              g7346)
                                                                       (letrec ((g7833
                                                                                 (letrec ((x7834
                                                                                           (letrec ((x7836
                                                                                                     (vector?/c
                                                                                                      j7347
                                                                                                      k7348
                                                                                                      g7345))
                                                                                                    (x7835
                                                                                                     (integer?/c
                                                                                                      j7347
                                                                                                      k7348
                                                                                                      g7346)))
                                                                                             (f7349
                                                                                              x7836
                                                                                              x7835))))
                                                                                   (any/c
                                                                                    j7347
                                                                                    k7348
                                                                                    x7834))))
                                                                         g7833))))
                                                             g7832))
                                                         xj7343
                                                         xk7344
                                                         (lambda (vec i v)
                                                           (letrec ((g7831
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7831)))))
                                                g7830)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7837
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7837)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7839
                                                                  (letrec ((x7840
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7840))))
                                                          (cdr x7839))))
                                                g7838)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7841
                                                        (letrec ((x7844
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7844)))
                                                       (g7842
                                                        (letrec ((x7845
                                                                  (list? l)))
                                                          (assert x7845)))
                                                       (g7843
                                                        (letrec ((x-cnd7846
                                                                  (null? l)))
                                                          (if x-cnd7846
                                                            '()
                                                            (letrec ((x7849
                                                                      (letrec ((x7850
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7850)))
                                                                     (x7847
                                                                      (letrec ((x7848
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7848))))
                                                              (cons
                                                               x7849
                                                               x7847))))))
                                                g7843)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7851
                                                        (letrec ((x7852
                                                                  (car x)))
                                                          (cdr x7852))))
                                                g7851)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7853
                                                        (letrec ((x7854
                                                                  (letrec ((x7855
                                                                            (letrec ((x7856
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7856))))
                                                                    (cdr
                                                                     x7855))))
                                                          (car x7854))))
                                                g7853)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7857
                                                        (letrec ((x7858
                                                                  (letrec ((x7859
                                                                            (letrec ((x7860
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7860))))
                                                                    (car
                                                                     x7859))))
                                                          (cdr x7858))))
                                                g7857)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7861
                                                        (letrec ((x7864
                                                                  (string?
                                                                   filename)))
                                                          (assert x7864)))
                                                       (g7862
                                                        (letrec ((x7865
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7865)))
                                                       (g7863
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7866
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7867 res))
                                                            g7867))))
                                                g7863)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7868
                                                        (letrec ((x7869
                                                                  (letrec ((x7870
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7870))))
                                                          (car x7869))))
                                                g7868)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7873
                                                                            (letrec ((x7874
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7874))))
                                                                    (car
                                                                     x7873))))
                                                          (cdr x7872))))
                                                g7871)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7875
                                                        (letrec ((x7877
                                                                  (list? l)))
                                                          (assert x7877)))
                                                       (g7876
                                                        (letrec ((x-cnd7878
                                                                  (null? l)))
                                                          (if x-cnd7878
                                                            #f
                                                            (letrec ((x-cnd7879
                                                                      (letrec ((x7880
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7880
                                                                         k))))
                                                              (if x-cnd7879
                                                                (car l)
                                                                (letrec ((x7881
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7881))))))))
                                                g7876)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7882
                                                        (letrec ((x7883
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7883))))
                                                g7882)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7884
                                                        (letrec ((x7886
                                                                  (list? l)))
                                                          (assert x7886)))
                                                       (g7885
                                                        (letrec ((x-cnd7887
                                                                  (null? l)))
                                                          (if x-cnd7887
                                                            ""
                                                            (letrec ((x7890
                                                                      (letrec ((x7891
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7891)))
                                                                     (x7888
                                                                      (letrec ((x7889
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7889))))
                                                              (string-append
                                                               x7890
                                                               x7888))))))
                                                g7885)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7892
                                                        (letrec ((x7895
                                                                  (char? c1)))
                                                          (assert x7895)))
                                                       (g7893
                                                        (letrec ((x7896
                                                                  (char? c2)))
                                                          (assert x7896)))
                                                       (g7894
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7897
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7897))))
                                                g7894)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7898
                                                        (letrec ((x7899
                                                                  (letrec ((x7900
                                                                            (letrec ((x7901
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7901))))
                                                                    (cdr
                                                                     x7900))))
                                                          (cdr x7899))))
                                                g7898)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7902
                                                        (letrec ((x7905
                                                                  (list? l)))
                                                          (assert x7905)))
                                                       (g7903
                                                        (letrec ((x7906
                                                                  (number?)))
                                                          (assert x7906)))
                                                       (g7904
                                                        (letrec ((x-cnd7907
                                                                  (zero? k)))
                                                          (if x-cnd7907
                                                            x
                                                            (letrec ((x7909
                                                                      (cdr x))
                                                                     (x7908
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7909
                                                               x7908))))))
                                                g7904)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7910 '())) g7910)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7911
                                                        (letrec ((x-cnd7912
                                                                  (letrec ((x7913
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7913))))
                                                          (if x-cnd7912
                                                            (letrec ((x7914
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7914))
                                                            #f))))
                                                g7911)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7915
                                                        (letrec ((x7917
                                                                  (number? x)))
                                                          (assert x7917)))
                                                       (g7916
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7918
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7919
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7919)))))
                                                            g7918))))
                                                g7916)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7920
                                                        (letrec ((val7244
                                                                  (letrec ((x7921
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7921
                                                                     9))))
                                                          (letrec ((g7922
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7923
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7923
                                                                                   10))))
                                                                        (letrec ((g7924
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7925
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7925
                                                                                       32)))))
                                                                          g7924)))))
                                                            g7922))))
                                                g7920)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7926
                                                        (letrec ((x7927
                                                                  (letrec ((x7928
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7928))))
                                                          (cdr x7927))))
                                                g7926)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7929
                                                        (letrec ((x7931
                                                                  (number? x)))
                                                          (assert x7931)))
                                                       (g7930 (> x 0)))
                                                g7930)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7932 #f)) g7932)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7933
                                                        (letrec ((x7934
                                                                  (cdr x)))
                                                          (cdr x7934))))
                                                g7933)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7935
                                                        (letrec ((x7937
                                                                  (number? x)))
                                                          (assert x7937)))
                                                       (g7936
                                                        (letrec ((x-cnd7938
                                                                  (< x 0)))
                                                          (if x-cnd7938
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7936)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7939
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7940
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7941
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7941
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7942
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7943
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7943
                                                                                                  (letrec ((x-cnd7944
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7944
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7945
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7946
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7946
                                                                                                                (letrec ((x-cnd7947
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7947
                                                                                                                    (letrec ((x-cnd7948
                                                                                                                              (letrec ((x7950
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7949
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7950
                                                                                                                                 x7949))))
                                                                                                                      (if x-cnd7948
                                                                                                                        (letrec ((x7952
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7951
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7952
                                                                                                                           x7951))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7953
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7954
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7954
                                                                                                                    (letrec ((x-cnd7955
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7955
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7956
                                                                                                                                    (letrec ((x-cnd7957
                                                                                                                                              (letrec ((x7958
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7958
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7957
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7959
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7960
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7961
                                                                                                                                                                                      (letrec ((x7963
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7962
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7963
                                                                                                                                                                                         x7962))))
                                                                                                                                                                              (if x-cnd7961
                                                                                                                                                                                (letrec ((x7964
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7964))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7960))))
                                                                                                                                                      g7959))))
                                                                                                                                          (letrec ((g7965
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7965))
                                                                                                                                        #f))))
                                                                                                                            g7956))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7953)))))
                                                                                        g7945)))))
                                                                          g7942)))))
                                                            g7940))))
                                                g7939)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7966
                                                        (letrec ((x7967
                                                                  (letrec ((x7968
                                                                            (letrec ((x7969
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7969))))
                                                                    (car
                                                                     x7968))))
                                                          (cdr x7967))))
                                                g7966)))
                                           (caaddr
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
                                                          (car x7971))))
                                                g7970)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7974 (eq? x y)))
                                                g7974)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7975
                                                        (letrec ((x7977
                                                                  (number? x)))
                                                          (assert x7977)))
                                                       (g7976
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7978
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7979
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7979)))))
                                                            g7978))))
                                                g7976)))
                                           (call-with-input-file
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
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7985
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7986 res))
                                                            g7986))))
                                                g7982)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7987 (cons x '())))
                                                g7987)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7988
                                                        (letrec ((x7991
                                                                  (char? c1)))
                                                          (assert x7991)))
                                                       (g7989
                                                        (letrec ((x7992
                                                                  (char? c2)))
                                                          (assert x7992)))
                                                       (g7990
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7993
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7993))))
                                                g7990)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7994
                                                        (letrec ((x7995
                                                                  (letrec ((x7996
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7996))))
                                                          (cdr x7995))))
                                                g7994)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7997
                                                        (letrec ((x7998
                                                                  (letrec ((x7999
                                                                            (letrec ((x8000
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8000))))
                                                                    (car
                                                                     x7999))))
                                                          (cdr x7998))))
                                                g7997)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8001
                                                        (letrec ((x8002
                                                                  (letrec ((x8003
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8003))))
                                                          (car x8002))))
                                                g8001)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8004
                                                        (letrec ((x8005
                                                                  (letrec ((x8006
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8006))))
                                                          (car x8005))))
                                                g8004)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8007
                                                        (letrec ((x8010
                                                                  (char? c1)))
                                                          (assert x8010)))
                                                       (g8008
                                                        (letrec ((x8011
                                                                  (char? c2)))
                                                          (assert x8011)))
                                                       (g8009
                                                        (letrec ((x8012
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8012))))
                                                g8009)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8013
                                                        (letrec ((x8014
                                                                  (letrec ((x8015
                                                                            (letrec ((x8016
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8016))))
                                                                    (car
                                                                     x8015))))
                                                          (car x8014))))
                                                g8013)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8017
                                                        (letrec ((x8019
                                                                  (number? x)))
                                                          (assert x8019)))
                                                       (g8018 (< x 0)))
                                                g8018)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8020 (memq e l)))
                                                g8020)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8021
                                                        (letrec ((x8022
                                                                  (letrec ((x8023
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8023))))
                                                          (car x8022))))
                                                g8021)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8024 '())) g8024)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8025
                                                        (letrec ((x8027
                                                                  (list? l)))
                                                          (assert x8027)))
                                                       (g8026
                                                        (letrec ((x-cnd8028
                                                                  (null? l)))
                                                          (if x-cnd8028
                                                            '()
                                                            (letrec ((x8031
                                                                      (letrec ((x8032
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8032)))
                                                                     (x8029
                                                                      (letrec ((x8030
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8030))))
                                                              (append
                                                               x8031
                                                               x8029))))))
                                                g8026)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8033
                                                        (letrec ((x8034
                                                                  (letrec ((x8035
                                                                            (letrec ((x8036
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8036))))
                                                                    (car
                                                                     x8035))))
                                                          (car x8034))))
                                                g8033)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8037
                                                        (letrec ((x8038
                                                                  (letrec ((x8039
                                                                            (letrec ((x8040
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8040))))
                                                                    (cdr
                                                                     x8039))))
                                                          (cdr x8038))))
                                                g8037)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8041
                                                        (letrec ((x8043
                                                                  (number? x)))
                                                          (assert x8043)))
                                                       (g8042
                                                        (letrec ((x8044
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8044))))
                                                g8042)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8045
                                                        (letrec ((x8046
                                                                  (letrec ((x8047
                                                                            (letrec ((x8048
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8048))))
                                                                    (car
                                                                     x8047))))
                                                          (car x8046))))
                                                g8045)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8049
                                                        (letrec ((x8052
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8052)))
                                                       (g8050
                                                        (letrec ((x8053
                                                                  (list?
                                                                   args)))
                                                          (assert x8053)))
                                                       (g8051
                                                        (letrec ((x-cnd8054
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8054
                                                            (letrec ((g8055
                                                                      (proc)))
                                                              g8055)
                                                            (letrec ((x-cnd8056
                                                                      (letrec ((x8057
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8057))))
                                                              (if x-cnd8056
                                                                (letrec ((g8058
                                                                          (letrec ((x8059
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8059))))
                                                                  g8058)
                                                                (letrec ((x-cnd8060
                                                                          (letrec ((x8061
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8061))))
                                                                  (if x-cnd8060
                                                                    (letrec ((g8062
                                                                              (letrec ((x8064
                                                                                        (car
                                                                                         args))
                                                                                       (x8063
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8064
                                                                                 x8063))))
                                                                      g8062)
                                                                    (letrec ((x-cnd8065
                                                                              (letrec ((x8066
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8066))))
                                                                      (if x-cnd8065
                                                                        (letrec ((g8067
                                                                                  (letrec ((x8070
                                                                                            (car
                                                                                             args))
                                                                                           (x8069
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8068
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8070
                                                                                     x8069
                                                                                     x8068))))
                                                                          g8067)
                                                                        (letrec ((x-cnd8071
                                                                                  (letrec ((x8072
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8072))))
                                                                          (if x-cnd8071
                                                                            (letrec ((g8073
                                                                                      (letrec ((x8077
                                                                                                (car
                                                                                                 args))
                                                                                               (x8076
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8075
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8074
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8077
                                                                                         x8076
                                                                                         x8075
                                                                                         x8074))))
                                                                              g8073)
                                                                            (letrec ((x-cnd8078
                                                                                      (letrec ((x8079
                                                                                                (letrec ((x8080
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8080))))
                                                                                        (null?
                                                                                         x8079))))
                                                                              (if x-cnd8078
                                                                                (letrec ((g8081
                                                                                          (letrec ((x8087
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8086
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8085
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8084
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8082
                                                                                                    (letrec ((x8083
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8083))))
                                                                                            (proc
                                                                                             x8087
                                                                                             x8086
                                                                                             x8085
                                                                                             x8084
                                                                                             x8082))))
                                                                                  g8081)
                                                                                (letrec ((x-cnd8088
                                                                                          (letrec ((x8089
                                                                                                    (letrec ((x8090
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8090))))
                                                                                            (null?
                                                                                             x8089))))
                                                                                  (if x-cnd8088
                                                                                    (letrec ((g8091
                                                                                              (letrec ((x8099
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8098
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8097
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8096
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8094
                                                                                                        (letrec ((x8095
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8095)))
                                                                                                       (x8092
                                                                                                        (letrec ((x8093
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8093))))
                                                                                                (proc
                                                                                                 x8099
                                                                                                 x8098
                                                                                                 x8097
                                                                                                 x8096
                                                                                                 x8094
                                                                                                 x8092))))
                                                                                      g8091)
                                                                                    (letrec ((x-cnd8100
                                                                                              (letrec ((x8101
                                                                                                        (letrec ((x8102
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8102))))
                                                                                                (null?
                                                                                                 x8101))))
                                                                                      (if x-cnd8100
                                                                                        (letrec ((g8103
                                                                                                  (letrec ((x8113
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8112
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8111
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8110
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8108
                                                                                                            (letrec ((x8109
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8109)))
                                                                                                           (x8106
                                                                                                            (letrec ((x8107
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8107)))
                                                                                                           (x8104
                                                                                                            (letrec ((x8105
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8105))))
                                                                                                    (proc
                                                                                                     x8113
                                                                                                     x8112
                                                                                                     x8111
                                                                                                     x8110
                                                                                                     x8108
                                                                                                     x8106
                                                                                                     x8104))))
                                                                                          g8103)
                                                                                        (letrec ((g8114
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8114)))))))))))))))))))
                                                g8051)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8115
                                                        (letrec ((x8117
                                                                  (list? l)))
                                                          (assert x8117)))
                                                       (g8116
                                                        (letrec ((x-cnd8118
                                                                  (null? l)))
                                                          (if x-cnd8118
                                                            #f
                                                            (letrec ((x-cnd8119
                                                                      (letrec ((x8120
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8120
                                                                         e))))
                                                              (if x-cnd8119
                                                                l
                                                                (letrec ((x8121
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8121))))))))
                                                g8116)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (letrec ((x8124
                                                                            (letrec ((x8125
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8125))))
                                                                    (cdr
                                                                     x8124))))
                                                          (cdr x8123))))
                                                g8122)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8126
                                                        (letrec ((x8127
                                                                  (letrec ((x8128
                                                                            (letrec ((x8129
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8129))))
                                                                    (cdr
                                                                     x8128))))
                                                          (car x8127))))
                                                g8126)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8130 (random 42)))
                                                g8130)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8131
                                                        (letrec ((x8133
                                                                  (number? x)))
                                                          (assert x8133)))
                                                       (g8132 (= x 0)))
                                                g8132)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8134
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8135
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8135))))
                                                g8134)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8136
                                                        (letrec ((x8137
                                                                  (cdr x)))
                                                          (car x8137))))
                                                g8136)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8138
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd8139
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8139
                                                                      (letrec ((x8140
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8140))
                                                                      #f))))
                                                          (letrec ((g8141
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g8141))))
                                                g8138)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (letrec ((x8145
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8145))))
                                                                    (cdr
                                                                     x8144))))
                                                          (cdr x8143))))
                                                g8142)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8146
                                                        (letrec ((x-cnd8147
                                                                  (letrec ((x8148
                                                                            #\0))
                                                                    (char<=?
                                                                     x8148
                                                                     c))))
                                                          (if x-cnd8147
                                                            (letrec ((x8149
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8149))
                                                            #f))))
                                                g8146)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8150
                                                        (letrec ((x8152
                                                                  (list? l)))
                                                          (assert x8152)))
                                                       (g8151
                                                        (letrec ((x-cnd8153
                                                                  (null? l)))
                                                          (if x-cnd8153
                                                            #f
                                                            (letrec ((x-cnd8154
                                                                      (letrec ((x8155
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8155
                                                                         k))))
                                                              (if x-cnd8154
                                                                (car l)
                                                                (letrec ((x8156
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8156))))))))
                                                g8151)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8157 (if x #f #t)))
                                                g8157)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8158 (append l1 l2)))
                                                g8158)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8159
                                                        (letrec ((x8161
                                                                  (list? l)))
                                                          (assert x8161)))
                                                       (g8160
                                                        (letrec ((x-cnd8162
                                                                  (null? l)))
                                                          (if x-cnd8162
                                                            #f
                                                            (letrec ((x-cnd8163
                                                                      (letrec ((x8164
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8164
                                                                         e))))
                                                              (if x-cnd8163
                                                                l
                                                                (letrec ((x8165
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8165))))))))
                                                g8160)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8166
                                                        (letrec ((x8167
                                                                  (letrec ((x8168
                                                                            (letrec ((x8169
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8169))))
                                                                    (cdr
                                                                     x8168))))
                                                          (car x8167))))
                                                g8166)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8170
                                                        (letrec ((x8172
                                                                  (list? l)))
                                                          (assert x8172)))
                                                       (g8171
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8173
                                                                              (letrec ((x-cnd8174
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8174
                                                                                  0
                                                                                  (letrec ((x8175
                                                                                            (letrec ((x8176
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8176))))
                                                                                    (+
                                                                                     1
                                                                                     x8175))))))
                                                                      g8173))))
                                                          (letrec ((g8177
                                                                    (rec l)))
                                                            g8177))))
                                                g8171)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8178
                                                        (letrec ((x8181
                                                                  (char? c1)))
                                                          (assert x8181)))
                                                       (g8179
                                                        (letrec ((x8182
                                                                  (char? c2)))
                                                          (assert x8182)))
                                                       (g8180
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8183
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8183))))
                                                g8180)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8184
                                                        (letrec ((x8185
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8185))))
                                                g8184)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8186
                                                        (letrec ((x8187
                                                                  (letrec ((x8188
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8188))))
                                                          (cdr x8187))))
                                                g8186)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8189
                                                        (letrec ((x8191
                                                                  (list? l)))
                                                          (assert x8191)))
                                                       (g8190
                                                        (letrec ((x-cnd8192
                                                                  (null? l)))
                                                          (if x-cnd8192
                                                            #f
                                                            (letrec ((x-cnd8193
                                                                      (letrec ((x8194
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8194
                                                                         k))))
                                                              (if x-cnd8193
                                                                (car l)
                                                                (letrec ((x8195
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8195))))))))
                                                g8190)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8196
                                                        (letrec ((x8197
                                                                  (car x)))
                                                          (car x8197))))
                                                g8196)))
                                           (char>?
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
                                                        (letrec ((x8203
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8203))))
                                                g8200)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8204
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8205
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8205))))
                                                g8204)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8206
                                                        (letrec ((x8209
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8209)))
                                                       (g8207
                                                        (letrec ((x8210
                                                                  (list? l)))
                                                          (assert x8210)))
                                                       (g8208
                                                        (letrec ((x-cnd8211
                                                                  (null? l)))
                                                          (if x-cnd8211
                                                            #t
                                                            (letrec ((x-cnd8212
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8212
                                                                (letrec ((g8213
                                                                          (letrec ((x8215
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8215)))
                                                                         (g8214
                                                                          (letrec ((x8216
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8216))))
                                                                  g8214)
                                                                '()))))))
                                                g8208)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8217
                                                        (letrec ((x8219
                                                                  (number? x)))
                                                          (assert x8219)))
                                                       (g8218
                                                        (letrec ((x-cnd8220
                                                                  (< x 0)))
                                                          (if x-cnd8220
                                                            (- 0 x)
                                                            x))))
                                                g8218)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8221
                                                        (letrec ((x8224
                                                                  (char? c1)))
                                                          (assert x8224)))
                                                       (g8222
                                                        (letrec ((x8225
                                                                  (char? c2)))
                                                          (assert x8225)))
                                                       (g8223
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8226
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8226))))
                                                g8223)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8227
                                                        (letrec ((x8228
                                                                  (letrec ((x8229
                                                                            (letrec ((x8230
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8230))))
                                                                    (cdr
                                                                     x8229))))
                                                          (car x8228))))
                                                g8227)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8231 #f)) g8231)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8232
                                                        (letrec ((x8234
                                                                  (letrec ((x8235
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8235)))
                                                                 (x8233
                                                                  (gcd m n)))
                                                          (/ x8234 x8233))))
                                                g8232)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8236
                                                        (letrec ((x8238
                                                                  (number? x)))
                                                          (assert x8238)))
                                                       (g8237
                                                        (letrec ((x8239
                                                                  (<= x y)))
                                                          (not x8239))))
                                                g8237)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8240
                                                        (letrec ((x8244
                                                                  (list? l)))
                                                          (assert x8244)))
                                                       (g8241
                                                        (letrec ((x8245
                                                                  (number?
                                                                   index)))
                                                          (assert x8245)))
                                                       (g8242
                                                        (letrec ((x8246
                                                                  (letrec ((x8247
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8247))))
                                                          (assert x8246)))
                                                       (g8243
                                                        (letrec ((x-cnd8248
                                                                  (= index 0)))
                                                          (if x-cnd8248
                                                            (car l)
                                                            (letrec ((x8250
                                                                      (cdr l))
                                                                     (x8249
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8250
                                                               x8249))))))
                                                g8243)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8251
                                                        (letrec ((x-cnd8252
                                                                  (= b 0)))
                                                          (if x-cnd8252
                                                            a
                                                            (letrec ((x8253
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8253))))))
                                                g8251)))
                                           (block
                                            (lambda (x7699 y7700 color7701)
                                              (letrec ((g8254
                                                        (letrec ((x8255
                                                                  (letrec ((x8256
                                                                            (letrec ((x8257
                                                                                      (cons
                                                                                       color7701
                                                                                       '())))
                                                                              (cons
                                                                               y7700
                                                                               x8257))))
                                                                    (cons
                                                                     x7699
                                                                     x8256))))
                                                          (cons
                                                           'block
                                                           x8255))))
                                                g8254)))
                                           (block?
                                            (lambda (block7698)
                                              (letrec ((g8258
                                                        (letrec ((x8259
                                                                  (car
                                                                   block7698)))
                                                          (eq? x8259 'block))))
                                                g8258)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8260
                                                        (letrec ((x8261
                                                                  (cdr block)))
                                                          (car x8261))))
                                                g8260)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8262
                                                        (letrec ((x8263
                                                                  (letrec ((x8264
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x8264))))
                                                          (car x8263))))
                                                g8262)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8265
                                                        (letrec ((x8266
                                                                  (letrec ((x8267
                                                                            (letrec ((x8268
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8268))))
                                                                    (cdr
                                                                     x8267))))
                                                          (car x8266))))
                                                g8265)))
                                           (tetra
                                            (lambda (center7706 blocks7707)
                                              (letrec ((g8269
                                                        (letrec ((x8270
                                                                  (letrec ((x8271
                                                                            (cons
                                                                             blocks7707
                                                                             '())))
                                                                    (cons
                                                                     center7706
                                                                     x8271))))
                                                          (cons
                                                           'tetra
                                                           x8270))))
                                                g8269)))
                                           (tetra?
                                            (lambda (tetra7705)
                                              (letrec ((g8272
                                                        (letrec ((x8273
                                                                  (car
                                                                   tetra7705)))
                                                          (eq? x8273 'tetra))))
                                                g8272)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8274
                                                        (letrec ((x8275
                                                                  (cdr tetra)))
                                                          (car x8275))))
                                                g8274)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8276
                                                        (letrec ((x8277
                                                                  (letrec ((x8278
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x8278))))
                                                          (car x8277))))
                                                g8276)))
                                           (world
                                            (lambda (tetra7711 blocks7712)
                                              (letrec ((g8279
                                                        (letrec ((x8280
                                                                  (letrec ((x8281
                                                                            (cons
                                                                             blocks7712
                                                                             '())))
                                                                    (cons
                                                                     tetra7711
                                                                     x8281))))
                                                          (cons
                                                           'world
                                                           x8280))))
                                                g8279)))
                                           (world?
                                            (lambda (world7710)
                                              (letrec ((g8282
                                                        (letrec ((x8283
                                                                  (car
                                                                   world7710)))
                                                          (eq? x8283 'world))))
                                                g8282)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8284
                                                        (letrec ((x8285
                                                                  (cdr world)))
                                                          (car x8285))))
                                                g8284)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8286
                                                        (letrec ((x8287
                                                                  (letrec ((x8288
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8288))))
                                                          (car x8287))))
                                                g8286)))
                                           (posn
                                            (lambda (x7716 y7717)
                                              (letrec ((g8289
                                                        (letrec ((x8290
                                                                  (letrec ((x8291
                                                                            (cons
                                                                             y7717
                                                                             '())))
                                                                    (cons
                                                                     x7716
                                                                     x8291))))
                                                          (cons 'posn x8290))))
                                                g8289)))
                                           (posn?
                                            (lambda (posn7715)
                                              (letrec ((g8292
                                                        (letrec ((x8293
                                                                  (car
                                                                   posn7715)))
                                                          (eq? x8293 'posn))))
                                                g8292)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8294
                                                        (letrec ((x8295
                                                                  (cdr posn)))
                                                          (car x8295))))
                                                g8294)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8296
                                                        (letrec ((x8297
                                                                  (letrec ((x8298
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x8298))))
                                                          (car x8297))))
                                                g8296)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7351 k7352 v7350)
                                              (letrec ((g8299
                                                        (letrec ((checked7353
                                                                  (letrec ((x8300
                                                                            (letrec ((x8301
                                                                                      (cdr
                                                                                       v7350)))
                                                                              (car
                                                                               x8301))))
                                                                    (real?/c
                                                                     j7351
                                                                     k7352
                                                                     x8300))))
                                                          (letrec ((g8302
                                                                    (letrec ((checked7354
                                                                              (letrec ((x8303
                                                                                        (letrec ((x8304
                                                                                                  (letrec ((x8305
                                                                                                            (cdr
                                                                                                             v7350)))
                                                                                                    (cdr
                                                                                                     x8305))))
                                                                                          (car
                                                                                           x8304))))
                                                                                (real?/c
                                                                                 j7351
                                                                                 k7352
                                                                                 x8303))))
                                                                      (letrec ((g8306
                                                                                (letrec ((x8307
                                                                                          (letrec ((x8308
                                                                                                    (cons
                                                                                                     checked7354
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7353
                                                                                             x8308))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8307))))
                                                                        g8306))))
                                                            g8302))))
                                                g8299)))
                                           (BLOCK/C
                                            (lambda (j7357 k7358 v7356)
                                              (letrec ((g8309
                                                        (letrec ((checked7359
                                                                  (letrec ((x8310
                                                                            (letrec ((x8311
                                                                                      (cdr
                                                                                       v7356)))
                                                                              (car
                                                                               x8311))))
                                                                    (real?/c
                                                                     j7357
                                                                     k7358
                                                                     x8310))))
                                                          (letrec ((g8312
                                                                    (letrec ((checked7360
                                                                              (letrec ((x8313
                                                                                        (letrec ((x8314
                                                                                                  (letrec ((x8315
                                                                                                            (cdr
                                                                                                             v7356)))
                                                                                                    (cdr
                                                                                                     x8315))))
                                                                                          (car
                                                                                           x8314))))
                                                                                (real?/c
                                                                                 j7357
                                                                                 k7358
                                                                                 x8313))))
                                                                      (letrec ((g8316
                                                                                (letrec ((checked7361
                                                                                          (letrec ((x8317
                                                                                                    (letrec ((x8318
                                                                                                              (letrec ((x8319
                                                                                                                        (letrec ((x8320
                                                                                                                                  (cdr
                                                                                                                                   v7356)))
                                                                                                                          (cdr
                                                                                                                           x8320))))
                                                                                                                (cdr
                                                                                                                 x8319))))
                                                                                                      (car
                                                                                                       x8318))))
                                                                                            (COLOR/C
                                                                                             j7357
                                                                                             k7358
                                                                                             x8317))))
                                                                                  (letrec ((g8321
                                                                                            (letrec ((x8322
                                                                                                      (letrec ((x8323
                                                                                                                (letrec ((x8324
                                                                                                                          (cons
                                                                                                                           checked7361
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7360
                                                                                                                   x8324))))
                                                                                                        (cons
                                                                                                         checked7359
                                                                                                         x8323))))
                                                                                              (cons
                                                                                               block
                                                                                               x8322))))
                                                                                    g8321))))
                                                                        g8316))))
                                                            g8312))))
                                                g8309)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7364 k7365 v7363)
                                              (letrec ((g8325
                                                        (letrec ((checked7366
                                                                  (letrec ((x8326
                                                                            (letrec ((x8327
                                                                                      (cdr
                                                                                       v7363)))
                                                                              (car
                                                                               x8327))))
                                                                    (POSN/C
                                                                     j7364
                                                                     k7365
                                                                     x8326))))
                                                          (letrec ((g8328
                                                                    (letrec ((checked7367
                                                                              (letrec ((x8329
                                                                                        (letrec ((x8330
                                                                                                  (letrec ((x8331
                                                                                                            (cdr
                                                                                                             v7363)))
                                                                                                    (cdr
                                                                                                     x8331))))
                                                                                          (car
                                                                                           x8330))))
                                                                                (BSET/C
                                                                                 j7364
                                                                                 k7365
                                                                                 x8329))))
                                                                      (letrec ((g8332
                                                                                (letrec ((x8333
                                                                                          (letrec ((x8334
                                                                                                    (cons
                                                                                                     checked7367
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7366
                                                                                             x8334))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8333))))
                                                                        g8332))))
                                                            g8328))))
                                                g8325)))
                                           (WORLD/C
                                            (lambda (j7370 k7371 v7369)
                                              (letrec ((g8335
                                                        (letrec ((checked7372
                                                                  (letrec ((x8336
                                                                            (letrec ((x8337
                                                                                      (cdr
                                                                                       v7369)))
                                                                              (car
                                                                               x8337))))
                                                                    (TETRA/C
                                                                     j7370
                                                                     k7371
                                                                     x8336))))
                                                          (letrec ((g8338
                                                                    (letrec ((checked7373
                                                                              (letrec ((x8339
                                                                                        (letrec ((x8340
                                                                                                  (letrec ((x8341
                                                                                                            (cdr
                                                                                                             v7369)))
                                                                                                    (cdr
                                                                                                     x8341))))
                                                                                          (car
                                                                                           x8340))))
                                                                                (BSET/C
                                                                                 j7370
                                                                                 k7371
                                                                                 x8339))))
                                                                      (letrec ((g8342
                                                                                (letrec ((x8343
                                                                                          (letrec ((x8344
                                                                                                    (cons
                                                                                                     checked7373
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7372
                                                                                             x8344))))
                                                                                  (cons
                                                                                   world
                                                                                   x8343))))
                                                                        g8342))))
                                                            g8338))))
                                                g8335)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8345
                                                        (letrec ((x-cnd8346
                                                                  (letrec ((x8348
                                                                            (posn-x
                                                                             p1))
                                                                           (x8347
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8348
                                                                     x8347))))
                                                          (if x-cnd8346
                                                            (letrec ((x8350
                                                                      (posn-y
                                                                       p1))
                                                                     (x8349
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8350 x8349))
                                                            #f))))
                                                g8345)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8351
                                                        (letrec ((x-cnd8352
                                                                  (letrec ((x8354
                                                                            (block-x
                                                                             b1))
                                                                           (x8353
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8354
                                                                     x8353))))
                                                          (if x-cnd8352
                                                            (letrec ((x8356
                                                                      (block-y
                                                                       b1))
                                                                     (x8355
                                                                      (block-y
                                                                       b2)))
                                                              (= x8356 x8355))
                                                            #f))))
                                                g8351)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8357
                                                        (letrec ((x8361
                                                                  (letrec ((x8362
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8362)))
                                                                 (x8359
                                                                  (letrec ((x8360
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8360)))
                                                                 (x8358
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8361
                                                           x8359
                                                           x8358))))
                                                g8357)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8363
                                                        (letrec ((x8370
                                                                  (letrec ((x8374
                                                                            (posn-x
                                                                             c))
                                                                           (x8371
                                                                            (letrec ((x8373
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8372
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8373
                                                                               x8372))))
                                                                    (+
                                                                     x8374
                                                                     x8371)))
                                                                 (x8365
                                                                  (letrec ((x8369
                                                                            (posn-y
                                                                             c))
                                                                           (x8366
                                                                            (letrec ((x8368
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8367
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8368
                                                                               x8367))))
                                                                    (+
                                                                     x8369
                                                                     x8366)))
                                                                 (x8364
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8370
                                                           x8365
                                                           x8364))))
                                                g8363)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8375
                                                        (letrec ((x8376
                                                                  (letrec ((x8377
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8377))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8376))))
                                                g8375)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8378
                                                        (letrec ((x-cnd8379
                                                                  (null? xs)))
                                                          (if x-cnd8379
                                                            (letrec ((g8380
                                                                      #f))
                                                              g8380)
                                                            (letrec ((g8381
                                                                      (letrec ((x8384
                                                                                (letrec ((x8385
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8385)))
                                                                               (x8382
                                                                                (letrec ((x8383
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8383))))
                                                                        (or x8384
                                                                            x8382))))
                                                              g8381)))))
                                                g8378)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8386
                                                        (letrec ((x-cnd8387
                                                                  (null? xs)))
                                                          (if x-cnd8387
                                                            (letrec ((g8388
                                                                      #t))
                                                              g8388)
                                                            (letrec ((g8389
                                                                      (letrec ((x8392
                                                                                (letrec ((x8393
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8393)))
                                                                               (x8390
                                                                                (letrec ((x8391
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8391))))
                                                                        (and x8392
                                                                             x8390))))
                                                              g8389)))))
                                                g8386)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8394
                                                        (letrec ((x-cnd8395
                                                                  (null? xs)))
                                                          (if x-cnd8395
                                                            (letrec ((g8396
                                                                      null))
                                                              g8396)
                                                            (letrec ((x-cnd8397
                                                                      (letrec ((x8398
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8398))))
                                                              (if x-cnd8397
                                                                (letrec ((g8399
                                                                          (letrec ((x8402
                                                                                    (car
                                                                                     xs))
                                                                                   (x8400
                                                                                    (letrec ((x8401
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8401))))
                                                                            (cons
                                                                             x8402
                                                                             x8400))))
                                                                  g8399)
                                                                (letrec ((g8403
                                                                          (letrec ((x8404
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8404))))
                                                                  g8403)))))))
                                                g8394)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8405
                                                        (letrec ((x-cnd8406
                                                                  (null? l)))
                                                          (if x-cnd8406
                                                            (letrec ((g8407 r))
                                                              g8407)
                                                            (letrec ((g8408
                                                                      (letrec ((x8411
                                                                                (car
                                                                                 l))
                                                                               (x8409
                                                                                (letrec ((x8410
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8410
                                                                                   r))))
                                                                        (cons
                                                                         x8411
                                                                         x8409))))
                                                              g8408)))))
                                                g8405)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8412
                                                        (letrec ((x-cnd8413
                                                                  (null? xs)))
                                                          (if x-cnd8413
                                                            (letrec ((g8414 a))
                                                              g8414)
                                                            (letrec ((g8415
                                                                      (letrec ((x8418
                                                                                (car
                                                                                 xs))
                                                                               (x8416
                                                                                (letrec ((x8417
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8417))))
                                                                        (f
                                                                         x8418
                                                                         x8416))))
                                                              g8415)))))
                                                g8412)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8419
                                                        (letrec ((x8420
                                                                  (letrec ((x8422
                                                                            (c))
                                                                           (x8421
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x8422
                                                                      x8421))))
                                                          (ormap x8420 bs))))
                                                g8419)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8423
                                                        (letrec ((x8424
                                                                  (letrec ((x8426
                                                                            (b))
                                                                           (x8425
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8426
                                                                      x8425))))
                                                          (andmap x8424 bs1))))
                                                g8423)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8427
                                                        (letrec ((x-cnd8428
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8428
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8427)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8429
                                                        (letrec ((x8430
                                                                  (letrec ((x8432
                                                                            (b))
                                                                           (x8431
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8432
                                                                      x8431))))
                                                          (filter x8430 bs1))))
                                                g8429)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8433 (length bs)))
                                                g8433)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8434
                                                        (letrec ((x8435
                                                                  (letrec ((x8437
                                                                            (b))
                                                                           (x8436
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x8437
                                                                      x8436))))
                                                          (map x8435 bs))))
                                                g8434)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8438
                                                        (letrec ((x8439
                                                                  (letrec ((x8441
                                                                            (b))
                                                                           (x8440
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x8441
                                                                      x8440))))
                                                          (map x8439 bs))))
                                                g8438)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8442
                                                        (letrec ((x8443
                                                                  (letrec ((x8445
                                                                            (b))
                                                                           (x8444
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x8445
                                                                      x8444))))
                                                          (map x8443 bs))))
                                                g8442)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8446
                                                        (letrec ((x8447
                                                                  (letrec ((x8451
                                                                            (b))
                                                                           (x8448
                                                                            (letrec ((x8450
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8449
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x8450
                                                                               x8449
                                                                               c))))
                                                                    (λ x8451
                                                                      x8448))))
                                                          (map x8447 bs))))
                                                g8446)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8452
                                                        (letrec ((x8453
                                                                  (letrec ((x8456
                                                                            (b))
                                                                           (x8454
                                                                            (letrec ((x8455
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x8455))))
                                                                    (λ x8456
                                                                      x8454))))
                                                          (filter x8453 bs))))
                                                g8452)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8457
                                                        (letrec ((x8458
                                                                  (letrec ((x8459
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8459))))
                                                          (=
                                                           board-width
                                                           x8458))))
                                                g8457)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8460
                                                        (letrec ((x8461
                                                                  (letrec ((x8464
                                                                            (b))
                                                                           (x8462
                                                                            (letrec ((x8463
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x8463
                                                                               0))))
                                                                    (λ x8464
                                                                      x8462))))
                                                          (ormap x8461 bs))))
                                                g8460)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8465
                                                        (letrec ((x8466
                                                                  (letrec ((x8471
                                                                            (b
                                                                             bs))
                                                                           (x8467
                                                                            (letrec ((x-cnd8468
                                                                                      (blocks-contains?
                                                                                       bs
                                                                                       b)))
                                                                              (if x-cnd8468
                                                                                (letrec ((g8469
                                                                                          bs))
                                                                                  g8469)
                                                                                (letrec ((g8470
                                                                                          (cons
                                                                                           b
                                                                                           bs)))
                                                                                  g8470)))))
                                                                    (λ x8471
                                                                      x8467))))
                                                          (foldr
                                                           x8466
                                                           bs2
                                                           bs1))))
                                                g8465)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8472
                                                        (letrec ((x8473
                                                                  (letrec ((x8476
                                                                            (b
                                                                             n))
                                                                           (x8474
                                                                            (letrec ((x8475
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x8475
                                                                               n))))
                                                                    (λ x8476
                                                                      x8474))))
                                                          (foldr x8473 0 bs))))
                                                g8472)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8477
                                                        (letrec ((x8478
                                                                  (letrec ((x8481
                                                                            (b
                                                                             n))
                                                                           (x8479
                                                                            (letrec ((x8480
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x8480
                                                                               n))))
                                                                    (λ x8481
                                                                      x8479))))
                                                          (foldr
                                                           x8478
                                                           board-width
                                                           bs))))
                                                g8477)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8482
                                                        (letrec ((x8483
                                                                  (letrec ((x8486
                                                                            (b
                                                                             n))
                                                                           (x8484
                                                                            (letrec ((x8485
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x8485
                                                                               n))))
                                                                    (λ x8486
                                                                      x8484))))
                                                          (foldr x8483 0 bs))))
                                                g8482)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8487
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8487)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8488
                                                        (letrec ((x-cnd8489
                                                                  (< i 0)))
                                                          (if x-cnd8489
                                                            (letrec ((g8490
                                                                      empty))
                                                              g8490)
                                                            (letrec ((x-cnd8491
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8491
                                                                (letrec ((g8492
                                                                          (letrec ((x8494
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8493
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8494
                                                                             x8493))))
                                                                  g8492)
                                                                (letrec ((g8495
                                                                          (letrec ((x8498
                                                                                    (letrec ((x8499
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8499
                                                                                       offset)))
                                                                                   (x8496
                                                                                    (letrec ((x8497
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8497))))
                                                                            (blocks-union
                                                                             x8498
                                                                             x8496))))
                                                                  g8495)))))))
                                                g8488)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8500
                                                        (letrec ((x8503
                                                                  (letrec ((x8507
                                                                            (letrec ((x8508
                                                                                      (letrec ((x8509
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8509))))
                                                                              (+
                                                                               dx
                                                                               x8508)))
                                                                           (x8504
                                                                            (letrec ((x8505
                                                                                      (letrec ((x8506
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8506))))
                                                                              (+
                                                                               dy
                                                                               x8505))))
                                                                    (posn
                                                                     x8507
                                                                     x8504)))
                                                                 (x8501
                                                                  (letrec ((x8502
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8502))))
                                                          (tetra
                                                           x8503
                                                           x8501))))
                                                g8500)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8510
                                                        (letrec ((x8514
                                                                  (tetra-center
                                                                   t))
                                                                 (x8511
                                                                  (letrec ((x8513
                                                                            (tetra-center
                                                                             t))
                                                                           (x8512
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8513
                                                                     x8512))))
                                                          (tetra
                                                           x8514
                                                           x8511))))
                                                g8510)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8515
                                                        (letrec ((x8519
                                                                  (tetra-center
                                                                   t))
                                                                 (x8516
                                                                  (letrec ((x8518
                                                                            (tetra-center
                                                                             t))
                                                                           (x8517
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8518
                                                                     x8517))))
                                                          (tetra
                                                           x8519
                                                           x8516))))
                                                g8515)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8520
                                                        (letrec ((x8521
                                                                  (letrec ((x8522
                                                                            (letrec ((x8523
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8523
                                                                               bs))))
                                                                    (false?
                                                                     x8522))))
                                                          (false? x8521))))
                                                g8520)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8524
                                                        (letrec ((x8527
                                                                  (tetra-center
                                                                   t))
                                                                 (x8525
                                                                  (letrec ((x8526
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8526
                                                                     c))))
                                                          (tetra
                                                           x8527
                                                           x8525))))
                                                g8524)))
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
                                              (letrec ((g8528
                                                        (letrec ((x8529
                                                                  (letrec ((x8535
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8530
                                                                            (letrec ((x8534
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8533
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8532
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8531
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8534
                                                                               x8533
                                                                               x8532
                                                                               x8531))))
                                                                    (tetra
                                                                     x8535
                                                                     x8530))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8529))))
                                                g8528)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8536
                                                        (letrec ((x8542
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8537
                                                                  (letrec ((x8538
                                                                            (letrec ((x8540
                                                                                      (letrec ((x8541
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8541)))
                                                                                     (x8539
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8540
                                                                               x8539))))
                                                                    (eliminate-full-rows
                                                                     x8538))))
                                                          (world
                                                           x8542
                                                           x8537))))
                                                g8536)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8543
                                                        (letrec ((x-cnd8544
                                                                  (landed? w)))
                                                          (if x-cnd8544
                                                            (letrec ((g8545 w))
                                                              g8545)
                                                            (letrec ((g8546
                                                                      (letrec ((x8547
                                                                                (letrec ((x8549
                                                                                          (letrec ((x8550
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8550)))
                                                                                         (x8548
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8549
                                                                                   x8548))))
                                                                        (world-jump-down
                                                                         x8547))))
                                                              g8546)))))
                                                g8543)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8551
                                                        (letrec ((x8553
                                                                  (letrec ((x8554
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8554)))
                                                                 (x8552
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8553
                                                           x8552))))
                                                g8551)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8555
                                                        (letrec ((x8557
                                                                  (letrec ((x8558
                                                                            (letrec ((x8559
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8559))))
                                                                    (blocks-max-y
                                                                     x8558)))
                                                                 (x8556
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8557 x8556))))
                                                g8555)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8560
                                                        (letrec ((val7259
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8561
                                                                    (if val7259
                                                                      val7259
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8561))))
                                                g8560)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8562
                                                        (letrec ((x-cnd8563
                                                                  (landed? w)))
                                                          (if x-cnd8563
                                                            (letrec ((g8564
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8564)
                                                            (letrec ((g8565
                                                                      (letrec ((x8567
                                                                                (letrec ((x8568
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8568)))
                                                                               (x8566
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8567
                                                                         x8566))))
                                                              g8565)))))
                                                g8562)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8569
                                                        (letrec ((x-cnd8570
                                                                  (letrec ((x8576
                                                                            (letrec ((x8577
                                                                                      (letrec ((x8578
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8578))))
                                                                              (<
                                                                               x8577
                                                                               0)))
                                                                           (x8573
                                                                            (letrec ((x8574
                                                                                      (letrec ((x8575
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-max-x
                                                                                         x8575))))
                                                                              (>=
                                                                               x8574
                                                                               board-width)))
                                                                           (x8571
                                                                            (letrec ((x8572
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (tetra-overlaps-blocks?
                                                                               new-tetra
                                                                               x8572))))
                                                                    (or x8576
                                                                        x8573
                                                                        x8571))))
                                                          (if x-cnd8570
                                                            (letrec ((g8579 w))
                                                              g8579)
                                                            (letrec ((g8580
                                                                      (letrec ((x8581
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8581))))
                                                              g8580)))))
                                                g8569)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8582
                                                        (letrec ((x8583
                                                                  (letrec ((x8584
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8584))))
                                                          (try-new-tetra
                                                           w
                                                           x8583))))
                                                g8582)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8585
                                                        (letrec ((x8586
                                                                  (letrec ((x8587
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8587))))
                                                          (try-new-tetra
                                                           w
                                                           x8586))))
                                                g8585)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8588
                                                        (letrec ((x8589
                                                                  (letrec ((x8590
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8590))))
                                                          (try-new-tetra
                                                           w
                                                           x8589))))
                                                g8588)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8591
                                                        (letrec ((x8592
                                                                  (letrec ((x8593
                                                                            (letrec ((x8594
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8594))))
                                                                    (tetra-change-color
                                                                     x8593
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8592))))
                                                g8591)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8595
                                                        (letrec ((x-cnd8596
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8596
                                                            (letrec ((g8597
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8597)
                                                            (letrec ((x-cnd8598
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8598
                                                                (letrec ((g8599
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8599)
                                                                (letrec ((x-cnd8600
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8600
                                                                    (letrec ((g8601
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8601)
                                                                    (letrec ((x-cnd8602
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8602
                                                                        (letrec ((g8603
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8603)
                                                                        (letrec ((x-cnd8604
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8604
                                                                            (letrec ((g8605
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8605)
                                                                            (letrec ((g8606
                                                                                      w))
                                                                              g8606)))))))))))))
                                                g8595)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8607
                                                        (cons 'image '())))
                                                g8607)))
                                           (image?
                                            (lambda (image7720)
                                              (letrec ((g8608
                                                        (letrec ((x8609
                                                                  (car
                                                                   image7720)))
                                                          (eq? x8609 'image))))
                                                g8608)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8610 (image)))
                                                g8610)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8611 (image)))
                                                g8611)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8612 (image)))
                                                g8612)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8613 (image)))
                                                g8613)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8614 (image)))
                                                g8614)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8615
                                                        (letrec ((x-cnd8616
                                                                  (letrec ((x8617
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8617))))
                                                          (if x-cnd8616
                                                            (letrec ((g8618
                                                                      (car
                                                                       xs)))
                                                              g8618)
                                                            (letrec ((g8619
                                                                      (letrec ((x8620
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8620))))
                                                              g8619)))))
                                                g8615)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8621
                                                        (letrec ((x8625
                                                                  (letrec ((x8626
                                                                            (letrec ((x8630
                                                                                      (letrec ((x8631
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8631)))
                                                                                     (x8627
                                                                                      (letrec ((x8629
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8628
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8629
                                                                                         x8628))))
                                                                              (append
                                                                               x8630
                                                                               x8627))))
                                                                    (blocks->image
                                                                     x8626)))
                                                                 (x8622
                                                                  (letrec ((x8624
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8623
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8624
                                                                     x8623))))
                                                          (place-image
                                                           x8625
                                                           0
                                                           0
                                                           x8622))))
                                                g8621)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8632
                                                        (letrec ((x8638
                                                                  (letrec ((x8644
                                                                            (b
                                                                             img))
                                                                           (x8639
                                                                            (letrec ((x-cnd8640
                                                                                      (letrec ((x8641
                                                                                                (block-y
                                                                                                 b)))
                                                                                        (<=
                                                                                         0
                                                                                         x8641))))
                                                                              (if x-cnd8640
                                                                                (letrec ((g8642
                                                                                          (place-block
                                                                                           b
                                                                                           img)))
                                                                                  g8642)
                                                                                (letrec ((g8643
                                                                                          img))
                                                                                  g8643)))))
                                                                    (λ x8644
                                                                      x8639)))
                                                                 (x8633
                                                                  (letrec ((x8636
                                                                            (letrec ((x8637
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8637)))
                                                                           (x8634
                                                                            (letrec ((x8635
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8635))))
                                                                    (empty-scene
                                                                     x8636
                                                                     x8634))))
                                                          (foldr
                                                           x8638
                                                           x8633
                                                           bs))))
                                                g8632)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8645
                                                        (letrec ((x8649
                                                                  (letrec ((x8652
                                                                            (add1
                                                                             block-size))
                                                                           (x8651
                                                                            (add1
                                                                             block-size))
                                                                           (x8650
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8652
                                                                     x8651
                                                                     'solid
                                                                     x8650)))
                                                                 (x8646
                                                                  (letrec ((x8648
                                                                            (add1
                                                                             block-size))
                                                                           (x8647
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8648
                                                                     x8647
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8649
                                                           x8646))))
                                                g8645)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8653
                                                        (letrec ((x8662
                                                                  (block->image
                                                                   b))
                                                                 (x8658
                                                                  (letrec ((x8660
                                                                            (letrec ((x8661
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8661
                                                                               block-size)))
                                                                           (x8659
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8660
                                                                     x8659)))
                                                                 (x8654
                                                                  (letrec ((x8656
                                                                            (letrec ((x8657
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8657
                                                                               block-size)))
                                                                           (x8655
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8656
                                                                     x8655))))
                                                          (place-image
                                                           x8662
                                                           x8658
                                                           x8654
                                                           scene))))
                                                g8653)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8663
                                                        (letrec ((x8664
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8664 null))))
                                                g8663))))
                                    (letrec ((g8665
                                              (letrec ((x8728
                                                        (letrec ((xj7375
                                                                  (letrec ((x8729
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8729)))
                                                                 (xk7376
                                                                  (letrec ((x8730
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8730))))
                                                          (letrec ((g8731
                                                                    ((lambda (j7379
                                                                              k7380
                                                                              f7381)
                                                                       (letrec ((g8732
                                                                                 (lambda (g7377
                                                                                          g7378)
                                                                                   (letrec ((g8733
                                                                                             (letrec ((x8734
                                                                                                       (letrec ((x8736
                                                                                                                 (POSN/C
                                                                                                                  j7379
                                                                                                                  k7380
                                                                                                                  g7377))
                                                                                                                (x8735
                                                                                                                 (POSN/C
                                                                                                                  j7379
                                                                                                                  k7380
                                                                                                                  g7378)))
                                                                                                         (f7381
                                                                                                          x8736
                                                                                                          x8735))))
                                                                                               (boolean?/c
                                                                                                j7379
                                                                                                k7380
                                                                                                x8734))))
                                                                                     g8733))))
                                                                         g8732))
                                                                     xj7375
                                                                     xk7376
                                                                     posn=?)))
                                                            g8731)))
                                                       (x8723
                                                        (letrec ((x8724
                                                                  (letrec ((x8727
                                                                            (input))
                                                                           (x8725
                                                                            (letrec ((x8726
                                                                                      (input)))
                                                                              (cons
                                                                               x8726
                                                                               '()))))
                                                                    (cons
                                                                     x8727
                                                                     x8725))))
                                                          (cons 'posn x8724)))
                                                       (x8718
                                                        (letrec ((x8719
                                                                  (letrec ((x8722
                                                                            (input))
                                                                           (x8720
                                                                            (letrec ((x8721
                                                                                      (input)))
                                                                              (cons
                                                                               x8721
                                                                               '()))))
                                                                    (cons
                                                                     x8722
                                                                     x8720))))
                                                          (cons 'posn x8719))))
                                                (x8728 x8723 x8718)))
                                             (g8666
                                              (letrec ((xj7382
                                                        (letrec ((x8737 (loc)))
                                                          (cons
                                                           'module
                                                           x8737)))
                                                       (xk7383
                                                        (letrec ((x8738 (loc)))
                                                          (cons
                                                           'importer
                                                           x8738))))
                                                (letrec ((g8739
                                                          (any/c
                                                           xj7382
                                                           xk7383
                                                           COLOR/C)))
                                                  g8739)))
                                             (g8667
                                              (letrec ((xj7384
                                                        (letrec ((x8740 (loc)))
                                                          (cons
                                                           'module
                                                           x8740)))
                                                       (xk7385
                                                        (letrec ((x8741 (loc)))
                                                          (cons
                                                           'importer
                                                           x8741))))
                                                (letrec ((g8742
                                                          (any/c
                                                           xj7384
                                                           xk7385
                                                           POSN/C)))
                                                  g8742)))
                                             (g8668
                                              (letrec ((xj7386
                                                        (letrec ((x8743 (loc)))
                                                          (cons
                                                           'module
                                                           x8743)))
                                                       (xk7387
                                                        (letrec ((x8744 (loc)))
                                                          (cons
                                                           'importer
                                                           x8744))))
                                                (letrec ((g8745
                                                          (any/c
                                                           xj7386
                                                           xk7387
                                                           BLOCK/C)))
                                                  g8745)))
                                             (g8669
                                              (letrec ((xj7388
                                                        (letrec ((x8746 (loc)))
                                                          (cons
                                                           'module
                                                           x8746)))
                                                       (xk7389
                                                        (letrec ((x8747 (loc)))
                                                          (cons
                                                           'importer
                                                           x8747))))
                                                (letrec ((g8748
                                                          (any/c
                                                           xj7388
                                                           xk7389
                                                           TETRA/C)))
                                                  g8748)))
                                             (g8670
                                              (letrec ((xj7390
                                                        (letrec ((x8749 (loc)))
                                                          (cons
                                                           'module
                                                           x8749)))
                                                       (xk7391
                                                        (letrec ((x8750 (loc)))
                                                          (cons
                                                           'importer
                                                           x8750))))
                                                (letrec ((g8751
                                                          (any/c
                                                           xj7390
                                                           xk7391
                                                           WORLD/C)))
                                                  g8751)))
                                             (g8671
                                              (letrec ((xj7392
                                                        (letrec ((x8752 (loc)))
                                                          (cons
                                                           'module
                                                           x8752)))
                                                       (xk7393
                                                        (letrec ((x8753 (loc)))
                                                          (cons
                                                           'importer
                                                           x8753))))
                                                (letrec ((g8754
                                                          (any/c
                                                           xj7392
                                                           xk7393
                                                           BSET/C)))
                                                  g8754)))
                                             (g8672
                                              (letrec ((xj7394
                                                        (letrec ((x8755 (loc)))
                                                          (cons
                                                           'module
                                                           x8755)))
                                                       (xk7395
                                                        (letrec ((x8756 (loc)))
                                                          (cons
                                                           'importer
                                                           x8756))))
                                                (letrec ((g8757
                                                          (integer?/c
                                                           xj7394
                                                           xk7395
                                                           block-size)))
                                                  g8757)))
                                             (g8673
                                              (letrec ((xj7396
                                                        (letrec ((x8758 (loc)))
                                                          (cons
                                                           'module
                                                           x8758)))
                                                       (xk7397
                                                        (letrec ((x8759 (loc)))
                                                          (cons
                                                           'importer
                                                           x8759))))
                                                (letrec ((g8760
                                                          (integer?/c
                                                           xj7396
                                                           xk7397
                                                           board-width)))
                                                  g8760)))
                                             (g8674
                                              (letrec ((xj7398
                                                        (letrec ((x8761 (loc)))
                                                          (cons
                                                           'module
                                                           x8761)))
                                                       (xk7399
                                                        (letrec ((x8762 (loc)))
                                                          (cons
                                                           'importer
                                                           x8762))))
                                                (letrec ((g8763
                                                          (integer?/c
                                                           xj7398
                                                           xk7399
                                                           board-height)))
                                                  g8763)))
                                             (g8675
                                              (letrec ((x8776
                                                        (letrec ((xj7400
                                                                  (letrec ((x8777
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8777)))
                                                                 (xk7401
                                                                  (letrec ((x8778
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8778))))
                                                          (letrec ((g8779
                                                                    ((lambda (j7404
                                                                              k7405
                                                                              f7406)
                                                                       (letrec ((g8780
                                                                                 (lambda (g7402
                                                                                          g7403)
                                                                                   (letrec ((g8781
                                                                                             (letrec ((x8782
                                                                                                       (letrec ((x8784
                                                                                                                 (POSN/C
                                                                                                                  j7404
                                                                                                                  k7405
                                                                                                                  g7402))
                                                                                                                (x8783
                                                                                                                 (BLOCK/C
                                                                                                                  j7404
                                                                                                                  k7405
                                                                                                                  g7403)))
                                                                                                         (f7406
                                                                                                          x8784
                                                                                                          x8783))))
                                                                                               (BLOCK/C
                                                                                                j7404
                                                                                                k7405
                                                                                                x8782))))
                                                                                     g8781))))
                                                                         g8780))
                                                                     xj7400
                                                                     xk7401
                                                                     block-rotate-ccw)))
                                                            g8779)))
                                                       (x8771
                                                        (letrec ((x8772
                                                                  (letrec ((x8775
                                                                            (input))
                                                                           (x8773
                                                                            (letrec ((x8774
                                                                                      (input)))
                                                                              (cons
                                                                               x8774
                                                                               '()))))
                                                                    (cons
                                                                     x8775
                                                                     x8773))))
                                                          (cons 'posn x8772)))
                                                       (x8764
                                                        (letrec ((x8765
                                                                  (letrec ((x8770
                                                                            (input))
                                                                           (x8766
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
                                                                     x8770
                                                                     x8766))))
                                                          (cons
                                                           'block
                                                           x8765))))
                                                (x8776 x8771 x8764)))
                                             (g8676
                                              (letrec ((x8797
                                                        (letrec ((xj7407
                                                                  (letrec ((x8798
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8798)))
                                                                 (xk7408
                                                                  (letrec ((x8799
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8799))))
                                                          (letrec ((g8800
                                                                    ((lambda (j7411
                                                                              k7412
                                                                              f7413)
                                                                       (letrec ((g8801
                                                                                 (lambda (g7409
                                                                                          g7410)
                                                                                   (letrec ((g8802
                                                                                             (letrec ((x8803
                                                                                                       (letrec ((x8805
                                                                                                                 (POSN/C
                                                                                                                  j7411
                                                                                                                  k7412
                                                                                                                  g7409))
                                                                                                                (x8804
                                                                                                                 (BLOCK/C
                                                                                                                  j7411
                                                                                                                  k7412
                                                                                                                  g7410)))
                                                                                                         (f7413
                                                                                                          x8805
                                                                                                          x8804))))
                                                                                               (BLOCK/C
                                                                                                j7411
                                                                                                k7412
                                                                                                x8803))))
                                                                                     g8802))))
                                                                         g8801))
                                                                     xj7407
                                                                     xk7408
                                                                     block-rotate-cw)))
                                                            g8800)))
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
                                                          (cons 'posn x8793)))
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
                                                (x8797 x8792 x8785)))
                                             (g8677
                                              (letrec ((x8820
                                                        (letrec ((xj7414
                                                                  (letrec ((x8821
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8821)))
                                                                 (xk7415
                                                                  (letrec ((x8822
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8822))))
                                                          (letrec ((g8823
                                                                    ((lambda (j7418
                                                                              k7419
                                                                              f7420)
                                                                       (letrec ((g8824
                                                                                 (lambda (g7416
                                                                                          g7417)
                                                                                   (letrec ((g8825
                                                                                             (letrec ((x8826
                                                                                                       (letrec ((x8828
                                                                                                                 (BLOCK/C
                                                                                                                  j7418
                                                                                                                  k7419
                                                                                                                  g7416))
                                                                                                                (x8827
                                                                                                                 (BLOCK/C
                                                                                                                  j7418
                                                                                                                  k7419
                                                                                                                  g7417)))
                                                                                                         (f7420
                                                                                                          x8828
                                                                                                          x8827))))
                                                                                               (boolean?/c
                                                                                                j7418
                                                                                                k7419
                                                                                                x8826))))
                                                                                     g8825))))
                                                                         g8824))
                                                                     xj7414
                                                                     xk7415
                                                                     block=?)))
                                                            g8823)))
                                                       (x8813
                                                        (letrec ((x8814
                                                                  (letrec ((x8819
                                                                            (input))
                                                                           (x8815
                                                                            (letrec ((x8818
                                                                                      (input))
                                                                                     (x8816
                                                                                      (letrec ((x8817
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8817
                                                                                         '()))))
                                                                              (cons
                                                                               x8818
                                                                               x8816))))
                                                                    (cons
                                                                     x8819
                                                                     x8815))))
                                                          (cons 'block x8814)))
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
                                                (x8820 x8813 x8806)))
                                             (g8678
                                              (letrec ((x8838
                                                        (letrec ((xj7421
                                                                  (letrec ((x8839
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8839)))
                                                                 (xk7422
                                                                  (letrec ((x8840
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8840))))
                                                          (letrec ((g8841
                                                                    ((lambda (j7426
                                                                              k7427
                                                                              f7428)
                                                                       (letrec ((g8842
                                                                                 (lambda (g7423
                                                                                          g7424
                                                                                          g7425)
                                                                                   (letrec ((g8843
                                                                                             (letrec ((x8844
                                                                                                       (letrec ((x8847
                                                                                                                 (real?/c
                                                                                                                  j7426
                                                                                                                  k7427
                                                                                                                  g7423))
                                                                                                                (x8846
                                                                                                                 (real?/c
                                                                                                                  j7426
                                                                                                                  k7427
                                                                                                                  g7424))
                                                                                                                (x8845
                                                                                                                 (BLOCK/C
                                                                                                                  j7426
                                                                                                                  k7427
                                                                                                                  g7425)))
                                                                                                         (f7428
                                                                                                          x8847
                                                                                                          x8846
                                                                                                          x8845))))
                                                                                               (BLOCK/C
                                                                                                j7426
                                                                                                k7427
                                                                                                x8844))))
                                                                                     g8843))))
                                                                         g8842))
                                                                     xj7421
                                                                     xk7422
                                                                     block-move)))
                                                            g8841)))
                                                       (x8837 (input))
                                                       (x8836 (input))
                                                       (x8829
                                                        (letrec ((x8830
                                                                  (letrec ((x8835
                                                                            (input))
                                                                           (x8831
                                                                            (letrec ((x8834
                                                                                      (input))
                                                                                     (x8832
                                                                                      (letrec ((x8833
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8833
                                                                                         '()))))
                                                                              (cons
                                                                               x8834
                                                                               x8832))))
                                                                    (cons
                                                                     x8835
                                                                     x8831))))
                                                          (cons
                                                           'block
                                                           x8830))))
                                                (x8838 x8837 x8836 x8829)))
                                             (g8679
                                              (letrec ((x8856
                                                        (letrec ((xj7429
                                                                  (letrec ((x8857
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8857)))
                                                                 (xk7430
                                                                  (letrec ((x8858
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8858))))
                                                          (letrec ((g8859
                                                                    ((lambda (j7433
                                                                              k7434
                                                                              f7435)
                                                                       (letrec ((g8860
                                                                                 (lambda (g7431
                                                                                          g7432)
                                                                                   (letrec ((g8861
                                                                                             (letrec ((x8862
                                                                                                       (letrec ((x8864
                                                                                                                 (BSET/C
                                                                                                                  j7433
                                                                                                                  k7434
                                                                                                                  g7431))
                                                                                                                (x8863
                                                                                                                 (BLOCK/C
                                                                                                                  j7433
                                                                                                                  k7434
                                                                                                                  g7432)))
                                                                                                         (f7435
                                                                                                          x8864
                                                                                                          x8863))))
                                                                                               (boolean?/c
                                                                                                j7433
                                                                                                k7434
                                                                                                x8862))))
                                                                                     g8861))))
                                                                         g8860))
                                                                     xj7429
                                                                     xk7430
                                                                     blocks-contains?)))
                                                            g8859)))
                                                       (x8855 (input))
                                                       (x8848
                                                        (letrec ((x8849
                                                                  (letrec ((x8854
                                                                            (input))
                                                                           (x8850
                                                                            (letrec ((x8853
                                                                                      (input))
                                                                                     (x8851
                                                                                      (letrec ((x8852
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8852
                                                                                         '()))))
                                                                              (cons
                                                                               x8853
                                                                               x8851))))
                                                                    (cons
                                                                     x8854
                                                                     x8850))))
                                                          (cons
                                                           'block
                                                           x8849))))
                                                (x8856 x8855 x8848)))
                                             (g8680
                                              (letrec ((x8867
                                                        (letrec ((xj7436
                                                                  (letrec ((x8868
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8868)))
                                                                 (xk7437
                                                                  (letrec ((x8869
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8869))))
                                                          (letrec ((g8870
                                                                    ((lambda (j7440
                                                                              k7441
                                                                              f7442)
                                                                       (letrec ((g8871
                                                                                 (lambda (g7438
                                                                                          g7439)
                                                                                   (letrec ((g8872
                                                                                             (letrec ((x8873
                                                                                                       (letrec ((x8875
                                                                                                                 (BSET/C
                                                                                                                  j7440
                                                                                                                  k7441
                                                                                                                  g7438))
                                                                                                                (x8874
                                                                                                                 (BSET/C
                                                                                                                  j7440
                                                                                                                  k7441
                                                                                                                  g7439)))
                                                                                                         (f7442
                                                                                                          x8875
                                                                                                          x8874))))
                                                                                               (boolean?/c
                                                                                                j7440
                                                                                                k7441
                                                                                                x8873))))
                                                                                     g8872))))
                                                                         g8871))
                                                                     xj7436
                                                                     xk7437
                                                                     blocks=?)))
                                                            g8870)))
                                                       (x8866 (input))
                                                       (x8865 (input)))
                                                (x8867 x8866 x8865)))
                                             (g8681
                                              (letrec ((x8878
                                                        (letrec ((xj7443
                                                                  (letrec ((x8879
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8879)))
                                                                 (xk7444
                                                                  (letrec ((x8880
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8880))))
                                                          (letrec ((g8881
                                                                    ((lambda (j7447
                                                                              k7448
                                                                              f7449)
                                                                       (letrec ((g8882
                                                                                 (lambda (g7445
                                                                                          g7446)
                                                                                   (letrec ((g8883
                                                                                             (letrec ((x8884
                                                                                                       (letrec ((x8886
                                                                                                                 (BSET/C
                                                                                                                  j7447
                                                                                                                  k7448
                                                                                                                  g7445))
                                                                                                                (x8885
                                                                                                                 (BSET/C
                                                                                                                  j7447
                                                                                                                  k7448
                                                                                                                  g7446)))
                                                                                                         (f7449
                                                                                                          x8886
                                                                                                          x8885))))
                                                                                               (boolean?/c
                                                                                                j7447
                                                                                                k7448
                                                                                                x8884))))
                                                                                     g8883))))
                                                                         g8882))
                                                                     xj7443
                                                                     xk7444
                                                                     blocks-subset?)))
                                                            g8881)))
                                                       (x8877 (input))
                                                       (x8876 (input)))
                                                (x8878 x8877 x8876)))
                                             (g8682
                                              (letrec ((x8889
                                                        (letrec ((xj7450
                                                                  (letrec ((x8890
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8890)))
                                                                 (xk7451
                                                                  (letrec ((x8891
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8891))))
                                                          (letrec ((g8892
                                                                    ((lambda (j7454
                                                                              k7455
                                                                              f7456)
                                                                       (letrec ((g8893
                                                                                 (lambda (g7452
                                                                                          g7453)
                                                                                   (letrec ((g8894
                                                                                             (letrec ((x8895
                                                                                                       (letrec ((x8897
                                                                                                                 (BSET/C
                                                                                                                  j7454
                                                                                                                  k7455
                                                                                                                  g7452))
                                                                                                                (x8896
                                                                                                                 (BSET/C
                                                                                                                  j7454
                                                                                                                  k7455
                                                                                                                  g7453)))
                                                                                                         (f7456
                                                                                                          x8897
                                                                                                          x8896))))
                                                                                               (BSET/C
                                                                                                j7454
                                                                                                k7455
                                                                                                x8895))))
                                                                                     g8894))))
                                                                         g8893))
                                                                     xj7450
                                                                     xk7451
                                                                     blocks-intersect)))
                                                            g8892)))
                                                       (x8888 (input))
                                                       (x8887 (input)))
                                                (x8889 x8888 x8887)))
                                             (g8683
                                              (letrec ((x8899
                                                        (letrec ((xj7457
                                                                  (letrec ((x8900
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8900)))
                                                                 (xk7458
                                                                  (letrec ((x8901
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8901))))
                                                          (letrec ((g8902
                                                                    ((lambda (j7460
                                                                              k7461
                                                                              f7462)
                                                                       (letrec ((g8903
                                                                                 (lambda (g7459)
                                                                                   (letrec ((g8904
                                                                                             (letrec ((x8905
                                                                                                       (letrec ((x8906
                                                                                                                 (BSET/C
                                                                                                                  j7460
                                                                                                                  k7461
                                                                                                                  g7459)))
                                                                                                         (f7462
                                                                                                          x8906))))
                                                                                               (real?/c
                                                                                                j7460
                                                                                                k7461
                                                                                                x8905))))
                                                                                     g8904))))
                                                                         g8903))
                                                                     xj7457
                                                                     xk7458
                                                                     blocks-count)))
                                                            g8902)))
                                                       (x8898 (input)))
                                                (x8899 x8898)))
                                             (g8684
                                              (letrec ((x8908
                                                        (letrec ((xj7463
                                                                  (letrec ((x8909
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8909)))
                                                                 (xk7464
                                                                  (letrec ((x8910
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8910))))
                                                          (letrec ((g8911
                                                                    ((lambda (j7466
                                                                              k7467
                                                                              f7468)
                                                                       (letrec ((g8912
                                                                                 (lambda (g7465)
                                                                                   (letrec ((g8913
                                                                                             (letrec ((x8914
                                                                                                       (letrec ((x8915
                                                                                                                 (BSET/C
                                                                                                                  j7466
                                                                                                                  k7467
                                                                                                                  g7465)))
                                                                                                         (f7468
                                                                                                          x8915))))
                                                                                               (boolean?/c
                                                                                                j7466
                                                                                                k7467
                                                                                                x8914))))
                                                                                     g8913))))
                                                                         g8912))
                                                                     xj7463
                                                                     xk7464
                                                                     blocks-overflow?)))
                                                            g8911)))
                                                       (x8907 (input)))
                                                (x8908 x8907)))
                                             (g8685
                                              (letrec ((x8919
                                                        (letrec ((xj7469
                                                                  (letrec ((x8920
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8920)))
                                                                 (xk7470
                                                                  (letrec ((x8921
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8921))))
                                                          (letrec ((g8922
                                                                    ((lambda (j7474
                                                                              k7475
                                                                              f7476)
                                                                       (letrec ((g8923
                                                                                 (lambda (g7471
                                                                                          g7472
                                                                                          g7473)
                                                                                   (letrec ((g8924
                                                                                             (letrec ((x8925
                                                                                                       (letrec ((x8928
                                                                                                                 (real?/c
                                                                                                                  j7474
                                                                                                                  k7475
                                                                                                                  g7471))
                                                                                                                (x8927
                                                                                                                 (real?/c
                                                                                                                  j7474
                                                                                                                  k7475
                                                                                                                  g7472))
                                                                                                                (x8926
                                                                                                                 (BSET/C
                                                                                                                  j7474
                                                                                                                  k7475
                                                                                                                  g7473)))
                                                                                                         (f7476
                                                                                                          x8928
                                                                                                          x8927
                                                                                                          x8926))))
                                                                                               (BSET/C
                                                                                                j7474
                                                                                                k7475
                                                                                                x8925))))
                                                                                     g8924))))
                                                                         g8923))
                                                                     xj7469
                                                                     xk7470
                                                                     blocks-move)))
                                                            g8922)))
                                                       (x8918 (input))
                                                       (x8917 (input))
                                                       (x8916 (input)))
                                                (x8919 x8918 x8917 x8916)))
                                             (g8686
                                              (letrec ((x8935
                                                        (letrec ((xj7477
                                                                  (letrec ((x8936
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8936)))
                                                                 (xk7478
                                                                  (letrec ((x8937
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8937))))
                                                          (letrec ((g8938
                                                                    ((lambda (j7481
                                                                              k7482
                                                                              f7483)
                                                                       (letrec ((g8939
                                                                                 (lambda (g7479
                                                                                          g7480)
                                                                                   (letrec ((g8940
                                                                                             (letrec ((x8941
                                                                                                       (letrec ((x8943
                                                                                                                 (POSN/C
                                                                                                                  j7481
                                                                                                                  k7482
                                                                                                                  g7479))
                                                                                                                (x8942
                                                                                                                 (BSET/C
                                                                                                                  j7481
                                                                                                                  k7482
                                                                                                                  g7480)))
                                                                                                         (f7483
                                                                                                          x8943
                                                                                                          x8942))))
                                                                                               (BSET/C
                                                                                                j7481
                                                                                                k7482
                                                                                                x8941))))
                                                                                     g8940))))
                                                                         g8939))
                                                                     xj7477
                                                                     xk7478
                                                                     blocks-rotate-cw)))
                                                            g8938)))
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
                                                          (cons 'posn x8931)))
                                                       (x8929 (input)))
                                                (x8935 x8930 x8929)))
                                             (g8687
                                              (letrec ((x8950
                                                        (letrec ((xj7484
                                                                  (letrec ((x8951
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8951)))
                                                                 (xk7485
                                                                  (letrec ((x8952
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8952))))
                                                          (letrec ((g8953
                                                                    ((lambda (j7488
                                                                              k7489
                                                                              f7490)
                                                                       (letrec ((g8954
                                                                                 (lambda (g7486
                                                                                          g7487)
                                                                                   (letrec ((g8955
                                                                                             (letrec ((x8956
                                                                                                       (letrec ((x8958
                                                                                                                 (POSN/C
                                                                                                                  j7488
                                                                                                                  k7489
                                                                                                                  g7486))
                                                                                                                (x8957
                                                                                                                 (BSET/C
                                                                                                                  j7488
                                                                                                                  k7489
                                                                                                                  g7487)))
                                                                                                         (f7490
                                                                                                          x8958
                                                                                                          x8957))))
                                                                                               (BSET/C
                                                                                                j7488
                                                                                                k7489
                                                                                                x8956))))
                                                                                     g8955))))
                                                                         g8954))
                                                                     xj7484
                                                                     xk7485
                                                                     blocks-rotate-ccw)))
                                                            g8953)))
                                                       (x8945
                                                        (letrec ((x8946
                                                                  (letrec ((x8949
                                                                            (input))
                                                                           (x8947
                                                                            (letrec ((x8948
                                                                                      (input)))
                                                                              (cons
                                                                               x8948
                                                                               '()))))
                                                                    (cons
                                                                     x8949
                                                                     x8947))))
                                                          (cons 'posn x8946)))
                                                       (x8944 (input)))
                                                (x8950 x8945 x8944)))
                                             (g8688
                                              (letrec ((x8961
                                                        (letrec ((xj7491
                                                                  (letrec ((x8962
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8962)))
                                                                 (xk7492
                                                                  (letrec ((x8963
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8963))))
                                                          (letrec ((g8964
                                                                    ((lambda (j7495
                                                                              k7496
                                                                              f7497)
                                                                       (letrec ((g8965
                                                                                 (lambda (g7493
                                                                                          g7494)
                                                                                   (letrec ((g8966
                                                                                             (letrec ((x8967
                                                                                                       (letrec ((x8969
                                                                                                                 (BSET/C
                                                                                                                  j7495
                                                                                                                  k7496
                                                                                                                  g7493))
                                                                                                                (x8968
                                                                                                                 (COLOR/C
                                                                                                                  j7495
                                                                                                                  k7496
                                                                                                                  g7494)))
                                                                                                         (f7497
                                                                                                          x8969
                                                                                                          x8968))))
                                                                                               (BSET/C
                                                                                                j7495
                                                                                                k7496
                                                                                                x8967))))
                                                                                     g8966))))
                                                                         g8965))
                                                                     xj7491
                                                                     xk7492
                                                                     blocks-change-color)))
                                                            g8964)))
                                                       (x8960 (input))
                                                       (x8959 (input)))
                                                (x8961 x8960 x8959)))
                                             (g8689
                                              (letrec ((x8972
                                                        (letrec ((xj7498
                                                                  (letrec ((x8973
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8973)))
                                                                 (xk7499
                                                                  (letrec ((x8974
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8974))))
                                                          (letrec ((g8975
                                                                    ((lambda (j7502
                                                                              k7503
                                                                              f7504)
                                                                       (letrec ((g8976
                                                                                 (lambda (g7500
                                                                                          g7501)
                                                                                   (letrec ((g8977
                                                                                             (letrec ((x8978
                                                                                                       (letrec ((x8980
                                                                                                                 (BSET/C
                                                                                                                  j7502
                                                                                                                  k7503
                                                                                                                  g7500))
                                                                                                                (x8979
                                                                                                                 (real?/c
                                                                                                                  j7502
                                                                                                                  k7503
                                                                                                                  g7501)))
                                                                                                         (f7504
                                                                                                          x8980
                                                                                                          x8979))))
                                                                                               (BSET/C
                                                                                                j7502
                                                                                                k7503
                                                                                                x8978))))
                                                                                     g8977))))
                                                                         g8976))
                                                                     xj7498
                                                                     xk7499
                                                                     blocks-row)))
                                                            g8975)))
                                                       (x8971 (input))
                                                       (x8970 (input)))
                                                (x8972 x8971 x8970)))
                                             (g8690
                                              (letrec ((x8983
                                                        (letrec ((xj7505
                                                                  (letrec ((x8984
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8984)))
                                                                 (xk7506
                                                                  (letrec ((x8985
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8985))))
                                                          (letrec ((g8986
                                                                    ((lambda (j7509
                                                                              k7510
                                                                              f7511)
                                                                       (letrec ((g8987
                                                                                 (lambda (g7507
                                                                                          g7508)
                                                                                   (letrec ((g8988
                                                                                             (letrec ((x8989
                                                                                                       (letrec ((x8991
                                                                                                                 (BSET/C
                                                                                                                  j7509
                                                                                                                  k7510
                                                                                                                  g7507))
                                                                                                                (x8990
                                                                                                                 (real?/c
                                                                                                                  j7509
                                                                                                                  k7510
                                                                                                                  g7508)))
                                                                                                         (f7511
                                                                                                          x8991
                                                                                                          x8990))))
                                                                                               (boolean?/c
                                                                                                j7509
                                                                                                k7510
                                                                                                x8989))))
                                                                                     g8988))))
                                                                         g8987))
                                                                     xj7505
                                                                     xk7506
                                                                     full-row?)))
                                                            g8986)))
                                                       (x8982 (input))
                                                       (x8981 (input)))
                                                (x8983 x8982 x8981)))
                                             (g8691
                                              (letrec ((x8994
                                                        (letrec ((xj7512
                                                                  (letrec ((x8995
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8995)))
                                                                 (xk7513
                                                                  (letrec ((x8996
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8996))))
                                                          (letrec ((g8997
                                                                    ((lambda (j7516
                                                                              k7517
                                                                              f7518)
                                                                       (letrec ((g8998
                                                                                 (lambda (g7514
                                                                                          g7515)
                                                                                   (letrec ((g8999
                                                                                             (letrec ((x9000
                                                                                                       (letrec ((x9002
                                                                                                                 (BSET/C
                                                                                                                  j7516
                                                                                                                  k7517
                                                                                                                  g7514))
                                                                                                                (x9001
                                                                                                                 (BSET/C
                                                                                                                  j7516
                                                                                                                  k7517
                                                                                                                  g7515)))
                                                                                                         (f7518
                                                                                                          x9002
                                                                                                          x9001))))
                                                                                               (BSET/C
                                                                                                j7516
                                                                                                k7517
                                                                                                x9000))))
                                                                                     g8999))))
                                                                         g8998))
                                                                     xj7512
                                                                     xk7513
                                                                     blocks-union)))
                                                            g8997)))
                                                       (x8993 (input))
                                                       (x8992 (input)))
                                                (x8994 x8993 x8992)))
                                             (g8692
                                              (letrec ((x9004
                                                        (letrec ((xj7519
                                                                  (letrec ((x9005
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9005)))
                                                                 (xk7520
                                                                  (letrec ((x9006
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9006))))
                                                          (letrec ((g9007
                                                                    ((lambda (j7522
                                                                              k7523
                                                                              f7524)
                                                                       (letrec ((g9008
                                                                                 (lambda (g7521)
                                                                                   (letrec ((g9009
                                                                                             (letrec ((x9010
                                                                                                       (letrec ((x9011
                                                                                                                 (BSET/C
                                                                                                                  j7522
                                                                                                                  k7523
                                                                                                                  g7521)))
                                                                                                         (f7524
                                                                                                          x9011))))
                                                                                               (real?/c
                                                                                                j7522
                                                                                                k7523
                                                                                                x9010))))
                                                                                     g9009))))
                                                                         g9008))
                                                                     xj7519
                                                                     xk7520
                                                                     blocks-max-x)))
                                                            g9007)))
                                                       (x9003 (input)))
                                                (x9004 x9003)))
                                             (g8693
                                              (letrec ((x9013
                                                        (letrec ((xj7525
                                                                  (letrec ((x9014
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9014)))
                                                                 (xk7526
                                                                  (letrec ((x9015
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9015))))
                                                          (letrec ((g9016
                                                                    ((lambda (j7528
                                                                              k7529
                                                                              f7530)
                                                                       (letrec ((g9017
                                                                                 (lambda (g7527)
                                                                                   (letrec ((g9018
                                                                                             (letrec ((x9019
                                                                                                       (letrec ((x9020
                                                                                                                 (BSET/C
                                                                                                                  j7528
                                                                                                                  k7529
                                                                                                                  g7527)))
                                                                                                         (f7530
                                                                                                          x9020))))
                                                                                               (real?/c
                                                                                                j7528
                                                                                                k7529
                                                                                                x9019))))
                                                                                     g9018))))
                                                                         g9017))
                                                                     xj7525
                                                                     xk7526
                                                                     blocks-min-x)))
                                                            g9016)))
                                                       (x9012 (input)))
                                                (x9013 x9012)))
                                             (g8694
                                              (letrec ((x9022
                                                        (letrec ((xj7531
                                                                  (letrec ((x9023
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9023)))
                                                                 (xk7532
                                                                  (letrec ((x9024
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9024))))
                                                          (letrec ((g9025
                                                                    ((lambda (j7534
                                                                              k7535
                                                                              f7536)
                                                                       (letrec ((g9026
                                                                                 (lambda (g7533)
                                                                                   (letrec ((g9027
                                                                                             (letrec ((x9028
                                                                                                       (letrec ((x9029
                                                                                                                 (BSET/C
                                                                                                                  j7534
                                                                                                                  k7535
                                                                                                                  g7533)))
                                                                                                         (f7536
                                                                                                          x9029))))
                                                                                               (real?/c
                                                                                                j7534
                                                                                                k7535
                                                                                                x9028))))
                                                                                     g9027))))
                                                                         g9026))
                                                                     xj7531
                                                                     xk7532
                                                                     blocks-max-y)))
                                                            g9025)))
                                                       (x9021 (input)))
                                                (x9022 x9021)))
                                             (g8695
                                              (letrec ((x9031
                                                        (letrec ((xj7537
                                                                  (letrec ((x9032
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9032)))
                                                                 (xk7538
                                                                  (letrec ((x9033
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9033))))
                                                          (letrec ((g9034
                                                                    ((lambda (j7540
                                                                              k7541
                                                                              f7542)
                                                                       (letrec ((g9035
                                                                                 (lambda (g7539)
                                                                                   (letrec ((g9036
                                                                                             (letrec ((x9037
                                                                                                       (letrec ((x9038
                                                                                                                 (BSET/C
                                                                                                                  j7540
                                                                                                                  k7541
                                                                                                                  g7539)))
                                                                                                         (f7542
                                                                                                          x9038))))
                                                                                               (BSET/C
                                                                                                j7540
                                                                                                k7541
                                                                                                x9037))))
                                                                                     g9036))))
                                                                         g9035))
                                                                     xj7537
                                                                     xk7538
                                                                     eliminate-full-rows)))
                                                            g9034)))
                                                       (x9030 (input)))
                                                (x9031 x9030)))
                                             (g8696
                                              (letrec ((x9050
                                                        (letrec ((xj7543
                                                                  (letrec ((x9051
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9051)))
                                                                 (xk7544
                                                                  (letrec ((x9052
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9052))))
                                                          (letrec ((g9053
                                                                    ((lambda (j7548
                                                                              k7549
                                                                              f7550)
                                                                       (letrec ((g9054
                                                                                 (lambda (g7545
                                                                                          g7546
                                                                                          g7547)
                                                                                   (letrec ((g9055
                                                                                             (letrec ((x9056
                                                                                                       (letrec ((x9059
                                                                                                                 (integer?/c
                                                                                                                  j7548
                                                                                                                  k7549
                                                                                                                  g7545))
                                                                                                                (x9058
                                                                                                                 (integer?/c
                                                                                                                  j7548
                                                                                                                  k7549
                                                                                                                  g7546))
                                                                                                                (x9057
                                                                                                                 (TETRA/C
                                                                                                                  j7548
                                                                                                                  k7549
                                                                                                                  g7547)))
                                                                                                         (f7550
                                                                                                          x9059
                                                                                                          x9058
                                                                                                          x9057))))
                                                                                               (TETRA/C
                                                                                                j7548
                                                                                                k7549
                                                                                                x9056))))
                                                                                     g9055))))
                                                                         g9054))
                                                                     xj7543
                                                                     xk7544
                                                                     tetra-move)))
                                                            g9053)))
                                                       (x9049 (input))
                                                       (x9048 (input))
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
                                                (x9050 x9049 x9048 x9039)))
                                             (g8697
                                              (letrec ((x9069
                                                        (letrec ((xj7551
                                                                  (letrec ((x9070
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9070)))
                                                                 (xk7552
                                                                  (letrec ((x9071
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9071))))
                                                          (letrec ((g9072
                                                                    ((lambda (j7554
                                                                              k7555
                                                                              f7556)
                                                                       (letrec ((g9073
                                                                                 (lambda (g7553)
                                                                                   (letrec ((g9074
                                                                                             (letrec ((x9075
                                                                                                       (letrec ((x9076
                                                                                                                 (TETRA/C
                                                                                                                  j7554
                                                                                                                  k7555
                                                                                                                  g7553)))
                                                                                                         (f7556
                                                                                                          x9076))))
                                                                                               (TETRA/C
                                                                                                j7554
                                                                                                k7555
                                                                                                x9075))))
                                                                                     g9074))))
                                                                         g9073))
                                                                     xj7551
                                                                     xk7552
                                                                     tetra-rotate-ccw)))
                                                            g9072)))
                                                       (x9060
                                                        (letrec ((x9061
                                                                  (letrec ((x9064
                                                                            (letrec ((x9065
                                                                                      (letrec ((x9068
                                                                                                (input))
                                                                                               (x9066
                                                                                                (letrec ((x9067
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9067
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9068
                                                                                         x9066))))
                                                                              (cons
                                                                               'posn
                                                                               x9065)))
                                                                           (x9062
                                                                            (letrec ((x9063
                                                                                      (input)))
                                                                              (cons
                                                                               x9063
                                                                               '()))))
                                                                    (cons
                                                                     x9064
                                                                     x9062))))
                                                          (cons
                                                           'tetra
                                                           x9061))))
                                                (x9069 x9060)))
                                             (g8698
                                              (letrec ((x9086
                                                        (letrec ((xj7557
                                                                  (letrec ((x9087
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9087)))
                                                                 (xk7558
                                                                  (letrec ((x9088
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9088))))
                                                          (letrec ((g9089
                                                                    ((lambda (j7560
                                                                              k7561
                                                                              f7562)
                                                                       (letrec ((g9090
                                                                                 (lambda (g7559)
                                                                                   (letrec ((g9091
                                                                                             (letrec ((x9092
                                                                                                       (letrec ((x9093
                                                                                                                 (TETRA/C
                                                                                                                  j7560
                                                                                                                  k7561
                                                                                                                  g7559)))
                                                                                                         (f7562
                                                                                                          x9093))))
                                                                                               (TETRA/C
                                                                                                j7560
                                                                                                k7561
                                                                                                x9092))))
                                                                                     g9091))))
                                                                         g9090))
                                                                     xj7557
                                                                     xk7558
                                                                     tetra-rotate-cw)))
                                                            g9089)))
                                                       (x9077
                                                        (letrec ((x9078
                                                                  (letrec ((x9081
                                                                            (letrec ((x9082
                                                                                      (letrec ((x9085
                                                                                                (input))
                                                                                               (x9083
                                                                                                (letrec ((x9084
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9084
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9085
                                                                                         x9083))))
                                                                              (cons
                                                                               'posn
                                                                               x9082)))
                                                                           (x9079
                                                                            (letrec ((x9080
                                                                                      (input)))
                                                                              (cons
                                                                               x9080
                                                                               '()))))
                                                                    (cons
                                                                     x9081
                                                                     x9079))))
                                                          (cons
                                                           'tetra
                                                           x9078))))
                                                (x9086 x9077)))
                                             (g8699
                                              (letrec ((x9104
                                                        (letrec ((xj7563
                                                                  (letrec ((x9105
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9105)))
                                                                 (xk7564
                                                                  (letrec ((x9106
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9106))))
                                                          (letrec ((g9107
                                                                    ((lambda (j7567
                                                                              k7568
                                                                              f7569)
                                                                       (letrec ((g9108
                                                                                 (lambda (g7565
                                                                                          g7566)
                                                                                   (letrec ((g9109
                                                                                             (letrec ((x9110
                                                                                                       (letrec ((x9112
                                                                                                                 (TETRA/C
                                                                                                                  j7567
                                                                                                                  k7568
                                                                                                                  g7565))
                                                                                                                (x9111
                                                                                                                 (BSET/C
                                                                                                                  j7567
                                                                                                                  k7568
                                                                                                                  g7566)))
                                                                                                         (f7569
                                                                                                          x9112
                                                                                                          x9111))))
                                                                                               (boolean?/c
                                                                                                j7567
                                                                                                k7568
                                                                                                x9110))))
                                                                                     g9109))))
                                                                         g9108))
                                                                     xj7563
                                                                     xk7564
                                                                     tetra-overlaps-blocks?)))
                                                            g9107)))
                                                       (x9095
                                                        (letrec ((x9096
                                                                  (letrec ((x9099
                                                                            (letrec ((x9100
                                                                                      (letrec ((x9103
                                                                                                (input))
                                                                                               (x9101
                                                                                                (letrec ((x9102
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9102
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9103
                                                                                         x9101))))
                                                                              (cons
                                                                               'posn
                                                                               x9100)))
                                                                           (x9097
                                                                            (letrec ((x9098
                                                                                      (input)))
                                                                              (cons
                                                                               x9098
                                                                               '()))))
                                                                    (cons
                                                                     x9099
                                                                     x9097))))
                                                          (cons 'tetra x9096)))
                                                       (x9094 (input)))
                                                (x9104 x9095 x9094)))
                                             (g8700
                                              (letrec ((x9124
                                                        (letrec ((xj7570
                                                                  (letrec ((x9125
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9125)))
                                                                 (xk7571
                                                                  (letrec ((x9126
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9126))))
                                                          (letrec ((g9127
                                                                    ((lambda (j7583
                                                                              k7584
                                                                              f7585)
                                                                       (letrec ((g9128
                                                                                 (lambda (g7572
                                                                                          g7573
                                                                                          g7574
                                                                                          g7575
                                                                                          g7576
                                                                                          g7577
                                                                                          g7578
                                                                                          g7579
                                                                                          g7580
                                                                                          g7581
                                                                                          g7582)
                                                                                   (letrec ((g9129
                                                                                             (letrec ((x9130
                                                                                                       (letrec ((x9141
                                                                                                                 (COLOR/C
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7572))
                                                                                                                (x9140
                                                                                                                 (real?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7573))
                                                                                                                (x9139
                                                                                                                 (real?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7574))
                                                                                                                (x9138
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7575))
                                                                                                                (x9137
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7576))
                                                                                                                (x9136
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7577))
                                                                                                                (x9135
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7578))
                                                                                                                (x9134
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7579))
                                                                                                                (x9133
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7580))
                                                                                                                (x9132
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7581))
                                                                                                                (x9131
                                                                                                                 (integer?/c
                                                                                                                  j7583
                                                                                                                  k7584
                                                                                                                  g7582)))
                                                                                                         (f7585
                                                                                                          x9141
                                                                                                          x9140
                                                                                                          x9139
                                                                                                          x9138
                                                                                                          x9137
                                                                                                          x9136
                                                                                                          x9135
                                                                                                          x9134
                                                                                                          x9133
                                                                                                          x9132
                                                                                                          x9131))))
                                                                                               (TETRA/C
                                                                                                j7583
                                                                                                k7584
                                                                                                x9130))))
                                                                                     g9129))))
                                                                         g9128))
                                                                     xj7570
                                                                     xk7571
                                                                     build-tetra-blocks)))
                                                            g9127)))
                                                       (x9123 (input))
                                                       (x9122 (input))
                                                       (x9121 (input))
                                                       (x9120 (input))
                                                       (x9119 (input))
                                                       (x9118 (input))
                                                       (x9117 (input))
                                                       (x9116 (input))
                                                       (x9115 (input))
                                                       (x9114 (input))
                                                       (x9113 (input)))
                                                (x9124
                                                 x9123
                                                 x9122
                                                 x9121
                                                 x9120
                                                 x9119
                                                 x9118
                                                 x9117
                                                 x9116
                                                 x9115
                                                 x9114
                                                 x9113)))
                                             (g8701
                                              (letrec ((x9152
                                                        (letrec ((xj7586
                                                                  (letrec ((x9153
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9153)))
                                                                 (xk7587
                                                                  (letrec ((x9154
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9154))))
                                                          (letrec ((g9155
                                                                    ((lambda (j7590
                                                                              k7591
                                                                              f7592)
                                                                       (letrec ((g9156
                                                                                 (lambda (g7588
                                                                                          g7589)
                                                                                   (letrec ((g9157
                                                                                             (letrec ((x9158
                                                                                                       (letrec ((x9160
                                                                                                                 (TETRA/C
                                                                                                                  j7590
                                                                                                                  k7591
                                                                                                                  g7588))
                                                                                                                (x9159
                                                                                                                 (COLOR/C
                                                                                                                  j7590
                                                                                                                  k7591
                                                                                                                  g7589)))
                                                                                                         (f7592
                                                                                                          x9160
                                                                                                          x9159))))
                                                                                               (TETRA/C
                                                                                                j7590
                                                                                                k7591
                                                                                                x9158))))
                                                                                     g9157))))
                                                                         g9156))
                                                                     xj7586
                                                                     xk7587
                                                                     tetra-change-color)))
                                                            g9155)))
                                                       (x9143
                                                        (letrec ((x9144
                                                                  (letrec ((x9147
                                                                            (letrec ((x9148
                                                                                      (letrec ((x9151
                                                                                                (input))
                                                                                               (x9149
                                                                                                (letrec ((x9150
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9150
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9151
                                                                                         x9149))))
                                                                              (cons
                                                                               'posn
                                                                               x9148)))
                                                                           (x9145
                                                                            (letrec ((x9146
                                                                                      (input)))
                                                                              (cons
                                                                               x9146
                                                                               '()))))
                                                                    (cons
                                                                     x9147
                                                                     x9145))))
                                                          (cons 'tetra x9144)))
                                                       (x9142 (input)))
                                                (x9152 x9143 x9142)))
                                             (g8702
                                              (letrec ((x9175
                                                        (letrec ((xj7593
                                                                  (letrec ((x9176
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9176)))
                                                                 (xk7594
                                                                  (letrec ((x9177
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9177))))
                                                          (letrec ((g9178
                                                                    ((lambda (j7597
                                                                              k7598
                                                                              f7599)
                                                                       (letrec ((g9179
                                                                                 (lambda (g7595
                                                                                          g7596)
                                                                                   (letrec ((g9180
                                                                                             (letrec ((x9181
                                                                                                       (letrec ((x9183
                                                                                                                 (WORLD/C
                                                                                                                  j7597
                                                                                                                  k7598
                                                                                                                  g7595))
                                                                                                                (x9182
                                                                                                                 (string?/c
                                                                                                                  j7597
                                                                                                                  k7598
                                                                                                                  g7596)))
                                                                                                         (f7599
                                                                                                          x9183
                                                                                                          x9182))))
                                                                                               (WORLD/C
                                                                                                j7597
                                                                                                k7598
                                                                                                x9181))))
                                                                                     g9180))))
                                                                         g9179))
                                                                     xj7593
                                                                     xk7594
                                                                     world-key-move)))
                                                            g9178)))
                                                       (x9162
                                                        (letrec ((x9163
                                                                  (letrec ((x9166
                                                                            (letrec ((x9167
                                                                                      (letrec ((x9170
                                                                                                (letrec ((x9171
                                                                                                          (letrec ((x9174
                                                                                                                    (input))
                                                                                                                   (x9172
                                                                                                                    (letrec ((x9173
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x9173
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x9174
                                                                                                             x9172))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x9171)))
                                                                                               (x9168
                                                                                                (letrec ((x9169
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9169
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9170
                                                                                         x9168))))
                                                                              (cons
                                                                               'tetra
                                                                               x9167)))
                                                                           (x9164
                                                                            (letrec ((x9165
                                                                                      (input)))
                                                                              (cons
                                                                               x9165
                                                                               '()))))
                                                                    (cons
                                                                     x9166
                                                                     x9164))))
                                                          (cons 'world x9163)))
                                                       (x9161 (input)))
                                                (x9175 x9162 x9161)))
                                             (g8703
                                              (letrec ((x9198
                                                        (letrec ((xj7600
                                                                  (letrec ((x9199
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9199)))
                                                                 (xk7601
                                                                  (letrec ((x9200
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9200))))
                                                          (letrec ((g9201
                                                                    ((lambda (j7604
                                                                              k7605
                                                                              f7606)
                                                                       (letrec ((g9202
                                                                                 (lambda (g7602
                                                                                          g7603)
                                                                                   (letrec ((g9203
                                                                                             (letrec ((x9204
                                                                                                       (letrec ((x9208
                                                                                                                 (WORLD/C
                                                                                                                  j7604
                                                                                                                  k7605
                                                                                                                  g7602))
                                                                                                                (x9205
                                                                                                                 (letrec ((x9206
                                                                                                                           (letrec ((x9207
                                                                                                                                     (listof
                                                                                                                                      TETRA/C)))
                                                                                                                             (and/c
                                                                                                                              cons?/c
                                                                                                                              x9207))))
                                                                                                                   (x9206
                                                                                                                    j7604
                                                                                                                    k7605
                                                                                                                    g7603))))
                                                                                                         (f7606
                                                                                                          x9208
                                                                                                          x9205))))
                                                                                               (WORLD/C
                                                                                                j7604
                                                                                                k7605
                                                                                                x9204))))
                                                                                     g9203))))
                                                                         g9202))
                                                                     xj7600
                                                                     xk7601
                                                                     next-world)))
                                                            g9201)))
                                                       (x9185
                                                        (letrec ((x9186
                                                                  (letrec ((x9189
                                                                            (letrec ((x9190
                                                                                      (letrec ((x9193
                                                                                                (letrec ((x9194
                                                                                                          (letrec ((x9197
                                                                                                                    (input))
                                                                                                                   (x9195
                                                                                                                    (letrec ((x9196
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x9196
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x9197
                                                                                                             x9195))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x9194)))
                                                                                               (x9191
                                                                                                (letrec ((x9192
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9192
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9193
                                                                                         x9191))))
                                                                              (cons
                                                                               'tetra
                                                                               x9190)))
                                                                           (x9187
                                                                            (letrec ((x9188
                                                                                      (input)))
                                                                              (cons
                                                                               x9188
                                                                               '()))))
                                                                    (cons
                                                                     x9189
                                                                     x9187))))
                                                          (cons 'world x9186)))
                                                       (x9184 (input)))
                                                (x9198 x9185 x9184)))
                                             (g8704
                                              (letrec ((x9222
                                                        (letrec ((xj7607
                                                                  (letrec ((x9223
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9223)))
                                                                 (xk7608
                                                                  (letrec ((x9224
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9224))))
                                                          (letrec ((g9225
                                                                    ((lambda (j7610
                                                                              k7611
                                                                              f7612)
                                                                       (letrec ((g9226
                                                                                 (lambda (g7609)
                                                                                   (letrec ((g9227
                                                                                             (letrec ((x9228
                                                                                                       (letrec ((x9229
                                                                                                                 (WORLD/C
                                                                                                                  j7610
                                                                                                                  k7611
                                                                                                                  g7609)))
                                                                                                         (f7612
                                                                                                          x9229))))
                                                                                               (BSET/C
                                                                                                j7610
                                                                                                k7611
                                                                                                x9228))))
                                                                                     g9227))))
                                                                         g9226))
                                                                     xj7607
                                                                     xk7608
                                                                     ghost-blocks)))
                                                            g9225)))
                                                       (x9209
                                                        (letrec ((x9210
                                                                  (letrec ((x9213
                                                                            (letrec ((x9214
                                                                                      (letrec ((x9217
                                                                                                (letrec ((x9218
                                                                                                          (letrec ((x9221
                                                                                                                    (input))
                                                                                                                   (x9219
                                                                                                                    (letrec ((x9220
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x9220
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x9221
                                                                                                             x9219))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x9218)))
                                                                                               (x9215
                                                                                                (letrec ((x9216
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9216
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9217
                                                                                         x9215))))
                                                                              (cons
                                                                               'tetra
                                                                               x9214)))
                                                                           (x9211
                                                                            (letrec ((x9212
                                                                                      (input)))
                                                                              (cons
                                                                               x9212
                                                                               '()))))
                                                                    (cons
                                                                     x9213
                                                                     x9211))))
                                                          (cons
                                                           'world
                                                           x9210))))
                                                (x9222 x9209)))
                                             (g8705
                                              (letrec ((x9231
                                                        (letrec ((xj7613
                                                                  (letrec ((x9232
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9232)))
                                                                 (xk7614
                                                                  (letrec ((x9233
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9233))))
                                                          (letrec ((g9234
                                                                    ((lambda (j7616
                                                                              k7617
                                                                              f7618)
                                                                       (letrec ((g9235
                                                                                 (lambda (g7615)
                                                                                   (letrec ((g9236
                                                                                             (letrec ((x9237
                                                                                                       (letrec ((x9238
                                                                                                                 (any/c
                                                                                                                  j7616
                                                                                                                  k7617
                                                                                                                  g7615)))
                                                                                                         (f7618
                                                                                                          x9238))))
                                                                                               (boolean?/c
                                                                                                j7616
                                                                                                k7617
                                                                                                x9237))))
                                                                                     g9236))))
                                                                         g9235))
                                                                     xj7613
                                                                     xk7614
                                                                     image?)))
                                                            g9234)))
                                                       (x9230 (input)))
                                                (x9231 x9230)))
                                             (g8706
                                              (letrec ((x9241
                                                        (letrec ((xj7619
                                                                  (letrec ((x9242
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9242)))
                                                                 (xk7620
                                                                  (letrec ((x9243
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9243))))
                                                          (letrec ((g9244
                                                                    ((lambda (j7623
                                                                              k7624
                                                                              f7625)
                                                                       (letrec ((g9245
                                                                                 (lambda (g7621
                                                                                          g7622)
                                                                                   (letrec ((g9246
                                                                                             (letrec ((x9247
                                                                                                       (letrec ((x9249
                                                                                                                 (image?
                                                                                                                  j7623
                                                                                                                  k7624
                                                                                                                  g7621))
                                                                                                                (x9248
                                                                                                                 (image?
                                                                                                                  j7623
                                                                                                                  k7624
                                                                                                                  g7622)))
                                                                                                         (f7625
                                                                                                          x9249
                                                                                                          x9248))))
                                                                                               (image?
                                                                                                j7623
                                                                                                k7624
                                                                                                x9247))))
                                                                                     g9246))))
                                                                         g9245))
                                                                     xj7619
                                                                     xk7620
                                                                     overlay)))
                                                            g9244)))
                                                       (x9240 (input))
                                                       (x9239 (input)))
                                                (x9241 x9240 x9239)))
                                             (g8707
                                              (letrec ((x9253
                                                        (letrec ((xj7626
                                                                  (letrec ((x9254
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9254)))
                                                                 (xk7627
                                                                  (letrec ((x9255
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9255))))
                                                          (letrec ((g9256
                                                                    ((lambda (j7631
                                                                              k7632
                                                                              f7633)
                                                                       (letrec ((g9257
                                                                                 (lambda (g7628
                                                                                          g7629
                                                                                          g7630)
                                                                                   (letrec ((g9258
                                                                                             (letrec ((x9259
                                                                                                       (letrec ((x9262
                                                                                                                 (real?/c
                                                                                                                  j7631
                                                                                                                  k7632
                                                                                                                  g7628))
                                                                                                                (x9261
                                                                                                                 (real?/c
                                                                                                                  j7631
                                                                                                                  k7632
                                                                                                                  g7629))
                                                                                                                (x9260
                                                                                                                 (string?/c
                                                                                                                  j7631
                                                                                                                  k7632
                                                                                                                  g7630)))
                                                                                                         (f7633
                                                                                                          x9262
                                                                                                          x9261
                                                                                                          x9260))))
                                                                                               (image?
                                                                                                j7631
                                                                                                k7632
                                                                                                x9259))))
                                                                                     g9258))))
                                                                         g9257))
                                                                     xj7626
                                                                     xk7627
                                                                     circle)))
                                                            g9256)))
                                                       (x9252 (input))
                                                       (x9251 (input))
                                                       (x9250 (input)))
                                                (x9253 x9252 x9251 x9250)))
                                             (g8708
                                              (letrec ((x9267
                                                        (letrec ((xj7634
                                                                  (letrec ((x9268
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9268)))
                                                                 (xk7635
                                                                  (letrec ((x9269
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9269))))
                                                          (letrec ((g9270
                                                                    ((lambda (j7640
                                                                              k7641
                                                                              f7642)
                                                                       (letrec ((g9271
                                                                                 (lambda (g7636
                                                                                          g7637
                                                                                          g7638
                                                                                          g7639)
                                                                                   (letrec ((g9272
                                                                                             (letrec ((x9273
                                                                                                       (letrec ((x9277
                                                                                                                 (real?/c
                                                                                                                  j7640
                                                                                                                  k7641
                                                                                                                  g7636))
                                                                                                                (x9276
                                                                                                                 (real?/c
                                                                                                                  j7640
                                                                                                                  k7641
                                                                                                                  g7637))
                                                                                                                (x9275
                                                                                                                 (COLOR/C
                                                                                                                  j7640
                                                                                                                  k7641
                                                                                                                  g7638))
                                                                                                                (x9274
                                                                                                                 (COLOR/C
                                                                                                                  j7640
                                                                                                                  k7641
                                                                                                                  g7639)))
                                                                                                         (f7642
                                                                                                          x9277
                                                                                                          x9276
                                                                                                          x9275
                                                                                                          x9274))))
                                                                                               (image?
                                                                                                j7640
                                                                                                k7641
                                                                                                x9273))))
                                                                                     g9272))))
                                                                         g9271))
                                                                     xj7634
                                                                     xk7635
                                                                     rectangle)))
                                                            g9270)))
                                                       (x9266 (input))
                                                       (x9265 (input))
                                                       (x9264 (input))
                                                       (x9263 (input)))
                                                (x9267
                                                 x9266
                                                 x9265
                                                 x9264
                                                 x9263)))
                                             (g8709
                                              (letrec ((x9282
                                                        (letrec ((xj7643
                                                                  (letrec ((x9283
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9283)))
                                                                 (xk7644
                                                                  (letrec ((x9284
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9284))))
                                                          (letrec ((g9285
                                                                    ((lambda (j7649
                                                                              k7650
                                                                              f7651)
                                                                       (letrec ((g9286
                                                                                 (lambda (g7645
                                                                                          g7646
                                                                                          g7647
                                                                                          g7648)
                                                                                   (letrec ((g9287
                                                                                             (letrec ((x9288
                                                                                                       (letrec ((x9292
                                                                                                                 (image/c
                                                                                                                  j7649
                                                                                                                  k7650
                                                                                                                  g7645))
                                                                                                                (x9291
                                                                                                                 (real?/c
                                                                                                                  j7649
                                                                                                                  k7650
                                                                                                                  g7646))
                                                                                                                (x9290
                                                                                                                 (real?/c
                                                                                                                  j7649
                                                                                                                  k7650
                                                                                                                  g7647))
                                                                                                                (x9289
                                                                                                                 (image/c
                                                                                                                  j7649
                                                                                                                  k7650
                                                                                                                  g7648)))
                                                                                                         (f7651
                                                                                                          x9292
                                                                                                          x9291
                                                                                                          x9290
                                                                                                          x9289))))
                                                                                               (image/c
                                                                                                j7649
                                                                                                k7650
                                                                                                x9288))))
                                                                                     g9287))))
                                                                         g9286))
                                                                     xj7643
                                                                     xk7644
                                                                     place-image)))
                                                            g9285)))
                                                       (x9281 (input))
                                                       (x9280 (input))
                                                       (x9279 (input))
                                                       (x9278 (input)))
                                                (x9282
                                                 x9281
                                                 x9280
                                                 x9279
                                                 x9278)))
                                             (g8710
                                              (letrec ((x9295
                                                        (letrec ((xj7652
                                                                  (letrec ((x9296
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9296)))
                                                                 (xk7653
                                                                  (letrec ((x9297
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9297))))
                                                          (letrec ((g9298
                                                                    ((lambda (j7656
                                                                              k7657
                                                                              f7658)
                                                                       (letrec ((g9299
                                                                                 (lambda (g7654
                                                                                          g7655)
                                                                                   (letrec ((g9300
                                                                                             (letrec ((x9301
                                                                                                       (letrec ((x9303
                                                                                                                 (real?/c
                                                                                                                  j7656
                                                                                                                  k7657
                                                                                                                  g7654))
                                                                                                                (x9302
                                                                                                                 (real?/c
                                                                                                                  j7656
                                                                                                                  k7657
                                                                                                                  g7655)))
                                                                                                         (f7658
                                                                                                          x9303
                                                                                                          x9302))))
                                                                                               (image?
                                                                                                j7656
                                                                                                k7657
                                                                                                x9301))))
                                                                                     g9300))))
                                                                         g9299))
                                                                     xj7652
                                                                     xk7653
                                                                     empty-scene)))
                                                            g9298)))
                                                       (x9294 (input))
                                                       (x9293 (input)))
                                                (x9295 x9294 x9293)))
                                             (g8711
                                              (letrec ((x9305
                                                        (letrec ((xj7659
                                                                  (letrec ((x9306
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9306)))
                                                                 (xk7660
                                                                  (letrec ((x9307
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9307))))
                                                          (letrec ((g9308
                                                                    ((lambda (j7662
                                                                              k7663
                                                                              f7664)
                                                                       (letrec ((g9309
                                                                                 (lambda (g7661)
                                                                                   (letrec ((g9310
                                                                                             (letrec ((x9311
                                                                                                       (letrec ((x9312
                                                                                                                 (letrec ((x9313
                                                                                                                           (letrec ((x9314
                                                                                                                                     (listof
                                                                                                                                      TETRA/C)))
                                                                                                                             (and/c
                                                                                                                              cons?/c
                                                                                                                              x9314))))
                                                                                                                   (x9313
                                                                                                                    j7662
                                                                                                                    k7663
                                                                                                                    g7661))))
                                                                                                         (f7664
                                                                                                          x9312))))
                                                                                               (TETRA/C
                                                                                                j7662
                                                                                                k7663
                                                                                                x9311))))
                                                                                     g9310))))
                                                                         g9309))
                                                                     xj7659
                                                                     xk7660
                                                                     list-pick-random)))
                                                            g9308)))
                                                       (x9304 (input)))
                                                (x9305 x9304)))
                                             (g8712
                                              (letrec ((xj7665
                                                        (letrec ((x9315 (loc)))
                                                          (cons
                                                           'module
                                                           x9315)))
                                                       (xk7666
                                                        (letrec ((x9316 (loc)))
                                                          (cons
                                                           'importer
                                                           x9316))))
                                                (letrec ((g9317
                                                          (integer?/c
                                                           xj7665
                                                           xk7666
                                                           neg-1)))
                                                  g9317)))
                                             (g8713
                                              (letrec ((x9331
                                                        (letrec ((xj7667
                                                                  (letrec ((x9332
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9332)))
                                                                 (xk7668
                                                                  (letrec ((x9333
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9333))))
                                                          (letrec ((g9334
                                                                    ((lambda (j7670
                                                                              k7671
                                                                              f7672)
                                                                       (letrec ((g9335
                                                                                 (lambda (g7669)
                                                                                   (letrec ((g9336
                                                                                             (letrec ((x9337
                                                                                                       (letrec ((x9338
                                                                                                                 (WORLD/C
                                                                                                                  j7670
                                                                                                                  k7671
                                                                                                                  g7669)))
                                                                                                         (f7672
                                                                                                          x9338))))
                                                                                               (image/c
                                                                                                j7670
                                                                                                k7671
                                                                                                x9337))))
                                                                                     g9336))))
                                                                         g9335))
                                                                     xj7667
                                                                     xk7668
                                                                     world->image)))
                                                            g9334)))
                                                       (x9318
                                                        (letrec ((x9319
                                                                  (letrec ((x9322
                                                                            (letrec ((x9323
                                                                                      (letrec ((x9326
                                                                                                (letrec ((x9327
                                                                                                          (letrec ((x9330
                                                                                                                    (input))
                                                                                                                   (x9328
                                                                                                                    (letrec ((x9329
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x9329
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x9330
                                                                                                             x9328))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x9327)))
                                                                                               (x9324
                                                                                                (letrec ((x9325
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9325
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9326
                                                                                         x9324))))
                                                                              (cons
                                                                               'tetra
                                                                               x9323)))
                                                                           (x9320
                                                                            (letrec ((x9321
                                                                                      (input)))
                                                                              (cons
                                                                               x9321
                                                                               '()))))
                                                                    (cons
                                                                     x9322
                                                                     x9320))))
                                                          (cons
                                                           'world
                                                           x9319))))
                                                (x9331 x9318)))
                                             (g8714
                                              (letrec ((x9340
                                                        (letrec ((xj7673
                                                                  (letrec ((x9341
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9341)))
                                                                 (xk7674
                                                                  (letrec ((x9342
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9342))))
                                                          (letrec ((g9343
                                                                    ((lambda (j7676
                                                                              k7677
                                                                              f7678)
                                                                       (letrec ((g9344
                                                                                 (lambda (g7675)
                                                                                   (letrec ((g9345
                                                                                             (letrec ((x9346
                                                                                                       (letrec ((x9347
                                                                                                                 (BSET/C
                                                                                                                  j7676
                                                                                                                  k7677
                                                                                                                  g7675)))
                                                                                                         (f7678
                                                                                                          x9347))))
                                                                                               (image/c
                                                                                                j7676
                                                                                                k7677
                                                                                                x9346))))
                                                                                     g9345))))
                                                                         g9344))
                                                                     xj7673
                                                                     xk7674
                                                                     blocks->image)))
                                                            g9343)))
                                                       (x9339 (input)))
                                                (x9340 x9339)))
                                             (g8715
                                              (letrec ((x9355
                                                        (letrec ((xj7679
                                                                  (letrec ((x9356
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9356)))
                                                                 (xk7680
                                                                  (letrec ((x9357
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9357))))
                                                          (letrec ((g9358
                                                                    ((lambda (j7682
                                                                              k7683
                                                                              f7684)
                                                                       (letrec ((g9359
                                                                                 (lambda (g7681)
                                                                                   (letrec ((g9360
                                                                                             (letrec ((x9361
                                                                                                       (letrec ((x9362
                                                                                                                 (BLOCK/C
                                                                                                                  j7682
                                                                                                                  k7683
                                                                                                                  g7681)))
                                                                                                         (f7684
                                                                                                          x9362))))
                                                                                               (image/c
                                                                                                j7682
                                                                                                k7683
                                                                                                x9361))))
                                                                                     g9360))))
                                                                         g9359))
                                                                     xj7679
                                                                     xk7680
                                                                     block->image)))
                                                            g9358)))
                                                       (x9348
                                                        (letrec ((x9349
                                                                  (letrec ((x9354
                                                                            (input))
                                                                           (x9350
                                                                            (letrec ((x9353
                                                                                      (input))
                                                                                     (x9351
                                                                                      (letrec ((x9352
                                                                                                (input)))
                                                                                        (cons
                                                                                         x9352
                                                                                         '()))))
                                                                              (cons
                                                                               x9353
                                                                               x9351))))
                                                                    (cons
                                                                     x9354
                                                                     x9350))))
                                                          (cons
                                                           'block
                                                           x9349))))
                                                (x9355 x9348)))
                                             (g8716
                                              (letrec ((x9371
                                                        (letrec ((xj7685
                                                                  (letrec ((x9372
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9372)))
                                                                 (xk7686
                                                                  (letrec ((x9373
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9373))))
                                                          (letrec ((g9374
                                                                    ((lambda (j7689
                                                                              k7690
                                                                              f7691)
                                                                       (letrec ((g9375
                                                                                 (lambda (g7687
                                                                                          g7688)
                                                                                   (letrec ((g9376
                                                                                             (letrec ((x9377
                                                                                                       (letrec ((x9379
                                                                                                                 (BLOCK/C
                                                                                                                  j7689
                                                                                                                  k7690
                                                                                                                  g7687))
                                                                                                                (x9378
                                                                                                                 (image/c
                                                                                                                  j7689
                                                                                                                  k7690
                                                                                                                  g7688)))
                                                                                                         (f7691
                                                                                                          x9379
                                                                                                          x9378))))
                                                                                               (image/c
                                                                                                j7689
                                                                                                k7690
                                                                                                x9377))))
                                                                                     g9376))))
                                                                         g9375))
                                                                     xj7685
                                                                     xk7686
                                                                     place-block)))
                                                            g9374)))
                                                       (x9364
                                                        (letrec ((x9365
                                                                  (letrec ((x9370
                                                                            (input))
                                                                           (x9366
                                                                            (letrec ((x9369
                                                                                      (input))
                                                                                     (x9367
                                                                                      (letrec ((x9368
                                                                                                (input)))
                                                                                        (cons
                                                                                         x9368
                                                                                         '()))))
                                                                              (cons
                                                                               x9369
                                                                               x9367))))
                                                                    (cons
                                                                     x9370
                                                                     x9366))))
                                                          (cons 'block x9365)))
                                                       (x9363 (input)))
                                                (x9371 x9364 x9363)))
                                             (g8717
                                              (letrec ((x9381
                                                        (letrec ((xj7692
                                                                  (letrec ((x9382
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x9382)))
                                                                 (xk7693
                                                                  (letrec ((x9383
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x9383))))
                                                          (letrec ((g9384
                                                                    ((lambda (j7695
                                                                              k7696
                                                                              f7697)
                                                                       (letrec ((g9385
                                                                                 (lambda (g7694)
                                                                                   (letrec ((g9386
                                                                                             (letrec ((x9387
                                                                                                       (letrec ((x9388
                                                                                                                 (letrec ((x9389
                                                                                                                           (letrec ((x9390
                                                                                                                                     (listof
                                                                                                                                      TETRA/C)))
                                                                                                                             (and/c
                                                                                                                              cons?/c
                                                                                                                              x9390))))
                                                                                                                   (x9389
                                                                                                                    j7695
                                                                                                                    k7696
                                                                                                                    g7694))))
                                                                                                         (f7697
                                                                                                          x9388))))
                                                                                               (WORLD/C
                                                                                                j7695
                                                                                                k7696
                                                                                                x9387))))
                                                                                     g9386))))
                                                                         g9385))
                                                                     xj7692
                                                                     xk7693
                                                                     world0)))
                                                            g9384)))
                                                       (x9380 (input)))
                                                (x9381 x9380))))
                                      g8717))))
                          g7734))))
              g7732)))
    g7731))
