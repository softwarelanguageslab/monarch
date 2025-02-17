(letrec ((any? (lambda (v) (letrec ((g7597 #t)) g7597)))
         (meta (lambda (v) (letrec ((g7598 v)) g7598)))
         (member
          (lambda (v lst)
            (letrec ((g7599
                      (letrec ((g7600
                                (letrec ((x-e7601 lst))
                                  (match
                                   x-e7601
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7602 (eq? v v1)))
                                       (if x-cnd7602 #t (member v vs)))))))))
                        g7600)))
              g7599)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7603 (lambda (v) (letrec ((g7604 v)) g7604)))) g7603)))
         (nonzero?
          (lambda (v)
            (letrec ((g7605 (letrec ((x7606 (= v 0))) (not x7606)))) g7605))))
  (letrec ((g7607
            (letrec ((g7608
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7609 '())
                                 (g7610
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7611
                                                        (lambda (k j lst)
                                                          (letrec ((g7612
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7613
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7613))
                                                                     lst)))
                                                            g7612))))
                                                g7611)))
                                           (real?/c
                                            (lambda (g7259 g7260 g7261)
                                              (letrec ((g7614
                                                        (letrec ((x-cnd7615
                                                                  (real?
                                                                   g7261)))
                                                          (if x-cnd7615
                                                            g7261
                                                            (blame
                                                             g7259
                                                             'real?)))))
                                                g7614)))
                                           (boolean?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7616
                                                        (letrec ((x-cnd7617
                                                                  (boolean?
                                                                   g7264)))
                                                          (if x-cnd7617
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'boolean?)))))
                                                g7616)))
                                           (number?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7618
                                                        (letrec ((x-cnd7619
                                                                  (number?
                                                                   g7267)))
                                                          (if x-cnd7619
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'number?)))))
                                                g7618)))
                                           (any/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7620
                                                        (letrec ((x-cnd7621
                                                                  ((lambda (v)
                                                                     (letrec ((g7622
                                                                               #t))
                                                                       g7622))
                                                                   g7270)))
                                                          (if x-cnd7621
                                                            g7270
                                                            (blame
                                                             g7268
                                                             '(lambda (v)
                                                                #t))))))
                                                g7620)))
                                           (any?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7623
                                                        (letrec ((x-cnd7624
                                                                  ((lambda (v)
                                                                     (letrec ((g7625
                                                                               #t))
                                                                       g7625))
                                                                   g7273)))
                                                          (if x-cnd7624
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7623)))
                                           (cons?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7626
                                                        (letrec ((x-cnd7627
                                                                  (pair?
                                                                   g7276)))
                                                          (if x-cnd7627
                                                            g7276
                                                            (blame
                                                             g7274
                                                             'pair?)))))
                                                g7626)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7628
                                                        (letrec ((x-cnd7629
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7629
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7628)))
                                           (integer?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7630
                                                        (letrec ((x-cnd7631
                                                                  (integer?
                                                                   g7282)))
                                                          (if x-cnd7631
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'integer?)))))
                                                g7630)))
                                           (symbol?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7632
                                                        (letrec ((x-cnd7633
                                                                  (symbol?
                                                                   g7285)))
                                                          (if x-cnd7633
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'symbol?)))))
                                                g7632)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7634
                                                        (lambda (k j v)
                                                          (letrec ((g7635
                                                                    (letrec ((x-cnd7636
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7636
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7635))))
                                                g7634)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7637
                                                        (lambda (k j v)
                                                          (letrec ((g7638
                                                                    (letrec ((x-cnd7639
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7639
                                                                        '()
                                                                        (letrec ((x7643
                                                                                  (letrec ((x7644
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7644)))
                                                                                 (x7640
                                                                                  (letrec ((x7642
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7641
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7642
                                                                                     k
                                                                                     j
                                                                                     x7641))))
                                                                          (orig-cons
                                                                           x7643
                                                                           x7640))))))
                                                            g7638))))
                                                g7637)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7645 #t)) g7645)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7646
                                                        (letrec ((x7647
                                                                  (= v 0)))
                                                          (not x7647))))
                                                g7646)))
                                           (nonzero?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7648
                                                        (letrec ((x-cnd7649
                                                                  ((lambda (v)
                                                                     (letrec ((g7650
                                                                               (letrec ((x7651
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7651))))
                                                                       g7650))
                                                                   g7288)))
                                                          (if x-cnd7649
                                                            g7288
                                                            (blame
                                                             g7286
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7648)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7652 v)) g7652)))
                                           (+
                                            (letrec ((xj7289 'server)
                                                     (xk7290 'client))
                                              (letrec ((g7653
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g7655
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g7656
                                                                                 (letrec ((x7657
                                                                                           (letrec ((x7659
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x7658
                                                                                                     (number?/c
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x7659
                                                                                              x7658))))
                                                                                   (number?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x7657))))
                                                                         g7656))))
                                                             g7655))
                                                         xj7289
                                                         xk7290
                                                         (lambda (a b)
                                                           (letrec ((g7654
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7654)))))
                                                g7653)))
                                           (-
                                            (letrec ((xj7296 'server)
                                                     (xk7297 'client))
                                              (letrec ((g7660
                                                        ((lambda (j7300
                                                                  k7301
                                                                  f7302)
                                                           (letrec ((g7662
                                                                     (lambda (g7298
                                                                              g7299)
                                                                       (letrec ((g7663
                                                                                 (letrec ((x7664
                                                                                           (letrec ((x7666
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7298))
                                                                                                    (x7665
                                                                                                     (number?/c
                                                                                                      j7300
                                                                                                      k7301
                                                                                                      g7299)))
                                                                                             (f7302
                                                                                              x7666
                                                                                              x7665))))
                                                                                   (number?/c
                                                                                    j7300
                                                                                    k7301
                                                                                    x7664))))
                                                                         g7663))))
                                                             g7662))
                                                         xj7296
                                                         xk7297
                                                         (lambda (a b)
                                                           (letrec ((g7661
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7661)))))
                                                g7660)))
                                           (*
                                            (letrec ((xj7303 'server)
                                                     (xk7304 'client))
                                              (letrec ((g7667
                                                        ((lambda (j7307
                                                                  k7308
                                                                  f7309)
                                                           (letrec ((g7669
                                                                     (lambda (g7305
                                                                              g7306)
                                                                       (letrec ((g7670
                                                                                 (letrec ((x7671
                                                                                           (letrec ((x7673
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7305))
                                                                                                    (x7672
                                                                                                     (number?/c
                                                                                                      j7307
                                                                                                      k7308
                                                                                                      g7306)))
                                                                                             (f7309
                                                                                              x7673
                                                                                              x7672))))
                                                                                   (number?/c
                                                                                    j7307
                                                                                    k7308
                                                                                    x7671))))
                                                                         g7670))))
                                                             g7669))
                                                         xj7303
                                                         xk7304
                                                         (lambda (a b)
                                                           (letrec ((g7668
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7668)))))
                                                g7667)))
                                           (/
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7674
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7676
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7677
                                                                                 (letrec ((x7678
                                                                                           (letrec ((x7680
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7679
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7680
                                                                                              x7679))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7678))))
                                                                         g7677))))
                                                             g7676))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7675
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7675)))))
                                                g7674)))
                                           (car
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7681
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7683
                                                                     (lambda (g7319)
                                                                       (letrec ((g7684
                                                                                 (letrec ((x7685
                                                                                           (letrec ((x7686
                                                                                                     (pair?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7686))))
                                                                                   (any/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7685))))
                                                                         g7684))))
                                                             g7683))
                                                         xj7317
                                                         xk7318
                                                         (lambda (p)
                                                           (letrec ((g7682
                                                                     (orig-car
                                                                      p)))
                                                             g7682)))))
                                                g7681)))
                                           (cdr
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7687
                                                        ((lambda (j7326
                                                                  k7327
                                                                  f7328)
                                                           (letrec ((g7689
                                                                     (lambda (g7325)
                                                                       (letrec ((g7690
                                                                                 (letrec ((x7691
                                                                                           (letrec ((x7692
                                                                                                     (pair?/c
                                                                                                      j7326
                                                                                                      k7327
                                                                                                      g7325)))
                                                                                             (f7328
                                                                                              x7692))))
                                                                                   (any/c
                                                                                    j7326
                                                                                    k7327
                                                                                    x7691))))
                                                                         g7690))))
                                                             g7689))
                                                         xj7323
                                                         xk7324
                                                         (lambda (p)
                                                           (letrec ((g7688
                                                                     (orig-cdr
                                                                      p)))
                                                             g7688)))))
                                                g7687)))
                                           (cons
                                            (letrec ((xj7329 'server)
                                                     (xk7330 'client))
                                              (letrec ((g7693
                                                        ((lambda (j7333
                                                                  k7334
                                                                  f7335)
                                                           (letrec ((g7695
                                                                     (lambda (g7331
                                                                              g7332)
                                                                       (letrec ((g7696
                                                                                 (letrec ((x7697
                                                                                           (letrec ((x7699
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7331))
                                                                                                    (x7698
                                                                                                     (any/c
                                                                                                      j7333
                                                                                                      k7334
                                                                                                      g7332)))
                                                                                             (f7335
                                                                                              x7699
                                                                                              x7698))))
                                                                                   (pair?/c
                                                                                    j7333
                                                                                    k7334
                                                                                    x7697))))
                                                                         g7696))))
                                                             g7695))
                                                         xj7329
                                                         xk7330
                                                         (lambda (a b)
                                                           (letrec ((g7694
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7694)))))
                                                g7693)))
                                           (vector-ref
                                            (letrec ((xj7336 'server)
                                                     (xk7337 'client))
                                              (letrec ((g7700
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7702
                                                                     (lambda (g7338)
                                                                       (letrec ((g7703
                                                                                 (letrec ((x7704
                                                                                           (letrec ((x7705
                                                                                                     (vector?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7705))))
                                                                                   (integer?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7704))))
                                                                         g7703))))
                                                             g7702))
                                                         xj7336
                                                         xk7337
                                                         (lambda (v i)
                                                           (letrec ((g7701
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7701)))))
                                                g7700)))
                                           (vector-set!
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7706
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7708
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7709
                                                                                 (letrec ((x7710
                                                                                           (letrec ((x7712
                                                                                                     (vector?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7711
                                                                                                     (integer?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7712
                                                                                              x7711))))
                                                                                   (any/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7710))))
                                                                         g7709))))
                                                             g7708))
                                                         xj7342
                                                         xk7343
                                                         (lambda (vec i v)
                                                           (letrec ((g7707
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7707)))))
                                                g7706)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7713
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7713)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7714
                                                        (letrec ((x7715
                                                                  (letrec ((x7716
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7716))))
                                                          (cdr x7715))))
                                                g7714)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7717
                                                        (letrec ((x7720
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7720)))
                                                       (g7718
                                                        (letrec ((x7721
                                                                  (list? l)))
                                                          (assert x7721)))
                                                       (g7719
                                                        (letrec ((x-cnd7722
                                                                  (null? l)))
                                                          (if x-cnd7722
                                                            '()
                                                            (letrec ((x7725
                                                                      (letrec ((x7726
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7726)))
                                                                     (x7723
                                                                      (letrec ((x7724
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7724))))
                                                              (cons
                                                               x7725
                                                               x7723))))))
                                                g7719)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7727
                                                        (letrec ((x7728
                                                                  (car x)))
                                                          (cdr x7728))))
                                                g7727)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (letrec ((x7732
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7732))))
                                                                    (cdr
                                                                     x7731))))
                                                          (car x7730))))
                                                g7729)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7733
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (letrec ((x7736
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7736))))
                                                                    (car
                                                                     x7735))))
                                                          (cdr x7734))))
                                                g7733)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7737
                                                        (letrec ((x7740
                                                                  (string?
                                                                   filename)))
                                                          (assert x7740)))
                                                       (g7738
                                                        (letrec ((x7741
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7741)))
                                                       (g7739
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7742
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7743 res))
                                                            g7743))))
                                                g7739)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7746))))
                                                          (car x7745))))
                                                g7744)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7747
                                                        (letrec ((x7748
                                                                  (letrec ((x7749
                                                                            (letrec ((x7750
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7750))))
                                                                    (car
                                                                     x7749))))
                                                          (cdr x7748))))
                                                g7747)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7751
                                                        (letrec ((x7753
                                                                  (list? l)))
                                                          (assert x7753)))
                                                       (g7752
                                                        (letrec ((x-cnd7754
                                                                  (null? l)))
                                                          (if x-cnd7754
                                                            #f
                                                            (letrec ((x-cnd7755
                                                                      (letrec ((x7756
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7756
                                                                         k))))
                                                              (if x-cnd7755
                                                                (car l)
                                                                (letrec ((x7757
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7757))))))))
                                                g7752)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7759))))
                                                g7758)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7760
                                                        (letrec ((x7762
                                                                  (list? l)))
                                                          (assert x7762)))
                                                       (g7761
                                                        (letrec ((x-cnd7763
                                                                  (null? l)))
                                                          (if x-cnd7763
                                                            ""
                                                            (letrec ((x7766
                                                                      (letrec ((x7767
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7767)))
                                                                     (x7764
                                                                      (letrec ((x7765
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7765))))
                                                              (string-append
                                                               x7766
                                                               x7764))))))
                                                g7761)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7768
                                                        (letrec ((x7771
                                                                  (char? c1)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((x7772
                                                                  (char? c2)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7773
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7773))))
                                                g7770)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (letrec ((x7777
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7777))))
                                                                    (cdr
                                                                     x7776))))
                                                          (cdr x7775))))
                                                g7774)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7778
                                                        (letrec ((x7781
                                                                  (list? l)))
                                                          (assert x7781)))
                                                       (g7779
                                                        (letrec ((x7782
                                                                  (number?)))
                                                          (assert x7782)))
                                                       (g7780
                                                        (letrec ((x-cnd7783
                                                                  (zero? k)))
                                                          (if x-cnd7783
                                                            x
                                                            (letrec ((x7785
                                                                      (cdr x))
                                                                     (x7784
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7785
                                                               x7784))))))
                                                g7780)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7786 '())) g7786)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7787
                                                        (letrec ((x-cnd7788
                                                                  (letrec ((x7789
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7789))))
                                                          (if x-cnd7788
                                                            (letrec ((x7790
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7790))
                                                            #f))))
                                                g7787)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7791
                                                        (letrec ((x7793
                                                                  (number? x)))
                                                          (assert x7793)))
                                                       (g7792
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7794
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7795
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7795)))))
                                                            g7794))))
                                                g7792)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7796
                                                        (letrec ((val7244
                                                                  (letrec ((x7797
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7797
                                                                     9))))
                                                          (letrec ((g7798
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7799
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7799
                                                                                   10))))
                                                                        (letrec ((g7800
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7801
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7801
                                                                                       32)))))
                                                                          g7800)))))
                                                            g7798))))
                                                g7796)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7803
                                                                  (letrec ((x7804
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7804))))
                                                          (cdr x7803))))
                                                g7802)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7805
                                                        (letrec ((x7807
                                                                  (number? x)))
                                                          (assert x7807)))
                                                       (g7806 (> x 0)))
                                                g7806)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7808 #f)) g7808)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7809
                                                        (letrec ((x7810
                                                                  (cdr x)))
                                                          (cdr x7810))))
                                                g7809)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7811
                                                        (letrec ((x7813
                                                                  (number? x)))
                                                          (assert x7813)))
                                                       (g7812
                                                        (letrec ((x-cnd7814
                                                                  (< x 0)))
                                                          (if x-cnd7814
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7812)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7815
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7816
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7817
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7817
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7818
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7819
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7819
                                                                                                  (letrec ((x-cnd7820
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7820
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7821
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7822
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7822
                                                                                                                (letrec ((x-cnd7823
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7823
                                                                                                                    (letrec ((x-cnd7824
                                                                                                                              (letrec ((x7826
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7825
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7826
                                                                                                                                 x7825))))
                                                                                                                      (if x-cnd7824
                                                                                                                        (letrec ((x7828
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7827
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7828
                                                                                                                           x7827))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7829
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7830
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7830
                                                                                                                    (letrec ((x-cnd7831
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7831
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7832
                                                                                                                                    (letrec ((x-cnd7833
                                                                                                                                              (letrec ((x7834
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7834
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7833
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7835
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7836
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7837
                                                                                                                                                                                      (letrec ((x7839
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7838
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7839
                                                                                                                                                                                         x7838))))
                                                                                                                                                                              (if x-cnd7837
                                                                                                                                                                                (letrec ((x7840
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7840))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7836))))
                                                                                                                                                      g7835))))
                                                                                                                                          (letrec ((g7841
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7841))
                                                                                                                                        #f))))
                                                                                                                            g7832))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7829)))))
                                                                                        g7821)))))
                                                                          g7818)))))
                                                            g7816))))
                                                g7815)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7842
                                                        (letrec ((x7843
                                                                  (letrec ((x7844
                                                                            (letrec ((x7845
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7845))))
                                                                    (car
                                                                     x7844))))
                                                          (cdr x7843))))
                                                g7842)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7846
                                                        (letrec ((x7847
                                                                  (letrec ((x7848
                                                                            (letrec ((x7849
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7849))))
                                                                    (car
                                                                     x7848))))
                                                          (car x7847))))
                                                g7846)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7850 (eq? x y)))
                                                g7850)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7851
                                                        (letrec ((x7853
                                                                  (number? x)))
                                                          (assert x7853)))
                                                       (g7852
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7854
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7855
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7855)))))
                                                            g7854))))
                                                g7852)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7856
                                                        (letrec ((x7859
                                                                  (string?
                                                                   filename)))
                                                          (assert x7859)))
                                                       (g7857
                                                        (letrec ((x7860
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7860)))
                                                       (g7858
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7861
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7862 res))
                                                            g7862))))
                                                g7858)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7863 (cons x '())))
                                                g7863)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7864
                                                        (letrec ((x7867
                                                                  (char? c1)))
                                                          (assert x7867)))
                                                       (g7865
                                                        (letrec ((x7868
                                                                  (char? c2)))
                                                          (assert x7868)))
                                                       (g7866
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7869
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7869))))
                                                g7866)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7870
                                                        (letrec ((x7871
                                                                  (letrec ((x7872
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7872))))
                                                          (cdr x7871))))
                                                g7870)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7873
                                                        (letrec ((x7874
                                                                  (letrec ((x7875
                                                                            (letrec ((x7876
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7876))))
                                                                    (car
                                                                     x7875))))
                                                          (cdr x7874))))
                                                g7873)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7877
                                                        (letrec ((x7878
                                                                  (letrec ((x7879
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7879))))
                                                          (car x7878))))
                                                g7877)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7880
                                                        (letrec ((x7881
                                                                  (letrec ((x7882
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7882))))
                                                          (car x7881))))
                                                g7880)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7883
                                                        (letrec ((x7886
                                                                  (char? c1)))
                                                          (assert x7886)))
                                                       (g7884
                                                        (letrec ((x7887
                                                                  (char? c2)))
                                                          (assert x7887)))
                                                       (g7885
                                                        (letrec ((x7888
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7888))))
                                                g7885)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7889
                                                        (letrec ((x7890
                                                                  (letrec ((x7891
                                                                            (letrec ((x7892
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7892))))
                                                                    (car
                                                                     x7891))))
                                                          (car x7890))))
                                                g7889)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7893
                                                        (letrec ((x7895
                                                                  (number? x)))
                                                          (assert x7895)))
                                                       (g7894 (< x 0)))
                                                g7894)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7896 (memq e l)))
                                                g7896)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7897
                                                        (letrec ((x7898
                                                                  (letrec ((x7899
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7899))))
                                                          (car x7898))))
                                                g7897)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7900 '())) g7900)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7901
                                                        (letrec ((x7903
                                                                  (list? l)))
                                                          (assert x7903)))
                                                       (g7902
                                                        (letrec ((x-cnd7904
                                                                  (null? l)))
                                                          (if x-cnd7904
                                                            '()
                                                            (letrec ((x7907
                                                                      (letrec ((x7908
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7908)))
                                                                     (x7905
                                                                      (letrec ((x7906
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7906))))
                                                              (append
                                                               x7907
                                                               x7905))))))
                                                g7902)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (letrec ((x7912
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7912))))
                                                                    (car
                                                                     x7911))))
                                                          (car x7910))))
                                                g7909)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (letrec ((x7916
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7916))))
                                                                    (cdr
                                                                     x7915))))
                                                          (cdr x7914))))
                                                g7913)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7917
                                                        (letrec ((x7919
                                                                  (number? x)))
                                                          (assert x7919)))
                                                       (g7918
                                                        (letrec ((x7920
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7920))))
                                                g7918)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7922
                                                                  (letrec ((x7923
                                                                            (letrec ((x7924
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7924))))
                                                                    (car
                                                                     x7923))))
                                                          (car x7922))))
                                                g7921)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7925
                                                        (letrec ((x7928
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x7929
                                                                  (list?
                                                                   args)))
                                                          (assert x7929)))
                                                       (g7927
                                                        (letrec ((x-cnd7930
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7930
                                                            (letrec ((g7931
                                                                      (proc)))
                                                              g7931)
                                                            (letrec ((x-cnd7932
                                                                      (letrec ((x7933
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7933))))
                                                              (if x-cnd7932
                                                                (letrec ((g7934
                                                                          (letrec ((x7935
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7935))))
                                                                  g7934)
                                                                (letrec ((x-cnd7936
                                                                          (letrec ((x7937
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7937))))
                                                                  (if x-cnd7936
                                                                    (letrec ((g7938
                                                                              (letrec ((x7940
                                                                                        (car
                                                                                         args))
                                                                                       (x7939
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7940
                                                                                 x7939))))
                                                                      g7938)
                                                                    (letrec ((x-cnd7941
                                                                              (letrec ((x7942
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7942))))
                                                                      (if x-cnd7941
                                                                        (letrec ((g7943
                                                                                  (letrec ((x7946
                                                                                            (car
                                                                                             args))
                                                                                           (x7945
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7944
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7946
                                                                                     x7945
                                                                                     x7944))))
                                                                          g7943)
                                                                        (letrec ((x-cnd7947
                                                                                  (letrec ((x7948
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7948))))
                                                                          (if x-cnd7947
                                                                            (letrec ((g7949
                                                                                      (letrec ((x7953
                                                                                                (car
                                                                                                 args))
                                                                                               (x7952
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7951
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7950
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7953
                                                                                         x7952
                                                                                         x7951
                                                                                         x7950))))
                                                                              g7949)
                                                                            (letrec ((x-cnd7954
                                                                                      (letrec ((x7955
                                                                                                (letrec ((x7956
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7956))))
                                                                                        (null?
                                                                                         x7955))))
                                                                              (if x-cnd7954
                                                                                (letrec ((g7957
                                                                                          (letrec ((x7963
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7962
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7961
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7960
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7958
                                                                                                    (letrec ((x7959
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7959))))
                                                                                            (proc
                                                                                             x7963
                                                                                             x7962
                                                                                             x7961
                                                                                             x7960
                                                                                             x7958))))
                                                                                  g7957)
                                                                                (letrec ((x-cnd7964
                                                                                          (letrec ((x7965
                                                                                                    (letrec ((x7966
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7966))))
                                                                                            (null?
                                                                                             x7965))))
                                                                                  (if x-cnd7964
                                                                                    (letrec ((g7967
                                                                                              (letrec ((x7975
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7974
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7973
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7972
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7970
                                                                                                        (letrec ((x7971
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7971)))
                                                                                                       (x7968
                                                                                                        (letrec ((x7969
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7969))))
                                                                                                (proc
                                                                                                 x7975
                                                                                                 x7974
                                                                                                 x7973
                                                                                                 x7972
                                                                                                 x7970
                                                                                                 x7968))))
                                                                                      g7967)
                                                                                    (letrec ((x-cnd7976
                                                                                              (letrec ((x7977
                                                                                                        (letrec ((x7978
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7978))))
                                                                                                (null?
                                                                                                 x7977))))
                                                                                      (if x-cnd7976
                                                                                        (letrec ((g7979
                                                                                                  (letrec ((x7989
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7988
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7987
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7986
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7984
                                                                                                            (letrec ((x7985
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7985)))
                                                                                                           (x7982
                                                                                                            (letrec ((x7983
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7983)))
                                                                                                           (x7980
                                                                                                            (letrec ((x7981
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7981))))
                                                                                                    (proc
                                                                                                     x7989
                                                                                                     x7988
                                                                                                     x7987
                                                                                                     x7986
                                                                                                     x7984
                                                                                                     x7982
                                                                                                     x7980))))
                                                                                          g7979)
                                                                                        (letrec ((g7990
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7990)))))))))))))))))))
                                                g7927)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7991
                                                        (letrec ((x7993
                                                                  (list? l)))
                                                          (assert x7993)))
                                                       (g7992
                                                        (letrec ((x-cnd7994
                                                                  (null? l)))
                                                          (if x-cnd7994
                                                            #f
                                                            (letrec ((x-cnd7995
                                                                      (letrec ((x7996
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7996
                                                                         e))))
                                                              (if x-cnd7995
                                                                l
                                                                (letrec ((x7997
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7997))))))))
                                                g7992)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7998
                                                        (letrec ((x7999
                                                                  (letrec ((x8000
                                                                            (letrec ((x8001
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8001))))
                                                                    (cdr
                                                                     x8000))))
                                                          (cdr x7999))))
                                                g7998)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8002
                                                        (letrec ((x8003
                                                                  (letrec ((x8004
                                                                            (letrec ((x8005
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8005))))
                                                                    (cdr
                                                                     x8004))))
                                                          (car x8003))))
                                                g8002)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8006 (random 42)))
                                                g8006)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8007
                                                        (letrec ((x8009
                                                                  (number? x)))
                                                          (assert x8009)))
                                                       (g8008 (= x 0)))
                                                g8008)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8010
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8011
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8011))))
                                                g8010)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8012
                                                        (letrec ((x8013
                                                                  (cdr x)))
                                                          (car x8013))))
                                                g8012)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8014
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd8015
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8015
                                                                      (letrec ((x8016
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8016))
                                                                      #f))))
                                                          (letrec ((g8017
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g8017))))
                                                g8014)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (letrec ((x8020
                                                                            (letrec ((x8021
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8021))))
                                                                    (cdr
                                                                     x8020))))
                                                          (cdr x8019))))
                                                g8018)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8022
                                                        (letrec ((x-cnd8023
                                                                  (letrec ((x8024
                                                                            #\0))
                                                                    (char<=?
                                                                     x8024
                                                                     c))))
                                                          (if x-cnd8023
                                                            (letrec ((x8025
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8025))
                                                            #f))))
                                                g8022)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8026
                                                        (letrec ((x8028
                                                                  (list? l)))
                                                          (assert x8028)))
                                                       (g8027
                                                        (letrec ((x-cnd8029
                                                                  (null? l)))
                                                          (if x-cnd8029
                                                            #f
                                                            (letrec ((x-cnd8030
                                                                      (letrec ((x8031
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8031
                                                                         k))))
                                                              (if x-cnd8030
                                                                (car l)
                                                                (letrec ((x8032
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8032))))))))
                                                g8027)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8033 (if x #f #t)))
                                                g8033)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8034 (append l1 l2)))
                                                g8034)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8035
                                                        (letrec ((x8037
                                                                  (list? l)))
                                                          (assert x8037)))
                                                       (g8036
                                                        (letrec ((x-cnd8038
                                                                  (null? l)))
                                                          (if x-cnd8038
                                                            #f
                                                            (letrec ((x-cnd8039
                                                                      (letrec ((x8040
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8040
                                                                         e))))
                                                              (if x-cnd8039
                                                                l
                                                                (letrec ((x8041
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8041))))))))
                                                g8036)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8042
                                                        (letrec ((x8043
                                                                  (letrec ((x8044
                                                                            (letrec ((x8045
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8045))))
                                                                    (cdr
                                                                     x8044))))
                                                          (car x8043))))
                                                g8042)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8046
                                                        (letrec ((x8048
                                                                  (list? l)))
                                                          (assert x8048)))
                                                       (g8047
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8049
                                                                              (letrec ((x-cnd8050
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8050
                                                                                  0
                                                                                  (letrec ((x8051
                                                                                            (letrec ((x8052
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8052))))
                                                                                    (+
                                                                                     1
                                                                                     x8051))))))
                                                                      g8049))))
                                                          (letrec ((g8053
                                                                    (rec l)))
                                                            g8053))))
                                                g8047)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8054
                                                        (letrec ((x8057
                                                                  (char? c1)))
                                                          (assert x8057)))
                                                       (g8055
                                                        (letrec ((x8058
                                                                  (char? c2)))
                                                          (assert x8058)))
                                                       (g8056
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8059
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8059))))
                                                g8056)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8060
                                                        (letrec ((x8061
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8061))))
                                                g8060)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8062
                                                        (letrec ((x8063
                                                                  (letrec ((x8064
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8064))))
                                                          (cdr x8063))))
                                                g8062)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8065
                                                        (letrec ((x8067
                                                                  (list? l)))
                                                          (assert x8067)))
                                                       (g8066
                                                        (letrec ((x-cnd8068
                                                                  (null? l)))
                                                          (if x-cnd8068
                                                            #f
                                                            (letrec ((x-cnd8069
                                                                      (letrec ((x8070
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8070
                                                                         k))))
                                                              (if x-cnd8069
                                                                (car l)
                                                                (letrec ((x8071
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8071))))))))
                                                g8066)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8072
                                                        (letrec ((x8073
                                                                  (car x)))
                                                          (car x8073))))
                                                g8072)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8074
                                                        (letrec ((x8077
                                                                  (char? c1)))
                                                          (assert x8077)))
                                                       (g8075
                                                        (letrec ((x8078
                                                                  (char? c2)))
                                                          (assert x8078)))
                                                       (g8076
                                                        (letrec ((x8079
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8079))))
                                                g8076)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8080
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8081
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8081))))
                                                g8080)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8082
                                                        (letrec ((x8085
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8085)))
                                                       (g8083
                                                        (letrec ((x8086
                                                                  (list? l)))
                                                          (assert x8086)))
                                                       (g8084
                                                        (letrec ((x-cnd8087
                                                                  (null? l)))
                                                          (if x-cnd8087
                                                            #t
                                                            (letrec ((x-cnd8088
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8088
                                                                (letrec ((g8089
                                                                          (letrec ((x8091
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8091)))
                                                                         (g8090
                                                                          (letrec ((x8092
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8092))))
                                                                  g8090)
                                                                '()))))))
                                                g8084)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8093
                                                        (letrec ((x8095
                                                                  (number? x)))
                                                          (assert x8095)))
                                                       (g8094
                                                        (letrec ((x-cnd8096
                                                                  (< x 0)))
                                                          (if x-cnd8096
                                                            (- 0 x)
                                                            x))))
                                                g8094)))
                                           (char-ci>=?
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
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8102
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8102))))
                                                g8099)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (letrec ((x8105
                                                                            (letrec ((x8106
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8106))))
                                                                    (cdr
                                                                     x8105))))
                                                          (car x8104))))
                                                g8103)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8107 #f)) g8107)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8108
                                                        (letrec ((x8110
                                                                  (letrec ((x8111
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8111)))
                                                                 (x8109
                                                                  (gcd m n)))
                                                          (/ x8110 x8109))))
                                                g8108)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8112
                                                        (letrec ((x8114
                                                                  (number? x)))
                                                          (assert x8114)))
                                                       (g8113
                                                        (letrec ((x8115
                                                                  (<= x y)))
                                                          (not x8115))))
                                                g8113)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8116
                                                        (letrec ((x8120
                                                                  (list? l)))
                                                          (assert x8120)))
                                                       (g8117
                                                        (letrec ((x8121
                                                                  (number?
                                                                   index)))
                                                          (assert x8121)))
                                                       (g8118
                                                        (letrec ((x8122
                                                                  (letrec ((x8123
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8123))))
                                                          (assert x8122)))
                                                       (g8119
                                                        (letrec ((x-cnd8124
                                                                  (= index 0)))
                                                          (if x-cnd8124
                                                            (car l)
                                                            (letrec ((x8126
                                                                      (cdr l))
                                                                     (x8125
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8126
                                                               x8125))))))
                                                g8119)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8127
                                                        (letrec ((x-cnd8128
                                                                  (= b 0)))
                                                          (if x-cnd8128
                                                            a
                                                            (letrec ((x8129
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8129))))))
                                                g8127)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8130
                                                        (cons 'image '())))
                                                g8130)))
                                           (image?
                                            (lambda (image7596)
                                              (letrec ((g8131
                                                        (letrec ((x8132
                                                                  (car
                                                                   image7596)))
                                                          (eq? x8132 'image))))
                                                g8131)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8133 (image)))
                                                g8133)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8134 (image)))
                                                g8134)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8135 (image)))
                                                g8135)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8136
                                                        (letrec ((x-cnd8137
                                                                  (<= x y)))
                                                          (if x-cnd8137 x y))))
                                                g8136)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8138
                                                        (letrec ((x-cnd8139
                                                                  (>= x y)))
                                                          (if x-cnd8139 x y))))
                                                g8138)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8140
                                                        (letrec ((x-cnd8141
                                                                  (>= x 0)))
                                                          (if x-cnd8141
                                                            x
                                                            (- 0 x)))))
                                                g8140)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8142 (* x x)))
                                                g8142)))
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
                                            (lambda (j7350 k7351 f7352)
                                              (letrec ((g8143
                                                        (lambda (g7349)
                                                          (letrec ((g8144
                                                                    (letrec ((x7353
                                                                              ((lambda (g7357
                                                                                        g7358
                                                                                        g7359)
                                                                                 (letrec ((g8145
                                                                                           (letrec ((x-cnd8146
                                                                                                     ((lambda (v7356)
                                                                                                        (letrec ((g8147
                                                                                                                  (letrec ((x-cnd8148
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7356)))
                                                                                                                    (if x-cnd8148
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8149
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7356)))
                                                                                                                        (if x-cnd8149
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8150
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7356)))
                                                                                                                            (if x-cnd8150
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8151
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7356)))
                                                                                                                                (if x-cnd8151
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8152
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7356)))
                                                                                                                                    (if x-cnd8152
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7356)))))))))))))
                                                                                                          g8147))
                                                                                                      g7359)))
                                                                                             (if x-cnd8146
                                                                                               g7359
                                                                                               (blame
                                                                                                g7357
                                                                                                '(lambda (v7356)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7356)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7356)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7356)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7356)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7356)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7356))))))))))))
                                                                                   g8145))
                                                                               j7350
                                                                               k7351
                                                                               g7349)))
                                                                      (letrec ((g8153
                                                                                (letrec ((x8155
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8156
                                                                                                       (letrec ((x-cnd8157
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8157
                                                                                                           (letrec ((g8158
                                                                                                                     (lambda (j7360
                                                                                                                              k7361
                                                                                                                              f7362)
                                                                                                                       (letrec ((g8159
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8160
                                                                                                                                             (letrec ((x8161
                                                                                                                                                       (f7362)))
                                                                                                                                               (real?
                                                                                                                                                j7360
                                                                                                                                                k7361
                                                                                                                                                x8161))))
                                                                                                                                     g8160))))
                                                                                                                         g8159))))
                                                                                                             g8158)
                                                                                                           (letrec ((x-cnd8162
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8162
                                                                                                               (letrec ((g8163
                                                                                                                         (lambda (j7363
                                                                                                                                  k7364
                                                                                                                                  f7365)
                                                                                                                           (letrec ((g8164
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8165
                                                                                                                                                 (letrec ((x8166
                                                                                                                                                           (f7365)))
                                                                                                                                                   (real?
                                                                                                                                                    j7363
                                                                                                                                                    k7364
                                                                                                                                                    x8166))))
                                                                                                                                         g8165))))
                                                                                                                             g8164))))
                                                                                                                 g8163)
                                                                                                               (letrec ((x-cnd8167
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8167
                                                                                                                   (letrec ((g8168
                                                                                                                             (lambda (j7366
                                                                                                                                      k7367
                                                                                                                                      f7368)
                                                                                                                               (letrec ((g8169
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8170
                                                                                                                                                     (letrec ((x8171
                                                                                                                                                               (f7368)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7366
                                                                                                                                                        k7367
                                                                                                                                                        x8171))))
                                                                                                                                             g8170))))
                                                                                                                                 g8169))))
                                                                                                                     g8168)
                                                                                                                   (letrec ((x-cnd8172
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8172
                                                                                                                       (letrec ((g8173
                                                                                                                                 (lambda (j7371
                                                                                                                                          k7372
                                                                                                                                          f7373)
                                                                                                                                   (letrec ((g8174
                                                                                                                                             (lambda (g7369
                                                                                                                                                      g7370)
                                                                                                                                               (letrec ((g8175
                                                                                                                                                         (letrec ((x8176
                                                                                                                                                                   (letrec ((x8178
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7371
                                                                                                                                                                              k7372
                                                                                                                                                                              g7369))
                                                                                                                                                                            (x8177
                                                                                                                                                                             (real?
                                                                                                                                                                              j7371
                                                                                                                                                                              k7372
                                                                                                                                                                              g7370)))
                                                                                                                                                                     (f7373
                                                                                                                                                                      x8178
                                                                                                                                                                      x8177))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7371
                                                                                                                                                            k7372
                                                                                                                                                            x8176))))
                                                                                                                                                 g8175))))
                                                                                                                                     g8174))))
                                                                                                                         g8173)
                                                                                                                       (letrec ((x-cnd8179
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8179
                                                                                                                           (letrec ((g8180
                                                                                                                                     (lambda (j7376
                                                                                                                                              k7377
                                                                                                                                              f7378)
                                                                                                                                       (letrec ((g8181
                                                                                                                                                 (lambda (g7374
                                                                                                                                                          g7375)
                                                                                                                                                   (letrec ((g8182
                                                                                                                                                             (letrec ((x8183
                                                                                                                                                                       (letrec ((x8185
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7376
                                                                                                                                                                                  k7377
                                                                                                                                                                                  g7374))
                                                                                                                                                                                (x8184
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7376
                                                                                                                                                                                  k7377
                                                                                                                                                                                  g7375)))
                                                                                                                                                                         (f7378
                                                                                                                                                                          x8185
                                                                                                                                                                          x8184))))
                                                                                                                                                               (image?
                                                                                                                                                                j7376
                                                                                                                                                                k7377
                                                                                                                                                                x8183))))
                                                                                                                                                     g8182))))
                                                                                                                                         g8181))))
                                                                                                                             g8180)
                                                                                                                           (letrec ((x-cnd8186
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8186
                                                                                                                               (letrec ((g8187
                                                                                                                                         (lambda (j7380
                                                                                                                                                  k7381
                                                                                                                                                  f7382)
                                                                                                                                           (letrec ((g8188
                                                                                                                                                     (lambda (g7379)
                                                                                                                                                       (letrec ((g8189
                                                                                                                                                                 (letrec ((x8190
                                                                                                                                                                           (letrec ((x8191
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7380
                                                                                                                                                                                      k7381
                                                                                                                                                                                      g7379)))
                                                                                                                                                                             (f7382
                                                                                                                                                                              x8191))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7380
                                                                                                                                                                    k7381
                                                                                                                                                                    x8190))))
                                                                                                                                                         g8189))))
                                                                                                                                             g8188))))
                                                                                                                                 g8187)
                                                                                                                               (letrec ((g8192
                                                                                                                                         "error"))
                                                                                                                                 g8192)))))))))))))))
                                                                                               g8156))
                                                                                           x7353))
                                                                                         (x8154
                                                                                          (f7352
                                                                                           x7353)))
                                                                                  (x8155
                                                                                   j7350
                                                                                   k7351
                                                                                   x8154))))
                                                                        g8153))))
                                                            g8144))))
                                                g8143)))
                                           (player/c
                                            (lambda (j7384 k7385 f7386)
                                              (letrec ((g8193
                                                        (lambda (g7383)
                                                          (letrec ((g8194
                                                                    (letrec ((x7387
                                                                              ((lambda (g7391
                                                                                        g7392
                                                                                        g7393)
                                                                                 (letrec ((g8195
                                                                                           (letrec ((x-cnd8196
                                                                                                     ((lambda (v7390)
                                                                                                        (letrec ((g8197
                                                                                                                  (letrec ((x-cnd8198
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7390)))
                                                                                                                    (if x-cnd8198
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8199
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7390)))
                                                                                                                        (if x-cnd8199
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7390)))))))
                                                                                                          g8197))
                                                                                                      g7393)))
                                                                                             (if x-cnd8196
                                                                                               g7393
                                                                                               (blame
                                                                                                g7391
                                                                                                '(lambda (v7390)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7390)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7390)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7390)))))))))
                                                                                   g8195))
                                                                               j7384
                                                                               k7385
                                                                               g7383)))
                                                                      (letrec ((g8200
                                                                                (letrec ((x8202
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8203
                                                                                                       (letrec ((x-cnd8204
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8204
                                                                                                           (letrec ((g8205
                                                                                                                     (lambda (j7394
                                                                                                                              k7395
                                                                                                                              f7396)
                                                                                                                       (letrec ((g8206
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8207
                                                                                                                                             (letrec ((x8208
                                                                                                                                                       (f7396)))
                                                                                                                                               (posn/c
                                                                                                                                                j7394
                                                                                                                                                k7395
                                                                                                                                                x8208))))
                                                                                                                                     g8207))))
                                                                                                                         g8206))))
                                                                                                             g8205)
                                                                                                           (letrec ((x-cnd8209
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8209
                                                                                                               (letrec ((g8210
                                                                                                                         (lambda (j7398
                                                                                                                                  k7399
                                                                                                                                  f7400)
                                                                                                                           (letrec ((g8211
                                                                                                                                     (lambda (g7397)
                                                                                                                                       (letrec ((g8212
                                                                                                                                                 (letrec ((x8213
                                                                                                                                                           (letrec ((x8214
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7398
                                                                                                                                                                      k7399
                                                                                                                                                                      g7397)))
                                                                                                                                                             (f7400
                                                                                                                                                              x8214))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7398
                                                                                                                                                    k7399
                                                                                                                                                    x8213))))
                                                                                                                                         g8212))))
                                                                                                                             g8211))))
                                                                                                                 g8210)
                                                                                                               (letrec ((x-cnd8215
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8215
                                                                                                                   (letrec ((g8216
                                                                                                                             (lambda (j7402
                                                                                                                                      k7403
                                                                                                                                      f7404)
                                                                                                                               (letrec ((g8217
                                                                                                                                         (lambda (g7401)
                                                                                                                                           (letrec ((g8218
                                                                                                                                                     (letrec ((x8219
                                                                                                                                                               (letrec ((x8220
                                                                                                                                                                         (image?
                                                                                                                                                                          j7402
                                                                                                                                                                          k7403
                                                                                                                                                                          g7401)))
                                                                                                                                                                 (f7404
                                                                                                                                                                  x8220))))
                                                                                                                                                       (image?
                                                                                                                                                        j7402
                                                                                                                                                        k7403
                                                                                                                                                        x8219))))
                                                                                                                                             g8218))))
                                                                                                                                 g8217))))
                                                                                                                     g8216)
                                                                                                                   (letrec ((g8221
                                                                                                                             "error"))
                                                                                                                     g8221)))))))))
                                                                                               g8203))
                                                                                           x7387))
                                                                                         (x8201
                                                                                          (f7386
                                                                                           x7387)))
                                                                                  (x8202
                                                                                   j7384
                                                                                   k7385
                                                                                   x8201))))
                                                                        g8200))))
                                                            g8194))))
                                                g8193)))
                                           (zombie/c
                                            (lambda (j7406 k7407 f7408)
                                              (letrec ((g8222
                                                        (lambda (g7405)
                                                          (letrec ((g8223
                                                                    (letrec ((x7409
                                                                              ((lambda (g7413
                                                                                        g7414
                                                                                        g7415)
                                                                                 (letrec ((g8224
                                                                                           (letrec ((x-cnd8225
                                                                                                     ((lambda (v7412)
                                                                                                        (letrec ((g8226
                                                                                                                  (letrec ((x-cnd8227
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7412)))
                                                                                                                    (if x-cnd8227
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8228
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7412)))
                                                                                                                        (if x-cnd8228
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8229
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7412)))
                                                                                                                            (if x-cnd8229
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7412)))))))))
                                                                                                          g8226))
                                                                                                      g7415)))
                                                                                             (if x-cnd8225
                                                                                               g7415
                                                                                               (blame
                                                                                                g7413
                                                                                                '(lambda (v7412)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7412)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7412)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7412)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7412))))))))))
                                                                                   g8224))
                                                                               j7406
                                                                               k7407
                                                                               g7405)))
                                                                      (letrec ((g8230
                                                                                (letrec ((x8232
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8233
                                                                                                       (letrec ((x-cnd8234
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8234
                                                                                                           (letrec ((g8235
                                                                                                                     (lambda (j7416
                                                                                                                              k7417
                                                                                                                              f7418)
                                                                                                                       (letrec ((g8236
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8237
                                                                                                                                             (letrec ((x8238
                                                                                                                                                       (f7418)))
                                                                                                                                               (posn/c
                                                                                                                                                j7416
                                                                                                                                                k7417
                                                                                                                                                x8238))))
                                                                                                                                     g8237))))
                                                                                                                         g8236))))
                                                                                                             g8235)
                                                                                                           (letrec ((x-cnd8239
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8239
                                                                                                               (letrec ((g8240
                                                                                                                         (lambda (j7421
                                                                                                                                  k7422
                                                                                                                                  f7423)
                                                                                                                           (letrec ((g8241
                                                                                                                                     (lambda (g7419
                                                                                                                                              g7420)
                                                                                                                                       (letrec ((g8242
                                                                                                                                                 (letrec ((x8243
                                                                                                                                                           (letrec ((x8245
                                                                                                                                                                     (string?
                                                                                                                                                                      j7421
                                                                                                                                                                      k7422
                                                                                                                                                                      g7419))
                                                                                                                                                                    (x8244
                                                                                                                                                                     (image?
                                                                                                                                                                      j7421
                                                                                                                                                                      k7422
                                                                                                                                                                      g7420)))
                                                                                                                                                             (f7423
                                                                                                                                                              x8245
                                                                                                                                                              x8244))))
                                                                                                                                                   (image?
                                                                                                                                                    j7421
                                                                                                                                                    k7422
                                                                                                                                                    x8243))))
                                                                                                                                         g8242))))
                                                                                                                             g8241))))
                                                                                                                 g8240)
                                                                                                               (letrec ((x-cnd8246
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8246
                                                                                                                   (letrec ((g8247
                                                                                                                             (lambda (j7425
                                                                                                                                      k7426
                                                                                                                                      f7427)
                                                                                                                               (letrec ((g8248
                                                                                                                                         (lambda (g7424)
                                                                                                                                           (letrec ((g8249
                                                                                                                                                     (letrec ((x8250
                                                                                                                                                               (letrec ((x8251
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7425
                                                                                                                                                                          k7426
                                                                                                                                                                          g7424)))
                                                                                                                                                                 (f7427
                                                                                                                                                                  x8251))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7425
                                                                                                                                                        k7426
                                                                                                                                                        x8250))))
                                                                                                                                             g8249))))
                                                                                                                                 g8248))))
                                                                                                                     g8247)
                                                                                                                   (letrec ((x-cnd8252
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8252
                                                                                                                       (letrec ((g8253
                                                                                                                                 (lambda (j7429
                                                                                                                                          k7430
                                                                                                                                          f7431)
                                                                                                                                   (letrec ((g8254
                                                                                                                                             (lambda (g7428)
                                                                                                                                               (letrec ((g8255
                                                                                                                                                         (letrec ((x8256
                                                                                                                                                                   (letrec ((x8257
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7429
                                                                                                                                                                              k7430
                                                                                                                                                                              g7428)))
                                                                                                                                                                     (f7431
                                                                                                                                                                      x8257))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7429
                                                                                                                                                            k7430
                                                                                                                                                            x8256))))
                                                                                                                                                 g8255))))
                                                                                                                                     g8254))))
                                                                                                                         g8253)
                                                                                                                       (letrec ((g8258
                                                                                                                                 "error"))
                                                                                                                         g8258)))))))))))
                                                                                               g8233))
                                                                                           x7409))
                                                                                         (x8231
                                                                                          (f7408
                                                                                           x7409)))
                                                                                  (x8232
                                                                                   j7406
                                                                                   k7407
                                                                                   x8231))))
                                                                        g8230))))
                                                            g8223))))
                                                g8222)))
                                           (horde/c
                                            (lambda (j7433 k7434 f7435)
                                              (letrec ((g8259
                                                        (lambda (g7432)
                                                          (letrec ((g8260
                                                                    (letrec ((x7436
                                                                              ((lambda (g7440
                                                                                        g7441
                                                                                        g7442)
                                                                                 (letrec ((g8261
                                                                                           (letrec ((x-cnd8262
                                                                                                     ((lambda (v7439)
                                                                                                        (letrec ((g8263
                                                                                                                  (letrec ((x-cnd8264
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7439)))
                                                                                                                    (if x-cnd8264
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8265
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7439)))
                                                                                                                        (if x-cnd8265
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8266
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7439)))
                                                                                                                            (if x-cnd8266
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8267
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7439)))
                                                                                                                                (if x-cnd8267
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8268
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7439)))
                                                                                                                                    (if x-cnd8268
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7439)))))))))))))
                                                                                                          g8263))
                                                                                                      g7442)))
                                                                                             (if x-cnd8262
                                                                                               g7442
                                                                                               (blame
                                                                                                g7440
                                                                                                '(lambda (v7439)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7439)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7439)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7439)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7439)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7439)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7439))))))))))))
                                                                                   g8261))
                                                                               j7433
                                                                               k7434
                                                                               g7432)))
                                                                      (letrec ((g8269
                                                                                (letrec ((x8271
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8272
                                                                                                       (letrec ((x-cnd8273
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8273
                                                                                                           (letrec ((g8274
                                                                                                                     (lambda (j7443
                                                                                                                              k7444
                                                                                                                              f7445)
                                                                                                                       (letrec ((g8275
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8276
                                                                                                                                             (letrec ((x8277
                                                                                                                                                       (f7445)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7443
                                                                                                                                                k7444
                                                                                                                                                x8277))))
                                                                                                                                     g8276))))
                                                                                                                         g8275))))
                                                                                                             g8274)
                                                                                                           (letrec ((x-cnd8278
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8278
                                                                                                               (letrec ((g8279
                                                                                                                         (lambda (j7446
                                                                                                                                  k7447
                                                                                                                                  f7448)
                                                                                                                           (letrec ((g8280
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8281
                                                                                                                                                 (letrec ((x8282
                                                                                                                                                           (f7448)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7446
                                                                                                                                                    k7447
                                                                                                                                                    x8282))))
                                                                                                                                         g8281))))
                                                                                                                             g8280))))
                                                                                                                 g8279)
                                                                                                               (letrec ((x-cnd8283
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8283
                                                                                                                   (letrec ((g8284
                                                                                                                             (lambda (j7450
                                                                                                                                      k7451
                                                                                                                                      f7452)
                                                                                                                               (letrec ((g8285
                                                                                                                                         (lambda (g7449)
                                                                                                                                           (letrec ((g8286
                                                                                                                                                     (letrec ((x8287
                                                                                                                                                               (letrec ((x8288
                                                                                                                                                                         (image?
                                                                                                                                                                          j7450
                                                                                                                                                                          k7451
                                                                                                                                                                          g7449)))
                                                                                                                                                                 (f7452
                                                                                                                                                                  x8288))))
                                                                                                                                                       (image?
                                                                                                                                                        j7450
                                                                                                                                                        k7451
                                                                                                                                                        x8287))))
                                                                                                                                             g8286))))
                                                                                                                                 g8285))))
                                                                                                                     g8284)
                                                                                                                   (letrec ((x-cnd8289
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8289
                                                                                                                       (letrec ((g8290
                                                                                                                                 (lambda (j7454
                                                                                                                                          k7455
                                                                                                                                          f7456)
                                                                                                                                   (letrec ((g8291
                                                                                                                                             (lambda (g7453)
                                                                                                                                               (letrec ((g8292
                                                                                                                                                         (letrec ((x8293
                                                                                                                                                                   (letrec ((x8294
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7454
                                                                                                                                                                              k7455
                                                                                                                                                                              g7453)))
                                                                                                                                                                     (f7456
                                                                                                                                                                      x8294))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7454
                                                                                                                                                            k7455
                                                                                                                                                            x8293))))
                                                                                                                                                 g8292))))
                                                                                                                                     g8291))))
                                                                                                                         g8290)
                                                                                                                       (letrec ((x-cnd8295
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8295
                                                                                                                           (letrec ((g8296
                                                                                                                                     (lambda (j7458
                                                                                                                                              k7459
                                                                                                                                              f7460)
                                                                                                                                       (letrec ((g8297
                                                                                                                                                 (lambda (g7457)
                                                                                                                                                   (letrec ((g8298
                                                                                                                                                             (letrec ((x8299
                                                                                                                                                                       (letrec ((x8300
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7458
                                                                                                                                                                                  k7459
                                                                                                                                                                                  g7457)))
                                                                                                                                                                         (f7460
                                                                                                                                                                          x8300))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7458
                                                                                                                                                                k7459
                                                                                                                                                                x8299))))
                                                                                                                                                     g8298))))
                                                                                                                                         g8297))))
                                                                                                                             g8296)
                                                                                                                           (letrec ((x-cnd8301
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8301
                                                                                                                               (letrec ((g8302
                                                                                                                                         (lambda (j7461
                                                                                                                                                  k7462
                                                                                                                                                  f7463)
                                                                                                                                           (letrec ((g8303
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8304
                                                                                                                                                                 (letrec ((x8305
                                                                                                                                                                           (f7463)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7461
                                                                                                                                                                    k7462
                                                                                                                                                                    x8305))))
                                                                                                                                                         g8304))))
                                                                                                                                             g8303))))
                                                                                                                                 g8302)
                                                                                                                               (letrec ((g8306
                                                                                                                                         "error"))
                                                                                                                                 g8306)))))))))))))))
                                                                                               g8272))
                                                                                           x7436))
                                                                                         (x8270
                                                                                          (f7435
                                                                                           x7436)))
                                                                                  (x8271
                                                                                   j7433
                                                                                   k7434
                                                                                   x8270))))
                                                                        g8269))))
                                                            g8260))))
                                                g8259)))
                                           (zombies/c
                                            (lambda (j7465 k7466 f7467)
                                              (letrec ((g8307
                                                        (lambda (g7464)
                                                          (letrec ((g8308
                                                                    (letrec ((x7468
                                                                              ((lambda (g7472
                                                                                        g7473
                                                                                        g7474)
                                                                                 (letrec ((g8309
                                                                                           (letrec ((x-cnd8310
                                                                                                     ((lambda (v7471)
                                                                                                        (letrec ((g8311
                                                                                                                  (letrec ((x-cnd8312
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7471)))
                                                                                                                    (if x-cnd8312
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8313
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7471)))
                                                                                                                        (if x-cnd8313
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8314
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7471)))
                                                                                                                            (if x-cnd8314
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7471)))))))))
                                                                                                          g8311))
                                                                                                      g7474)))
                                                                                             (if x-cnd8310
                                                                                               g7474
                                                                                               (blame
                                                                                                g7472
                                                                                                '(lambda (v7471)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7471)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7471)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7471)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7471))))))))))
                                                                                   g8309))
                                                                               j7465
                                                                               k7466
                                                                               g7464)))
                                                                      (letrec ((g8315
                                                                                (letrec ((x8317
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8318
                                                                                                       (letrec ((x-cnd8319
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8319
                                                                                                           (letrec ((g8320
                                                                                                                     (lambda (j7476
                                                                                                                              k7477
                                                                                                                              f7478)
                                                                                                                       (letrec ((g8321
                                                                                                                                 (lambda (g7475)
                                                                                                                                   (letrec ((g8322
                                                                                                                                             (letrec ((x8323
                                                                                                                                                       (letrec ((x8324
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7476
                                                                                                                                                                  k7477
                                                                                                                                                                  g7475)))
                                                                                                                                                         (f7478
                                                                                                                                                          x8324))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7476
                                                                                                                                                k7477
                                                                                                                                                x8323))))
                                                                                                                                     g8322))))
                                                                                                                         g8321))))
                                                                                                             g8320)
                                                                                                           (letrec ((x-cnd8325
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8325
                                                                                                               (letrec ((g8326
                                                                                                                         (lambda (j7481
                                                                                                                                  k7482
                                                                                                                                  f7483)
                                                                                                                           (letrec ((g8327
                                                                                                                                     (lambda (g7479
                                                                                                                                              g7480)
                                                                                                                                       (letrec ((g8328
                                                                                                                                                 (letrec ((x8329
                                                                                                                                                           (letrec ((x8331
                                                                                                                                                                     (string?
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7479))
                                                                                                                                                                    (x8330
                                                                                                                                                                     (image?
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7480)))
                                                                                                                                                             (f7483
                                                                                                                                                              x8331
                                                                                                                                                              x8330))))
                                                                                                                                                   (image?
                                                                                                                                                    j7481
                                                                                                                                                    k7482
                                                                                                                                                    x8329))))
                                                                                                                                         g8328))))
                                                                                                                             g8327))))
                                                                                                                 g8326)
                                                                                                               (letrec ((x-cnd8332
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8332
                                                                                                                   (letrec ((g8333
                                                                                                                             (lambda (j7485
                                                                                                                                      k7486
                                                                                                                                      f7487)
                                                                                                                               (letrec ((g8334
                                                                                                                                         (lambda (g7484)
                                                                                                                                           (letrec ((g8335
                                                                                                                                                     (letrec ((x8336
                                                                                                                                                               (letrec ((x8337
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7485
                                                                                                                                                                          k7486
                                                                                                                                                                          g7484)))
                                                                                                                                                                 (f7487
                                                                                                                                                                  x8337))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7485
                                                                                                                                                        k7486
                                                                                                                                                        x8336))))
                                                                                                                                             g8335))))
                                                                                                                                 g8334))))
                                                                                                                     g8333)
                                                                                                                   (letrec ((x-cnd8338
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8338
                                                                                                                       (letrec ((g8339
                                                                                                                                 (lambda (j7489
                                                                                                                                          k7490
                                                                                                                                          f7491)
                                                                                                                                   (letrec ((g8340
                                                                                                                                             (lambda (g7488)
                                                                                                                                               (letrec ((g8341
                                                                                                                                                         (letrec ((x8342
                                                                                                                                                                   (letrec ((x8343
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7489
                                                                                                                                                                              k7490
                                                                                                                                                                              g7488)))
                                                                                                                                                                     (f7491
                                                                                                                                                                      x8343))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7489
                                                                                                                                                            k7490
                                                                                                                                                            x8342))))
                                                                                                                                                 g8341))))
                                                                                                                                     g8340))))
                                                                                                                         g8339)
                                                                                                                       (letrec ((g8344
                                                                                                                                 "error"))
                                                                                                                         g8344)))))))))))
                                                                                               g8318))
                                                                                           x7468))
                                                                                         (x8316
                                                                                          (f7467
                                                                                           x7468)))
                                                                                  (x8317
                                                                                   j7465
                                                                                   k7466
                                                                                   x8316))))
                                                                        g8315))))
                                                            g8308))))
                                                g8307)))
                                           (world/c
                                            (lambda (j7493 k7494 f7495)
                                              (letrec ((g8345
                                                        (lambda (g7492)
                                                          (letrec ((g8346
                                                                    (letrec ((x7496
                                                                              ((lambda (g7500
                                                                                        g7501
                                                                                        g7502)
                                                                                 (letrec ((g8347
                                                                                           (letrec ((x-cnd8348
                                                                                                     ((lambda (v7499)
                                                                                                        (letrec ((g8349
                                                                                                                  (letrec ((x-cnd8350
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7499)))
                                                                                                                    (if x-cnd8350
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8351
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7499)))
                                                                                                                        (if x-cnd8351
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8352
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7499)))
                                                                                                                            (if x-cnd8352
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7499)))))))))
                                                                                                          g8349))
                                                                                                      g7502)))
                                                                                             (if x-cnd8348
                                                                                               g7502
                                                                                               (blame
                                                                                                g7500
                                                                                                '(lambda (v7499)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7499)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7499)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7499)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7499))))))))))
                                                                                   g8347))
                                                                               j7493
                                                                               k7494
                                                                               g7492)))
                                                                      (letrec ((g8353
                                                                                (letrec ((x8355
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8356
                                                                                                       (letrec ((x-cnd8357
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8357
                                                                                                           (letrec ((g8358
                                                                                                                     (lambda (j7506
                                                                                                                              k7507
                                                                                                                              f7508)
                                                                                                                       (letrec ((g8359
                                                                                                                                 (lambda (g7503
                                                                                                                                          g7504
                                                                                                                                          g7505)
                                                                                                                                   (letrec ((g8360
                                                                                                                                             (letrec ((x8361
                                                                                                                                                       (letrec ((x8364
                                                                                                                                                                 (real?
                                                                                                                                                                  j7506
                                                                                                                                                                  k7507
                                                                                                                                                                  g7503))
                                                                                                                                                                (x8363
                                                                                                                                                                 (real?
                                                                                                                                                                  j7506
                                                                                                                                                                  k7507
                                                                                                                                                                  g7504))
                                                                                                                                                                (x8362
                                                                                                                                                                 (string?
                                                                                                                                                                  j7506
                                                                                                                                                                  k7507
                                                                                                                                                                  g7505)))
                                                                                                                                                         (f7508
                                                                                                                                                          x8364
                                                                                                                                                          x8363
                                                                                                                                                          x8362))))
                                                                                                                                               (world/c
                                                                                                                                                j7506
                                                                                                                                                k7507
                                                                                                                                                x8361))))
                                                                                                                                     g8360))))
                                                                                                                         g8359))))
                                                                                                             g8358)
                                                                                                           (letrec ((x-cnd8365
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8365
                                                                                                               (letrec ((g8366
                                                                                                                         (lambda (j7509
                                                                                                                                  k7510
                                                                                                                                  f7511)
                                                                                                                           (letrec ((g8367
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8368
                                                                                                                                                 (letrec ((x8369
                                                                                                                                                           (f7511)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7509
                                                                                                                                                    k7510
                                                                                                                                                    x8369))))
                                                                                                                                         g8368))))
                                                                                                                             g8367))))
                                                                                                                 g8366)
                                                                                                               (letrec ((x-cnd8370
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8370
                                                                                                                   (letrec ((g8371
                                                                                                                             (lambda (j7512
                                                                                                                                      k7513
                                                                                                                                      f7514)
                                                                                                                               (letrec ((g8372
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8373
                                                                                                                                                     (letrec ((x8374
                                                                                                                                                               (f7514)))
                                                                                                                                                       (image?
                                                                                                                                                        j7512
                                                                                                                                                        k7513
                                                                                                                                                        x8374))))
                                                                                                                                             g8373))))
                                                                                                                                 g8372))))
                                                                                                                     g8371)
                                                                                                                   (letrec ((x-cnd8375
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8375
                                                                                                                       (letrec ((g8376
                                                                                                                                 (lambda (j7515
                                                                                                                                          k7516
                                                                                                                                          f7517)
                                                                                                                                   (letrec ((g8377
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8378
                                                                                                                                                         (letrec ((x8379
                                                                                                                                                                   (f7517)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7515
                                                                                                                                                            k7516
                                                                                                                                                            x8379))))
                                                                                                                                                 g8378))))
                                                                                                                                     g8377))))
                                                                                                                         g8376)
                                                                                                                       (letrec ((g8380
                                                                                                                                 "error"))
                                                                                                                         g8380)))))))))))
                                                                                               g8356))
                                                                                           x7496))
                                                                                         (x8354
                                                                                          (f7495
                                                                                           x7496)))
                                                                                  (x8355
                                                                                   j7493
                                                                                   k7494
                                                                                   x8354))))
                                                                        g8353))))
                                                            g8346))))
                                                g8345)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8381
                                                        (letrec ((x8414 (msg))
                                                                 (x8382
                                                                  (letrec ((x-cnd8383
                                                                            (equal?
                                                                             msg
                                                                             'on-mouse)))
                                                                    (if x-cnd8383
                                                                      (letrec ((g8384
                                                                                (letrec ((x8389
                                                                                          (x
                                                                                           y
                                                                                           me))
                                                                                         (x8385
                                                                                          (letrec ((x8386
                                                                                                    (letrec ((x-cnd8387
                                                                                                              (equal?
                                                                                                               me
                                                                                                               "leave")))
                                                                                                      (if x-cnd8387
                                                                                                        (letrec ((x8388
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x8388))
                                                                                                        (new-posn
                                                                                                         x
                                                                                                         y)))))
                                                                                            (new-world
                                                                                             player
                                                                                             x8386
                                                                                             zombies))))
                                                                                  (λ x8389
                                                                                    x8385))))
                                                                        g8384)
                                                                      (letrec ((x-cnd8390
                                                                                (equal?
                                                                                 msg
                                                                                 'on-tick)))
                                                                        (if x-cnd8390
                                                                          (letrec ((g8391
                                                                                    (letrec ((x8392
                                                                                              (letrec ((x8399
                                                                                                        (letrec ((x8400
                                                                                                                  (player
                                                                                                                   'move-toward)))
                                                                                                          (x8400
                                                                                                           mouse)))
                                                                                                       (x8393
                                                                                                        (letrec ((x8396
                                                                                                                  (letrec ((x8397
                                                                                                                            (letrec ((x8398
                                                                                                                                      (zombies
                                                                                                                                       'eat-brains)))
                                                                                                                              (x8398))))
                                                                                                                    (x8397
                                                                                                                     'move-toward)))
                                                                                                                 (x8394
                                                                                                                  (letrec ((x8395
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8395))))
                                                                                                          (x8396
                                                                                                           x8394))))
                                                                                                (new-world
                                                                                                 x8399
                                                                                                 mouse
                                                                                                 x8393))))
                                                                                      (λ ()
                                                                                        x8392))))
                                                                            g8391)
                                                                          (letrec ((x-cnd8401
                                                                                    (equal?
                                                                                     msg
                                                                                     'to-draw)))
                                                                            (if x-cnd8401
                                                                              (letrec ((g8402
                                                                                        (letrec ((x8403
                                                                                                  (letrec ((x8406
                                                                                                            (player
                                                                                                             'draw-on))
                                                                                                           (x8404
                                                                                                            (letrec ((x8405
                                                                                                                      (zombies
                                                                                                                       'draw-on)))
                                                                                                              (x8405
                                                                                                               MT-SCENE))))
                                                                                                    (x8406
                                                                                                     x8404))))
                                                                                          (λ ()
                                                                                            x8403))))
                                                                                g8402)
                                                                              (letrec ((x-cnd8407
                                                                                        (equal?
                                                                                         msg
                                                                                         'stop-when)))
                                                                                (if x-cnd8407
                                                                                  (letrec ((g8408
                                                                                            (letrec ((x8409
                                                                                                      (letrec ((x8412
                                                                                                                (zombies
                                                                                                                 'touching?))
                                                                                                               (x8410
                                                                                                                (letrec ((x8411
                                                                                                                          (player
                                                                                                                           'posn)))
                                                                                                                  (x8411))))
                                                                                                        (x8412
                                                                                                         x8410))))
                                                                                              (λ ()
                                                                                                x8409))))
                                                                                    g8408)
                                                                                  (letrec ((g8413
                                                                                            "unknown message"))
                                                                                    g8413)))))))))))
                                                          (λ x8414 x8382))))
                                                g8381)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8415
                                                        (letrec ((x8431 (msg))
                                                                 (x8416
                                                                  (letrec ((x-cnd8417
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8417
                                                                      (letrec ((g8418
                                                                                (λ ()
                                                                                  p)))
                                                                        g8418)
                                                                      (letrec ((x-cnd8419
                                                                                (equal?
                                                                                 msg
                                                                                 'move-toward)))
                                                                        (if x-cnd8419
                                                                          (letrec ((g8420
                                                                                    (letrec ((x8424
                                                                                              (q))
                                                                                             (x8421
                                                                                              (letrec ((x8422
                                                                                                        (letrec ((x8423
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8423
                                                                                                           q
                                                                                                           PLAYER-SPEED))))
                                                                                                (new-player
                                                                                                 x8422))))
                                                                                      (λ x8424
                                                                                        x8421))))
                                                                            g8420)
                                                                          (letrec ((x-cnd8425
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8425
                                                                              (letrec ((g8426
                                                                                        (letrec ((x8429
                                                                                                  (scn))
                                                                                                 (x8427
                                                                                                  (letrec ((x8428
                                                                                                            (p
                                                                                                             'draw-on/image)))
                                                                                                    (x8428
                                                                                                     PLAYER-IMG
                                                                                                     scn))))
                                                                                          (λ x8429
                                                                                            x8427))))
                                                                                g8426)
                                                                              (letrec ((g8430
                                                                                        "unknown message"))
                                                                                g8430)))))))))
                                                          (λ x8431 x8416))))
                                                g8415)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8432
                                                        (letrec ((x8464 (msg))
                                                                 (x8433
                                                                  (letrec ((x-cnd8434
                                                                            (equal?
                                                                             msg
                                                                             'dead)))
                                                                    (if x-cnd8434
                                                                      (letrec ((g8435
                                                                                (λ ()
                                                                                  dead)))
                                                                        g8435)
                                                                      (letrec ((x-cnd8436
                                                                                (equal?
                                                                                 msg
                                                                                 'undead)))
                                                                        (if x-cnd8436
                                                                          (letrec ((g8437
                                                                                    (λ ()
                                                                                      undead)))
                                                                            g8437)
                                                                          (letrec ((x-cnd8438
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8438
                                                                              (letrec ((g8439
                                                                                        (letrec ((x8444
                                                                                                  (scn))
                                                                                                 (x8440
                                                                                                  (letrec ((x8443
                                                                                                            (undead
                                                                                                             'draw-on/color))
                                                                                                           (x8441
                                                                                                            (letrec ((x8442
                                                                                                                      (dead
                                                                                                                       'draw-on/color)))
                                                                                                              (x8442
                                                                                                               "black"
                                                                                                               scn))))
                                                                                                    (x8443
                                                                                                     "yellow"
                                                                                                     x8441))))
                                                                                          (λ x8444
                                                                                            x8440))))
                                                                                g8439)
                                                                              (letrec ((x-cnd8445
                                                                                        (equal?
                                                                                         msg
                                                                                         'touching?)))
                                                                                (if x-cnd8445
                                                                                  (letrec ((g8446
                                                                                            (letrec ((x8452
                                                                                                      (p))
                                                                                                     (x8447
                                                                                                      (letrec ((x8450
                                                                                                                (letrec ((x8451
                                                                                                                          (undead
                                                                                                                           'touching?)))
                                                                                                                  (x8451
                                                                                                                   p)))
                                                                                                               (x8448
                                                                                                                (letrec ((x8449
                                                                                                                          (dead
                                                                                                                           'touching?)))
                                                                                                                  (x8449
                                                                                                                   p))))
                                                                                                        (or x8450
                                                                                                            x8448))))
                                                                                              (λ x8452
                                                                                                x8447))))
                                                                                    g8446)
                                                                                  (letrec ((x-cnd8453
                                                                                            (equal?
                                                                                             msg
                                                                                             'move-toward)))
                                                                                    (if x-cnd8453
                                                                                      (letrec ((g8454
                                                                                                (letrec ((x8458
                                                                                                          (p))
                                                                                                         (x8455
                                                                                                          (letrec ((x8456
                                                                                                                    (letrec ((x8457
                                                                                                                              (undead
                                                                                                                               'move-toward)))
                                                                                                                      (x8457
                                                                                                                       p))))
                                                                                                            (new-horde
                                                                                                             x8456
                                                                                                             dead))))
                                                                                                  (λ x8458
                                                                                                    x8455))))
                                                                                        g8454)
                                                                                      (letrec ((x-cnd8459
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'eat-brains)))
                                                                                        (if x-cnd8459
                                                                                          (letrec ((g8460
                                                                                                    (letrec ((x8461
                                                                                                              (letrec ((x8462
                                                                                                                        (undead
                                                                                                                         'kill-all)))
                                                                                                                (x8462
                                                                                                                 dead))))
                                                                                                      (λ ()
                                                                                                        x8461))))
                                                                                            g8460)
                                                                                          (letrec ((g8463
                                                                                                    "unknown message"))
                                                                                            g8463)))))))))))))))
                                                          (λ x8464 x8433))))
                                                g8432)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8465
                                                        (letrec ((x8517 (msg))
                                                                 (x8466
                                                                  (letrec ((x-cnd8467
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8467
                                                                      (letrec ((g8468
                                                                                (letrec ((x8474
                                                                                          (p))
                                                                                         (x8469
                                                                                          (letrec ((x8472
                                                                                                    (letrec ((x8473
                                                                                                              (z
                                                                                                               'move-toward)))
                                                                                                      (x8473
                                                                                                       p)))
                                                                                                   (x8470
                                                                                                    (letrec ((x8471
                                                                                                              (r
                                                                                                               'move-toward)))
                                                                                                      (x8471
                                                                                                       p))))
                                                                                            (new-cons-zombies
                                                                                             x8472
                                                                                             x8470))))
                                                                                  (λ x8474
                                                                                    x8469))))
                                                                        g8468)
                                                                      (letrec ((x-cnd8475
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8475
                                                                          (letrec ((g8476
                                                                                    (letrec ((x8481
                                                                                              (c
                                                                                               s))
                                                                                             (x8477
                                                                                              (letrec ((x8480
                                                                                                        (z
                                                                                                         'draw-on/color))
                                                                                                       (x8478
                                                                                                        (letrec ((x8479
                                                                                                                  (r
                                                                                                                   'draw-on/color)))
                                                                                                          (x8479
                                                                                                           c
                                                                                                           s))))
                                                                                                (x8480
                                                                                                 c
                                                                                                 x8478))))
                                                                                      (λ x8481
                                                                                        x8477))))
                                                                            g8476)
                                                                          (letrec ((x-cnd8482
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8482
                                                                              (letrec ((g8483
                                                                                        (letrec ((x8489
                                                                                                  (p))
                                                                                                 (x8484
                                                                                                  (letrec ((x8487
                                                                                                            (letrec ((x8488
                                                                                                                      (z
                                                                                                                       'touching?)))
                                                                                                              (x8488
                                                                                                               p)))
                                                                                                           (x8485
                                                                                                            (letrec ((x8486
                                                                                                                      (r
                                                                                                                       'touching?)))
                                                                                                              (x8486
                                                                                                               p))))
                                                                                                    (or x8487
                                                                                                        x8485))))
                                                                                          (λ x8489
                                                                                            x8484))))
                                                                                g8483)
                                                                              (letrec ((x-cnd8490
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8490
                                                                                  (letrec ((g8491
                                                                                            (letrec ((x8515
                                                                                                      (dead))
                                                                                                     (x8492
                                                                                                      (letrec ((x8502
                                                                                                                (letrec ((x8506
                                                                                                                          (letrec ((x8511
                                                                                                                                    (letrec ((x8514
                                                                                                                                              (r
                                                                                                                                               'touching?))
                                                                                                                                             (x8512
                                                                                                                                              (letrec ((x8513
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8513))))
                                                                                                                                      (x8514
                                                                                                                                       x8512)))
                                                                                                                                   (x8507
                                                                                                                                    (letrec ((x8510
                                                                                                                                              (dead
                                                                                                                                               'touching?))
                                                                                                                                             (x8508
                                                                                                                                              (letrec ((x8509
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8509))))
                                                                                                                                      (x8510
                                                                                                                                       x8508))))
                                                                                                                            (or x8511
                                                                                                                                x8507)))
                                                                                                                         (x8503
                                                                                                                          (letrec ((x8505
                                                                                                                                    (r
                                                                                                                                     'kill-all))
                                                                                                                                   (x8504
                                                                                                                                    (new-cons-zombies
                                                                                                                                     z
                                                                                                                                     dead)))
                                                                                                                            (x8505
                                                                                                                             x8504))))
                                                                                                                  (x8506
                                                                                                                   x8503)))
                                                                                                               (x8493
                                                                                                                (letrec ((x8494
                                                                                                                          (letrec ((res
                                                                                                                                    (letrec ((x8495
                                                                                                                                              (r
                                                                                                                                               'kill-all)))
                                                                                                                                      (x8495
                                                                                                                                       dead))))
                                                                                                                            (letrec ((g8496
                                                                                                                                      (letrec ((x8499
                                                                                                                                                (letrec ((x8500
                                                                                                                                                          (letrec ((x8501
                                                                                                                                                                    (res
                                                                                                                                                                     'undead)))
                                                                                                                                                            (x8501))))
                                                                                                                                                  (new-cons-zombies
                                                                                                                                                   z
                                                                                                                                                   x8500)))
                                                                                                                                               (x8497
                                                                                                                                                (letrec ((x8498
                                                                                                                                                          (res
                                                                                                                                                           'dead)))
                                                                                                                                                  (x8498))))
                                                                                                                                        (new-horde
                                                                                                                                         x8499
                                                                                                                                         x8497))))
                                                                                                                              g8496))))
                                                                                                                  (else
                                                                                                                   x8494))))
                                                                                                        (cond
                                                                                                         x8502
                                                                                                         x8493))))
                                                                                              (λ x8515
                                                                                                x8492))))
                                                                                    g8491)
                                                                                  (letrec ((g8516
                                                                                            "unknown message"))
                                                                                    g8516)))))))))))
                                                          (λ x8517 x8466))))
                                                g8465)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8518
                                                        (letrec ((x8536 (msg))
                                                                 (x8519
                                                                  (letrec ((x-cnd8520
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8520
                                                                      (letrec ((g8521
                                                                                (letrec ((x8523
                                                                                          (p))
                                                                                         (x8522
                                                                                          (new-mt-zombies)))
                                                                                  (λ x8523
                                                                                    x8522))))
                                                                        g8521)
                                                                      (letrec ((x-cnd8524
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8524
                                                                          (letrec ((g8525
                                                                                    (letrec ((x8526
                                                                                              (c
                                                                                               s)))
                                                                                      (λ x8526
                                                                                        s))))
                                                                            g8525)
                                                                          (letrec ((x-cnd8527
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8527
                                                                              (letrec ((g8528
                                                                                        (letrec ((x8529
                                                                                                  (p)))
                                                                                          (λ x8529
                                                                                            #f))))
                                                                                g8528)
                                                                              (letrec ((x-cnd8530
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8530
                                                                                  (letrec ((g8531
                                                                                            (letrec ((x8534
                                                                                                      (dead))
                                                                                                     (x8532
                                                                                                      (letrec ((x8533
                                                                                                                (new-mt-zombies)))
                                                                                                        (new-horde
                                                                                                         x8533
                                                                                                         dead))))
                                                                                              (λ x8534
                                                                                                x8532))))
                                                                                    g8531)
                                                                                  (letrec ((g8535
                                                                                            "unknown message"))
                                                                                    g8535)))))))))))
                                                          (λ x8536 x8519))))
                                                g8518)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8537
                                                        (letrec ((x8560 (msg))
                                                                 (x8538
                                                                  (letrec ((x-cnd8539
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8539
                                                                      (letrec ((g8540
                                                                                (λ ()
                                                                                  p)))
                                                                        g8540)
                                                                      (letrec ((x-cnd8541
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8541
                                                                          (letrec ((g8542
                                                                                    (letrec ((x8546
                                                                                              (c
                                                                                               s))
                                                                                             (x8543
                                                                                              (letrec ((x8545
                                                                                                        (p
                                                                                                         'draw-on/image))
                                                                                                       (x8544
                                                                                                        (circle
                                                                                                         ZOMBIE-RADIUS
                                                                                                         "solid"
                                                                                                         c)))
                                                                                                (x8545
                                                                                                 x8544
                                                                                                 s))))
                                                                                      (λ x8546
                                                                                        x8543))))
                                                                            g8542)
                                                                          (letrec ((x-cnd8547
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8547
                                                                              (letrec ((g8548
                                                                                        (letrec ((x8552
                                                                                                  (q))
                                                                                                 (x8549
                                                                                                  (letrec ((x8550
                                                                                                            (letrec ((x8551
                                                                                                                      (p
                                                                                                                       'dist)))
                                                                                                              (x8551
                                                                                                               q))))
                                                                                                    (<=
                                                                                                     x8550
                                                                                                     ZOMBIE-RADIUS))))
                                                                                          (λ x8552
                                                                                            x8549))))
                                                                                g8548)
                                                                              (letrec ((x-cnd8553
                                                                                        (equal?
                                                                                         msg
                                                                                         'move-toward)))
                                                                                (if x-cnd8553
                                                                                  (letrec ((g8554
                                                                                            (letrec ((x8558
                                                                                                      (q))
                                                                                                     (x8555
                                                                                                      (letrec ((x8556
                                                                                                                (letrec ((x8557
                                                                                                                          (p
                                                                                                                           'move-toward/speed)))
                                                                                                                  (x8557
                                                                                                                   q
                                                                                                                   ZOMBIE-SPEED))))
                                                                                                        (new-zombie
                                                                                                         x8556))))
                                                                                              (λ x8558
                                                                                                x8555))))
                                                                                    g8554)
                                                                                  (letrec ((g8559
                                                                                            "unknown message"))
                                                                                    g8559)))))))))))
                                                          (λ x8560 x8538))))
                                                g8537)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8561
                                                        (letrec ((this
                                                                  (letrec ((x8625
                                                                            (msg))
                                                                           (x8562
                                                                            (letrec ((x-cnd8563
                                                                                      (equal?
                                                                                       msg
                                                                                       'x)))
                                                                              (if x-cnd8563
                                                                                (letrec ((g8564
                                                                                          (λ ()
                                                                                            x)))
                                                                                  g8564)
                                                                                (letrec ((x-cnd8565
                                                                                          (equal?
                                                                                           msg
                                                                                           'y)))
                                                                                  (if x-cnd8565
                                                                                    (letrec ((g8566
                                                                                              (λ ()
                                                                                                y)))
                                                                                      g8566)
                                                                                    (letrec ((x-cnd8567
                                                                                              (equal?
                                                                                               msg
                                                                                               'posn)))
                                                                                      (if x-cnd8567
                                                                                        (letrec ((g8568
                                                                                                  (λ ()
                                                                                                    this)))
                                                                                          g8568)
                                                                                        (letrec ((x-cnd8569
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'move-toward/speed)))
                                                                                          (if x-cnd8569
                                                                                            (letrec ((g8570
                                                                                                      (letrec ((x8600
                                                                                                                (p
                                                                                                                 speed))
                                                                                                               (x8571
                                                                                                                (letrec ((x8586
                                                                                                                          (letrec ((x8596
                                                                                                                                    (letrec ((x8597
                                                                                                                                              (letrec ((x8598
                                                                                                                                                        (letrec ((x8599
                                                                                                                                                                  (p
                                                                                                                                                                   'x)))
                                                                                                                                                          (x8599))))
                                                                                                                                                (-
                                                                                                                                                 x8598
                                                                                                                                                 x))))
                                                                                                                                      (δx
                                                                                                                                       x8597)))
                                                                                                                                   (x8592
                                                                                                                                    (letrec ((x8593
                                                                                                                                              (letrec ((x8594
                                                                                                                                                        (letrec ((x8595
                                                                                                                                                                  (p
                                                                                                                                                                   'y)))
                                                                                                                                                          (x8595))))
                                                                                                                                                (-
                                                                                                                                                 x8594
                                                                                                                                                 y))))
                                                                                                                                      (δy
                                                                                                                                       x8593)))
                                                                                                                                   (x8587
                                                                                                                                    (letrec ((x8588
                                                                                                                                              (letrec ((x8589
                                                                                                                                                        (letrec ((x8591
                                                                                                                                                                  (abs
                                                                                                                                                                   δx))
                                                                                                                                                                 (x8590
                                                                                                                                                                  (abs
                                                                                                                                                                   δy)))
                                                                                                                                                          (max
                                                                                                                                                           x8591
                                                                                                                                                           x8590))))
                                                                                                                                                (min
                                                                                                                                                 speed
                                                                                                                                                 x8589))))
                                                                                                                                      (move-distance
                                                                                                                                       x8588))))
                                                                                                                            (x8596
                                                                                                                             x8592
                                                                                                                             x8587)))
                                                                                                                         (x8572
                                                                                                                          (letrec ((x8578
                                                                                                                                    (letrec ((x8583
                                                                                                                                              (letrec ((x8585
                                                                                                                                                        (abs
                                                                                                                                                         δx))
                                                                                                                                                       (x8584
                                                                                                                                                        (abs
                                                                                                                                                         δy)))
                                                                                                                                                (<
                                                                                                                                                 x8585
                                                                                                                                                 x8584)))
                                                                                                                                             (x8579
                                                                                                                                              (letrec ((x8582
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8580
                                                                                                                                                        (letrec ((x-cnd8581
                                                                                                                                                                  (positive?
                                                                                                                                                                   δy)))
                                                                                                                                                          (if x-cnd8581
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8582
                                                                                                                                                 0
                                                                                                                                                 x8580))))
                                                                                                                                      (x8583
                                                                                                                                       x8579)))
                                                                                                                                   (x8573
                                                                                                                                    (letrec ((x8574
                                                                                                                                              (letrec ((x8577
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8575
                                                                                                                                                        (letrec ((x-cnd8576
                                                                                                                                                                  (positive?
                                                                                                                                                                   δx)))
                                                                                                                                                          (if x-cnd8576
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8577
                                                                                                                                                 x8575
                                                                                                                                                 0))))
                                                                                                                                      (else
                                                                                                                                       x8574))))
                                                                                                                            (cond
                                                                                                                             x8578
                                                                                                                             x8573))))
                                                                                                                  (let* x8586 x8572))))
                                                                                                        (λ x8600
                                                                                                          x8571))))
                                                                                              g8570)
                                                                                            (letrec ((x-cnd8601
                                                                                                      (equal?
                                                                                                       msg
                                                                                                       'move)))
                                                                                              (if x-cnd8601
                                                                                                (letrec ((g8602
                                                                                                          (letrec ((x8606
                                                                                                                    (δx
                                                                                                                     δy))
                                                                                                                   (x8603
                                                                                                                    (letrec ((x8605
                                                                                                                              (+
                                                                                                                               x
                                                                                                                               δx))
                                                                                                                             (x8604
                                                                                                                              (+
                                                                                                                               y
                                                                                                                               δy)))
                                                                                                                      (new-posn
                                                                                                                       x8605
                                                                                                                       x8604))))
                                                                                                            (λ x8606
                                                                                                              x8603))))
                                                                                                  g8602)
                                                                                                (letrec ((x-cnd8607
                                                                                                          (equal?
                                                                                                           msg
                                                                                                           'draw-on/image)))
                                                                                                  (if x-cnd8607
                                                                                                    (letrec ((g8608
                                                                                                              (letrec ((x8610
                                                                                                                        (img
                                                                                                                         scn))
                                                                                                                       (x8609
                                                                                                                        (place-image
                                                                                                                         img
                                                                                                                         x
                                                                                                                         y
                                                                                                                         scn)))
                                                                                                                (λ x8610
                                                                                                                  x8609))))
                                                                                                      g8608)
                                                                                                    (letrec ((x-cnd8611
                                                                                                              (equal?
                                                                                                               msg
                                                                                                               'dist)))
                                                                                                      (if x-cnd8611
                                                                                                        (letrec ((g8612
                                                                                                                  (letrec ((x8623
                                                                                                                            (p))
                                                                                                                           (x8613
                                                                                                                            (letrec ((x8614
                                                                                                                                      (letrec ((x8619
                                                                                                                                                (letrec ((x8620
                                                                                                                                                          (letrec ((x8621
                                                                                                                                                                    (letrec ((x8622
                                                                                                                                                                              (p
                                                                                                                                                                               'y)))
                                                                                                                                                                      (x8622))))
                                                                                                                                                            (-
                                                                                                                                                             x8621
                                                                                                                                                             y))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8620)))
                                                                                                                                               (x8615
                                                                                                                                                (letrec ((x8616
                                                                                                                                                          (letrec ((x8617
                                                                                                                                                                    (letrec ((x8618
                                                                                                                                                                              (p
                                                                                                                                                                               'x)))
                                                                                                                                                                      (x8618))))
                                                                                                                                                            (-
                                                                                                                                                             x8617
                                                                                                                                                             x))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8616))))
                                                                                                                                        (+
                                                                                                                                         x8619
                                                                                                                                         x8615))))
                                                                                                                              (sqrt
                                                                                                                               x8614))))
                                                                                                                    (λ x8623
                                                                                                                      x8613))))
                                                                                                          g8612)
                                                                                                        (letrec ((g8624
                                                                                                                  "unknown message"))
                                                                                                          g8624)))))))))))))))))
                                                                    (λ x8625
                                                                      x8562))))
                                                          (letrec ((g8626
                                                                    this))
                                                            g8626))))
                                                g8561)))
                                           (w0
                                            (letrec ((x8640
                                                      (letrec ((x8641
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8641)))
                                                     (x8639 (new-posn 0 0))
                                                     (x8627
                                                      (letrec ((x8632
                                                                (letrec ((x8637
                                                                          (letrec ((x8638
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8638)))
                                                                         (x8633
                                                                          (letrec ((x8635
                                                                                    (letrec ((x8636
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8636)))
                                                                                   (x8634
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8635
                                                                             x8634))))
                                                                  (new-cons-zombies
                                                                   x8637
                                                                   x8633)))
                                                               (x8628
                                                                (letrec ((x8630
                                                                          (letrec ((x8631
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8631)))
                                                                         (x8629
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8630
                                                                   x8629))))
                                                        (new-horde
                                                         x8632
                                                         x8628))))
                                              (new-world x8640 x8639 x8627))))
                                    (letrec ((g8642
                                              (letrec ((x8655
                                                        (letrec ((xj7518
                                                                  (letrec ((x8656
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8656)))
                                                                 (xk7519
                                                                  (letrec ((x8657
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8657))))
                                                          (letrec ((g8658
                                                                    ((lambda (j7521
                                                                              k7522
                                                                              f7523)
                                                                       (letrec ((g8659
                                                                                 (lambda (g7520)
                                                                                   (letrec ((g8660
                                                                                             (letrec ((x8661
                                                                                                       (letrec ((x8662
                                                                                                                 (any/c
                                                                                                                  j7521
                                                                                                                  k7522
                                                                                                                  g7520)))
                                                                                                         (f7523
                                                                                                          x8662))))
                                                                                               (boolean?/c
                                                                                                j7521
                                                                                                k7522
                                                                                                x8661))))
                                                                                     g8660))))
                                                                         g8659))
                                                                     xj7518
                                                                     xk7519
                                                                     image?)))
                                                            g8658)))
                                                       (x8654 (input)))
                                                (x8655 x8654)))
                                             (g8643
                                              (letrec ((x8665
                                                        (letrec ((xj7524
                                                                  (letrec ((x8666
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8666)))
                                                                 (xk7525
                                                                  (letrec ((x8667
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8667))))
                                                          (letrec ((g8668
                                                                    ((lambda (j7528
                                                                              k7529
                                                                              f7530)
                                                                       (letrec ((g8669
                                                                                 (lambda (g7526
                                                                                          g7527)
                                                                                   (letrec ((g8670
                                                                                             (letrec ((x8671
                                                                                                       (letrec ((x8673
                                                                                                                 (real?/c
                                                                                                                  j7528
                                                                                                                  k7529
                                                                                                                  g7526))
                                                                                                                (x8672
                                                                                                                 (real?/c
                                                                                                                  j7528
                                                                                                                  k7529
                                                                                                                  g7527)))
                                                                                                         (f7530
                                                                                                          x8673
                                                                                                          x8672))))
                                                                                               (image?
                                                                                                j7528
                                                                                                k7529
                                                                                                x8671))))
                                                                                     g8670))))
                                                                         g8669))
                                                                     xj7524
                                                                     xk7525
                                                                     empty-scene)))
                                                            g8668)))
                                                       (x8664 (input))
                                                       (x8663 (input)))
                                                (x8665 x8664 x8663)))
                                             (g8644
                                              (letrec ((x8678
                                                        (letrec ((xj7531
                                                                  (letrec ((x8679
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8679)))
                                                                 (xk7532
                                                                  (letrec ((x8680
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8680))))
                                                          (letrec ((g8681
                                                                    ((lambda (j7537
                                                                              k7538
                                                                              f7539)
                                                                       (letrec ((g8682
                                                                                 (lambda (g7533
                                                                                          g7534
                                                                                          g7535
                                                                                          g7536)
                                                                                   (letrec ((g8683
                                                                                             (letrec ((x8684
                                                                                                       (letrec ((x8688
                                                                                                                 (image?/c
                                                                                                                  j7537
                                                                                                                  k7538
                                                                                                                  g7533))
                                                                                                                (x8687
                                                                                                                 (real?/c
                                                                                                                  j7537
                                                                                                                  k7538
                                                                                                                  g7534))
                                                                                                                (x8686
                                                                                                                 (real?/c
                                                                                                                  j7537
                                                                                                                  k7538
                                                                                                                  g7535))
                                                                                                                (x8685
                                                                                                                 (image?
                                                                                                                  j7537
                                                                                                                  k7538
                                                                                                                  g7536)))
                                                                                                         (f7539
                                                                                                          x8688
                                                                                                          x8687
                                                                                                          x8686
                                                                                                          x8685))))
                                                                                               (image?
                                                                                                j7537
                                                                                                k7538
                                                                                                x8684))))
                                                                                     g8683))))
                                                                         g8682))
                                                                     xj7531
                                                                     xk7532
                                                                     place-image)))
                                                            g8681)))
                                                       (x8677 (input))
                                                       (x8676 (input))
                                                       (x8675 (input))
                                                       (x8674 (input)))
                                                (x8678
                                                 x8677
                                                 x8676
                                                 x8675
                                                 x8674)))
                                             (g8645
                                              (letrec ((x8692
                                                        (letrec ((xj7540
                                                                  (letrec ((x8693
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8693)))
                                                                 (xk7541
                                                                  (letrec ((x8694
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8694))))
                                                          (letrec ((g8695
                                                                    ((lambda (j7545
                                                                              k7546
                                                                              f7547)
                                                                       (letrec ((g8696
                                                                                 (lambda (g7542
                                                                                          g7543
                                                                                          g7544)
                                                                                   (letrec ((g8697
                                                                                             (letrec ((x8698
                                                                                                       (letrec ((x8701
                                                                                                                 (real?/c
                                                                                                                  j7545
                                                                                                                  k7546
                                                                                                                  g7542))
                                                                                                                (x8700
                                                                                                                 (string?/c
                                                                                                                  j7545
                                                                                                                  k7546
                                                                                                                  g7543))
                                                                                                                (x8699
                                                                                                                 (string?/c
                                                                                                                  j7545
                                                                                                                  k7546
                                                                                                                  g7544)))
                                                                                                         (f7547
                                                                                                          x8701
                                                                                                          x8700
                                                                                                          x8699))))
                                                                                               (image?
                                                                                                j7545
                                                                                                k7546
                                                                                                x8698))))
                                                                                     g8697))))
                                                                         g8696))
                                                                     xj7540
                                                                     xk7541
                                                                     circle)))
                                                            g8695)))
                                                       (x8691 (input))
                                                       (x8690 (input))
                                                       (x8689 (input)))
                                                (x8692 x8691 x8690 x8689)))
                                             (g8646
                                              (letrec ((x8705
                                                        (letrec ((xj7548
                                                                  (letrec ((x8706
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8706)))
                                                                 (xk7549
                                                                  (letrec ((x8707
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8707))))
                                                          (letrec ((g8708
                                                                    ((lambda (j7553
                                                                              k7554
                                                                              f7555)
                                                                       (letrec ((g8709
                                                                                 (lambda (g7550
                                                                                          g7551
                                                                                          g7552)
                                                                                   (letrec ((g8710
                                                                                             (letrec ((x8711
                                                                                                       (letrec ((x8714
                                                                                                                 (player/c
                                                                                                                  j7553
                                                                                                                  k7554
                                                                                                                  g7550))
                                                                                                                (x8713
                                                                                                                 (posn/c
                                                                                                                  j7553
                                                                                                                  k7554
                                                                                                                  g7551))
                                                                                                                (x8712
                                                                                                                 (horde/c
                                                                                                                  j7553
                                                                                                                  k7554
                                                                                                                  g7552)))
                                                                                                         (f7555
                                                                                                          x8714
                                                                                                          x8713
                                                                                                          x8712))))
                                                                                               (world/c
                                                                                                j7553
                                                                                                k7554
                                                                                                x8711))))
                                                                                     g8710))))
                                                                         g8709))
                                                                     xj7548
                                                                     xk7549
                                                                     new-world)))
                                                            g8708)))
                                                       (x8704 (input))
                                                       (x8703 (input))
                                                       (x8702 (input)))
                                                (x8705 x8704 x8703 x8702)))
                                             (g8647
                                              (letrec ((x8716
                                                        (letrec ((xj7556
                                                                  (letrec ((x8717
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8717)))
                                                                 (xk7557
                                                                  (letrec ((x8718
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8718))))
                                                          (letrec ((g8719
                                                                    ((lambda (j7559
                                                                              k7560
                                                                              f7561)
                                                                       (letrec ((g8720
                                                                                 (lambda (g7558)
                                                                                   (letrec ((g8721
                                                                                             (letrec ((x8722
                                                                                                       (letrec ((x8723
                                                                                                                 (posn/c
                                                                                                                  j7559
                                                                                                                  k7560
                                                                                                                  g7558)))
                                                                                                         (f7561
                                                                                                          x8723))))
                                                                                               (player/c
                                                                                                j7559
                                                                                                k7560
                                                                                                x8722))))
                                                                                     g8721))))
                                                                         g8720))
                                                                     xj7556
                                                                     xk7557
                                                                     new-player)))
                                                            g8719)))
                                                       (x8715 (input)))
                                                (x8716 x8715)))
                                             (g8648
                                              (letrec ((x8726
                                                        (letrec ((xj7562
                                                                  (letrec ((x8727
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8727)))
                                                                 (xk7563
                                                                  (letrec ((x8728
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8728))))
                                                          (letrec ((g8729
                                                                    ((lambda (j7566
                                                                              k7567
                                                                              f7568)
                                                                       (letrec ((g8730
                                                                                 (lambda (g7564
                                                                                          g7565)
                                                                                   (letrec ((g8731
                                                                                             (letrec ((x8732
                                                                                                       (letrec ((x8734
                                                                                                                 (zombies/c
                                                                                                                  j7566
                                                                                                                  k7567
                                                                                                                  g7564))
                                                                                                                (x8733
                                                                                                                 (zombies/c
                                                                                                                  j7566
                                                                                                                  k7567
                                                                                                                  g7565)))
                                                                                                         (f7568
                                                                                                          x8734
                                                                                                          x8733))))
                                                                                               (horde/c
                                                                                                j7566
                                                                                                k7567
                                                                                                x8732))))
                                                                                     g8731))))
                                                                         g8730))
                                                                     xj7562
                                                                     xk7563
                                                                     new-horde)))
                                                            g8729)))
                                                       (x8725 (input))
                                                       (x8724 (input)))
                                                (x8726 x8725 x8724)))
                                             (g8649
                                              (letrec ((x8737
                                                        (letrec ((xj7569
                                                                  (letrec ((x8738
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8738)))
                                                                 (xk7570
                                                                  (letrec ((x8739
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8739))))
                                                          (letrec ((g8740
                                                                    ((lambda (j7573
                                                                              k7574
                                                                              f7575)
                                                                       (letrec ((g8741
                                                                                 (lambda (g7571
                                                                                          g7572)
                                                                                   (letrec ((g8742
                                                                                             (letrec ((x8743
                                                                                                       (letrec ((x8745
                                                                                                                 (zombie/c
                                                                                                                  j7573
                                                                                                                  k7574
                                                                                                                  g7571))
                                                                                                                (x8744
                                                                                                                 (zombies/c
                                                                                                                  j7573
                                                                                                                  k7574
                                                                                                                  g7572)))
                                                                                                         (f7575
                                                                                                          x8745
                                                                                                          x8744))))
                                                                                               (zombies/c
                                                                                                j7573
                                                                                                k7574
                                                                                                x8743))))
                                                                                     g8742))))
                                                                         g8741))
                                                                     xj7569
                                                                     xk7570
                                                                     new-cons-zombies)))
                                                            g8740)))
                                                       (x8736 (input))
                                                       (x8735 (input)))
                                                (x8737 x8736 x8735)))
                                             (g8650
                                              (letrec ((xj7576
                                                        (letrec ((x8746 (loc)))
                                                          (cons
                                                           'module
                                                           x8746)))
                                                       (xk7577
                                                        (letrec ((x8747 (loc)))
                                                          (cons
                                                           'importer
                                                           x8747))))
                                                (letrec ((g8748
                                                          ((lambda (j7578
                                                                    k7579
                                                                    f7580)
                                                             (letrec ((g8749
                                                                       (lambda ()
                                                                         (letrec ((g8750
                                                                                   (letrec ((x8751
                                                                                             (f7580)))
                                                                                     (zombies/c
                                                                                      j7578
                                                                                      k7579
                                                                                      x8751))))
                                                                           g8750))))
                                                               g8749))
                                                           xj7576
                                                           xk7577
                                                           new-mt-zombies)))
                                                  g8748)))
                                             (g8651
                                              (letrec ((x8753
                                                        (letrec ((xj7581
                                                                  (letrec ((x8754
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8754)))
                                                                 (xk7582
                                                                  (letrec ((x8755
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8755))))
                                                          (letrec ((g8756
                                                                    ((lambda (j7584
                                                                              k7585
                                                                              f7586)
                                                                       (letrec ((g8757
                                                                                 (lambda (g7583)
                                                                                   (letrec ((g8758
                                                                                             (letrec ((x8759
                                                                                                       (letrec ((x8760
                                                                                                                 (posn/c
                                                                                                                  j7584
                                                                                                                  k7585
                                                                                                                  g7583)))
                                                                                                         (f7586
                                                                                                          x8760))))
                                                                                               (zombie/c
                                                                                                j7584
                                                                                                k7585
                                                                                                x8759))))
                                                                                     g8758))))
                                                                         g8757))
                                                                     xj7581
                                                                     xk7582
                                                                     new-zombie)))
                                                            g8756)))
                                                       (x8752 (input)))
                                                (x8753 x8752)))
                                             (g8652
                                              (letrec ((x8763
                                                        (letrec ((xj7587
                                                                  (letrec ((x8764
                                                                            (loc)))
                                                                    (cons
                                                                     'module
                                                                     x8764)))
                                                                 (xk7588
                                                                  (letrec ((x8765
                                                                            (loc)))
                                                                    (cons
                                                                     'importer
                                                                     x8765))))
                                                          (letrec ((g8766
                                                                    ((lambda (j7591
                                                                              k7592
                                                                              f7593)
                                                                       (letrec ((g8767
                                                                                 (lambda (g7589
                                                                                          g7590)
                                                                                   (letrec ((g8768
                                                                                             (letrec ((x8769
                                                                                                       (letrec ((x8771
                                                                                                                 (real?/c
                                                                                                                  j7591
                                                                                                                  k7592
                                                                                                                  g7589))
                                                                                                                (x8770
                                                                                                                 (real?/c
                                                                                                                  j7591
                                                                                                                  k7592
                                                                                                                  g7590)))
                                                                                                         (f7593
                                                                                                          x8771
                                                                                                          x8770))))
                                                                                               (posn/c
                                                                                                j7591
                                                                                                k7592
                                                                                                x8769))))
                                                                                     g8768))))
                                                                         g8767))
                                                                     xj7587
                                                                     xk7588
                                                                     new-posn)))
                                                            g8766)))
                                                       (x8762 (input))
                                                       (x8761 (input)))
                                                (x8763 x8762 x8761)))
                                             (g8653
                                              (letrec ((xj7594
                                                        (letrec ((x8772 (loc)))
                                                          (cons
                                                           'module
                                                           x8772)))
                                                       (xk7595
                                                        (letrec ((x8773 (loc)))
                                                          (cons
                                                           'importer
                                                           x8773))))
                                                (letrec ((g8774
                                                          (world/c
                                                           xj7594
                                                           xk7595
                                                           w0)))
                                                  g8774))))
                                      g8653))))
                          g7610))))
              g7608)))
    g7607))
