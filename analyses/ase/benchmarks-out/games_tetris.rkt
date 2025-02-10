(letrec ((any? (lambda (v) (letrec ((g7594 #t)) g7594)))
         (meta (lambda (v) (letrec ((g7595 v)) g7595)))
         (member
          (lambda (v lst)
            (letrec ((g7596
                      (letrec ((g7597
                                (letrec ((x-e7598 lst))
                                  (match
                                   x-e7598
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7599 (eq? v v1)))
                                       (if x-cnd7599 #t (member v vs)))))))))
                        g7597)))
              g7596)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7600 (lambda (v) (letrec ((g7601 v)) g7601)))) g7600)))
         (nonzero?
          (lambda (v)
            (letrec ((g7602 (letrec ((x7603 (= v 0))) (not x7603)))) g7602))))
  (letrec ((g7604
            (letrec ((g7605
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7606 '())
                                 (g7607
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7608
                                                        (lambda (k j lst)
                                                          (letrec ((g7609
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7610
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7610))
                                                                     lst)))
                                                            g7609))))
                                                g7608)))
                                           (real?/c
                                            (lambda (g7260 g7261 g7262)
                                              (letrec ((g7611
                                                        (letrec ((x-cnd7612
                                                                  (real?
                                                                   g7262)))
                                                          (if x-cnd7612
                                                            g7262
                                                            (blame
                                                             g7260
                                                             'real?)))))
                                                g7611)))
                                           (boolean?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7613
                                                        (letrec ((x-cnd7614
                                                                  (boolean?
                                                                   g7265)))
                                                          (if x-cnd7614
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'boolean?)))))
                                                g7613)))
                                           (number?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7615
                                                        (letrec ((x-cnd7616
                                                                  (number?
                                                                   g7268)))
                                                          (if x-cnd7616
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'number?)))))
                                                g7615)))
                                           (any/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7617
                                                        (letrec ((x-cnd7618
                                                                  ((lambda (v)
                                                                     (letrec ((g7619
                                                                               #t))
                                                                       g7619))
                                                                   g7271)))
                                                          (if x-cnd7618
                                                            g7271
                                                            (blame
                                                             g7269
                                                             '(lambda (v)
                                                                #t))))))
                                                g7617)))
                                           (any?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7620
                                                        (letrec ((x-cnd7621
                                                                  ((lambda (v)
                                                                     (letrec ((g7622
                                                                               #t))
                                                                       g7622))
                                                                   g7274)))
                                                          (if x-cnd7621
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7620)))
                                           (cons?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7623
                                                        (letrec ((x-cnd7624
                                                                  (pair?
                                                                   g7277)))
                                                          (if x-cnd7624
                                                            g7277
                                                            (blame
                                                             g7275
                                                             'pair?)))))
                                                g7623)))
                                           (pair?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7625
                                                        (letrec ((x-cnd7626
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7626
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7625)))
                                           (integer?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7627
                                                        (letrec ((x-cnd7628
                                                                  (integer?
                                                                   g7283)))
                                                          (if x-cnd7628
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'integer?)))))
                                                g7627)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7629
                                                        (lambda (k j v)
                                                          (letrec ((g7630
                                                                    (letrec ((x-cnd7631
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7631
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7630))))
                                                g7629)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7632
                                                        (lambda (k j v)
                                                          (letrec ((g7633
                                                                    (letrec ((x-cnd7634
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7634
                                                                        '()
                                                                        (letrec ((x7638
                                                                                  (letrec ((x7639
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7639)))
                                                                                 (x7635
                                                                                  (letrec ((x7637
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7636
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7637
                                                                                     k
                                                                                     j
                                                                                     x7636))))
                                                                          (orig-cons
                                                                           x7638
                                                                           x7635))))))
                                                            g7633))))
                                                g7632)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7640 #t)) g7640)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (= v 0)))
                                                          (not x7642))))
                                                g7641)))
                                           (nonzero?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7643
                                                        (letrec ((x-cnd7644
                                                                  ((lambda (v)
                                                                     (letrec ((g7645
                                                                               (letrec ((x7646
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7646))))
                                                                       g7645))
                                                                   g7286)))
                                                          (if x-cnd7644
                                                            g7286
                                                            (blame
                                                             g7284
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7643)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7647 v)) g7647)))
                                           (+
                                            ((lambda (j7289 k7290 f7291)
                                               (letrec ((g7649
                                                         (lambda (g7287 g7288)
                                                           (letrec ((g7650
                                                                     (letrec ((x7651
                                                                               (letrec ((x7653
                                                                                         (number?/c
                                                                                          j7289
                                                                                          k7290
                                                                                          g7287))
                                                                                        (x7652
                                                                                         (number?/c
                                                                                          j7289
                                                                                          k7290
                                                                                          g7288)))
                                                                                 (f7291
                                                                                  x7653
                                                                                  x7652))))
                                                                       (number?/c
                                                                        j7289
                                                                        k7290
                                                                        x7651))))
                                                             g7650))))
                                                 g7649))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7648 (orig-+ a b)))
                                                 g7648))))
                                           (-
                                            ((lambda (j7294 k7295 f7296)
                                               (letrec ((g7655
                                                         (lambda (g7292 g7293)
                                                           (letrec ((g7656
                                                                     (letrec ((x7657
                                                                               (letrec ((x7659
                                                                                         (number?/c
                                                                                          j7294
                                                                                          k7295
                                                                                          g7292))
                                                                                        (x7658
                                                                                         (number?/c
                                                                                          j7294
                                                                                          k7295
                                                                                          g7293)))
                                                                                 (f7296
                                                                                  x7659
                                                                                  x7658))))
                                                                       (number?/c
                                                                        j7294
                                                                        k7295
                                                                        x7657))))
                                                             g7656))))
                                                 g7655))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7654 (orig-- a b)))
                                                 g7654))))
                                           (*
                                            ((lambda (j7299 k7300 f7301)
                                               (letrec ((g7661
                                                         (lambda (g7297 g7298)
                                                           (letrec ((g7662
                                                                     (letrec ((x7663
                                                                               (letrec ((x7665
                                                                                         (number?/c
                                                                                          j7299
                                                                                          k7300
                                                                                          g7297))
                                                                                        (x7664
                                                                                         (number?/c
                                                                                          j7299
                                                                                          k7300
                                                                                          g7298)))
                                                                                 (f7301
                                                                                  x7665
                                                                                  x7664))))
                                                                       (number?/c
                                                                        j7299
                                                                        k7300
                                                                        x7663))))
                                                             g7662))))
                                                 g7661))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7660 (orig-* a b)))
                                                 g7660))))
                                           (/
                                            ((lambda (j7304 k7305 f7306)
                                               (letrec ((g7667
                                                         (lambda (g7302 g7303)
                                                           (letrec ((g7668
                                                                     (letrec ((x7669
                                                                               (letrec ((x7671
                                                                                         (number?/c
                                                                                          j7304
                                                                                          k7305
                                                                                          g7302))
                                                                                        (x7670
                                                                                         (number?/c
                                                                                          j7304
                                                                                          k7305
                                                                                          g7303)))
                                                                                 (f7306
                                                                                  x7671
                                                                                  x7670))))
                                                                       (number?/c
                                                                        j7304
                                                                        k7305
                                                                        x7669))))
                                                             g7668))))
                                                 g7667))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7666 (orig-/ a b)))
                                                 g7666))))
                                           (car
                                            ((lambda (j7308 k7309 f7310)
                                               (letrec ((g7673
                                                         (lambda (g7307)
                                                           (letrec ((g7674
                                                                     (letrec ((x7675
                                                                               (letrec ((x7676
                                                                                         (pair?/c
                                                                                          j7308
                                                                                          k7309
                                                                                          g7307)))
                                                                                 (f7310
                                                                                  x7676))))
                                                                       (any/c
                                                                        j7308
                                                                        k7309
                                                                        x7675))))
                                                             g7674))))
                                                 g7673))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7672 (orig-car p)))
                                                 g7672))))
                                           (cdr
                                            ((lambda (j7312 k7313 f7314)
                                               (letrec ((g7678
                                                         (lambda (g7311)
                                                           (letrec ((g7679
                                                                     (letrec ((x7680
                                                                               (letrec ((x7681
                                                                                         (pair?/c
                                                                                          j7312
                                                                                          k7313
                                                                                          g7311)))
                                                                                 (f7314
                                                                                  x7681))))
                                                                       (any/c
                                                                        j7312
                                                                        k7313
                                                                        x7680))))
                                                             g7679))))
                                                 g7678))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7677 (orig-cdr p)))
                                                 g7677))))
                                           (cons
                                            ((lambda (j7317 k7318 f7319)
                                               (letrec ((g7683
                                                         (lambda (g7315 g7316)
                                                           (letrec ((g7684
                                                                     (letrec ((x7685
                                                                               (letrec ((x7687
                                                                                         (any/c
                                                                                          j7317
                                                                                          k7318
                                                                                          g7315))
                                                                                        (x7686
                                                                                         (any/c
                                                                                          j7317
                                                                                          k7318
                                                                                          g7316)))
                                                                                 (f7319
                                                                                  x7687
                                                                                  x7686))))
                                                                       (pair?/c
                                                                        j7317
                                                                        k7318
                                                                        x7685))))
                                                             g7684))))
                                                 g7683))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7682
                                                         (orig-cons a b)))
                                                 g7682))))
                                           (vector-ref
                                            ((lambda (j7321 k7322 f7323)
                                               (letrec ((g7689
                                                         (lambda (g7320)
                                                           (letrec ((g7690
                                                                     (letrec ((x7691
                                                                               (letrec ((x7692
                                                                                         (vector?/c
                                                                                          j7321
                                                                                          k7322
                                                                                          g7320)))
                                                                                 (f7323
                                                                                  x7692))))
                                                                       (integer?/c
                                                                        j7321
                                                                        k7322
                                                                        x7691))))
                                                             g7690))))
                                                 g7689))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7688
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7688))))
                                           (vector-set!
                                            ((lambda (j7326 k7327 f7328)
                                               (letrec ((g7694
                                                         (lambda (g7324 g7325)
                                                           (letrec ((g7695
                                                                     (letrec ((x7696
                                                                               (letrec ((x7698
                                                                                         (vector?/c
                                                                                          j7326
                                                                                          k7327
                                                                                          g7324))
                                                                                        (x7697
                                                                                         (integer?/c
                                                                                          j7326
                                                                                          k7327
                                                                                          g7325)))
                                                                                 (f7328
                                                                                  x7698
                                                                                  x7697))))
                                                                       (any/c
                                                                        j7326
                                                                        k7327
                                                                        x7696))))
                                                             g7695))))
                                                 g7694))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7693
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7693))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7699
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7699)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7700
                                                        (letrec ((x7701
                                                                  (letrec ((x7702
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7702))))
                                                          (cdr x7701))))
                                                g7700)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7703
                                                        (letrec ((x7706
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7706)))
                                                       (g7704
                                                        (letrec ((x7707
                                                                  (list? l)))
                                                          (assert x7707)))
                                                       (g7705
                                                        (letrec ((x-cnd7708
                                                                  (null? l)))
                                                          (if x-cnd7708
                                                            '()
                                                            (letrec ((x7711
                                                                      (letrec ((x7712
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7712)))
                                                                     (x7709
                                                                      (letrec ((x7710
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7710))))
                                                              (cons
                                                               x7711
                                                               x7709))))))
                                                g7705)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7713
                                                        (letrec ((x7714
                                                                  (car x)))
                                                          (cdr x7714))))
                                                g7713)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7715
                                                        (letrec ((x7716
                                                                  (letrec ((x7717
                                                                            (letrec ((x7718
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7718))))
                                                                    (cdr
                                                                     x7717))))
                                                          (car x7716))))
                                                g7715)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x7720
                                                                  (letrec ((x7721
                                                                            (letrec ((x7722
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7722))))
                                                                    (car
                                                                     x7721))))
                                                          (cdr x7720))))
                                                g7719)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7723
                                                        (letrec ((x7726
                                                                  (string?
                                                                   filename)))
                                                          (assert x7726)))
                                                       (g7724
                                                        (letrec ((x7727
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7727)))
                                                       (g7725
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7728
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7729 res))
                                                            g7729))))
                                                g7725)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7730
                                                        (letrec ((x7731
                                                                  (letrec ((x7732
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7732))))
                                                          (car x7731))))
                                                g7730)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7733
                                                        (letrec ((x7734
                                                                  (letrec ((x7735
                                                                            (letrec ((x7736
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7736))))
                                                                    (car
                                                                     x7735))))
                                                          (cdr x7734))))
                                                g7733)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7737
                                                        (letrec ((x7739
                                                                  (list? l)))
                                                          (assert x7739)))
                                                       (g7738
                                                        (letrec ((x-cnd7740
                                                                  (null? l)))
                                                          (if x-cnd7740
                                                            #f
                                                            (letrec ((x-cnd7741
                                                                      (letrec ((x7742
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7742
                                                                         k))))
                                                              (if x-cnd7741
                                                                (car l)
                                                                (letrec ((x7743
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7743))))))))
                                                g7738)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7745))))
                                                g7744)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7746
                                                        (letrec ((x7748
                                                                  (list? l)))
                                                          (assert x7748)))
                                                       (g7747
                                                        (letrec ((x-cnd7749
                                                                  (null? l)))
                                                          (if x-cnd7749
                                                            ""
                                                            (letrec ((x7752
                                                                      (letrec ((x7753
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7753)))
                                                                     (x7750
                                                                      (letrec ((x7751
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7751))))
                                                              (string-append
                                                               x7752
                                                               x7750))))))
                                                g7747)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7754
                                                        (letrec ((x7757
                                                                  (char? c1)))
                                                          (assert x7757)))
                                                       (g7755
                                                        (letrec ((x7758
                                                                  (char? c2)))
                                                          (assert x7758)))
                                                       (g7756
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7759
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7759))))
                                                g7756)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (letrec ((x7762
                                                                            (letrec ((x7763
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7763))))
                                                                    (cdr
                                                                     x7762))))
                                                          (cdr x7761))))
                                                g7760)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7764
                                                        (letrec ((x7767
                                                                  (list? l)))
                                                          (assert x7767)))
                                                       (g7765
                                                        (letrec ((x7768
                                                                  (number?)))
                                                          (assert x7768)))
                                                       (g7766
                                                        (letrec ((x-cnd7769
                                                                  (zero? k)))
                                                          (if x-cnd7769
                                                            x
                                                            (letrec ((x7771
                                                                      (cdr x))
                                                                     (x7770
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7771
                                                               x7770))))))
                                                g7766)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7772 '())) g7772)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7773
                                                        (letrec ((x-cnd7774
                                                                  (letrec ((x7775
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7775))))
                                                          (if x-cnd7774
                                                            (letrec ((x7776
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7776))
                                                            #f))))
                                                g7773)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7777
                                                        (letrec ((x7779
                                                                  (number? x)))
                                                          (assert x7779)))
                                                       (g7778
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7780
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7781
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7781)))))
                                                            g7780))))
                                                g7778)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7782
                                                        (letrec ((val7244
                                                                  (letrec ((x7783
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7783
                                                                     9))))
                                                          (letrec ((g7784
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7785
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7785
                                                                                   10))))
                                                                        (letrec ((g7786
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7787
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7787
                                                                                       32)))))
                                                                          g7786)))))
                                                            g7784))))
                                                g7782)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (letrec ((x7790
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7790))))
                                                          (cdr x7789))))
                                                g7788)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7791
                                                        (letrec ((x7793
                                                                  (number? x)))
                                                          (assert x7793)))
                                                       (g7792 (> x 0)))
                                                g7792)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7794 #f)) g7794)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7795
                                                        (letrec ((x7796
                                                                  (cdr x)))
                                                          (cdr x7796))))
                                                g7795)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7799
                                                                  (number? x)))
                                                          (assert x7799)))
                                                       (g7798
                                                        (letrec ((x-cnd7800
                                                                  (< x 0)))
                                                          (if x-cnd7800
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7798)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7801
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7802
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7803
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7803
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7804
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7805
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7805
                                                                                                  (letrec ((x-cnd7806
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7806
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7807
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7808
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7808
                                                                                                                (letrec ((x-cnd7809
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7809
                                                                                                                    (letrec ((x-cnd7810
                                                                                                                              (letrec ((x7812
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7811
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7812
                                                                                                                                 x7811))))
                                                                                                                      (if x-cnd7810
                                                                                                                        (letrec ((x7814
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7813
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7814
                                                                                                                           x7813))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7815
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7816
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7816
                                                                                                                    (letrec ((x-cnd7817
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7817
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7818
                                                                                                                                    (letrec ((x-cnd7819
                                                                                                                                              (letrec ((x7820
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7820
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7819
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7821
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7822
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7823
                                                                                                                                                                                      (letrec ((x7825
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7824
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7825
                                                                                                                                                                                         x7824))))
                                                                                                                                                                              (if x-cnd7823
                                                                                                                                                                                (letrec ((x7826
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7826))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7822))))
                                                                                                                                                      g7821))))
                                                                                                                                          (letrec ((g7827
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7827))
                                                                                                                                        #f))))
                                                                                                                            g7818))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7815)))))
                                                                                        g7807)))))
                                                                          g7804)))))
                                                            g7802))))
                                                g7801)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7828
                                                        (letrec ((x7829
                                                                  (letrec ((x7830
                                                                            (letrec ((x7831
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7831))))
                                                                    (car
                                                                     x7830))))
                                                          (cdr x7829))))
                                                g7828)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7832
                                                        (letrec ((x7833
                                                                  (letrec ((x7834
                                                                            (letrec ((x7835
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7835))))
                                                                    (car
                                                                     x7834))))
                                                          (car x7833))))
                                                g7832)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7836 (eq? x y)))
                                                g7836)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7837
                                                        (letrec ((x7839
                                                                  (number? x)))
                                                          (assert x7839)))
                                                       (g7838
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7840
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7841
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7841)))))
                                                            g7840))))
                                                g7838)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7842
                                                        (letrec ((x7845
                                                                  (string?
                                                                   filename)))
                                                          (assert x7845)))
                                                       (g7843
                                                        (letrec ((x7846
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7846)))
                                                       (g7844
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7847
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7848 res))
                                                            g7848))))
                                                g7844)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7849 (cons x '())))
                                                g7849)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7850
                                                        (letrec ((x7853
                                                                  (char? c1)))
                                                          (assert x7853)))
                                                       (g7851
                                                        (letrec ((x7854
                                                                  (char? c2)))
                                                          (assert x7854)))
                                                       (g7852
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7855
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7855))))
                                                g7852)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7856
                                                        (letrec ((x7857
                                                                  (letrec ((x7858
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7858))))
                                                          (cdr x7857))))
                                                g7856)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7859
                                                        (letrec ((x7860
                                                                  (letrec ((x7861
                                                                            (letrec ((x7862
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7862))))
                                                                    (car
                                                                     x7861))))
                                                          (cdr x7860))))
                                                g7859)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7863
                                                        (letrec ((x7864
                                                                  (letrec ((x7865
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7865))))
                                                          (car x7864))))
                                                g7863)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7866
                                                        (letrec ((x7867
                                                                  (letrec ((x7868
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7868))))
                                                          (car x7867))))
                                                g7866)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7869
                                                        (letrec ((x7872
                                                                  (char? c1)))
                                                          (assert x7872)))
                                                       (g7870
                                                        (letrec ((x7873
                                                                  (char? c2)))
                                                          (assert x7873)))
                                                       (g7871
                                                        (letrec ((x7874
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7874))))
                                                g7871)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7875
                                                        (letrec ((x7876
                                                                  (letrec ((x7877
                                                                            (letrec ((x7878
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7878))))
                                                                    (car
                                                                     x7877))))
                                                          (car x7876))))
                                                g7875)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7879
                                                        (letrec ((x7881
                                                                  (number? x)))
                                                          (assert x7881)))
                                                       (g7880 (< x 0)))
                                                g7880)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7882 (memq e l)))
                                                g7882)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7884
                                                                  (letrec ((x7885
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7885))))
                                                          (car x7884))))
                                                g7883)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7886 '())) g7886)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7887
                                                        (letrec ((x7889
                                                                  (list? l)))
                                                          (assert x7889)))
                                                       (g7888
                                                        (letrec ((x-cnd7890
                                                                  (null? l)))
                                                          (if x-cnd7890
                                                            '()
                                                            (letrec ((x7893
                                                                      (letrec ((x7894
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7894)))
                                                                     (x7891
                                                                      (letrec ((x7892
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7892))))
                                                              (append
                                                               x7893
                                                               x7891))))))
                                                g7888)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7895
                                                        (letrec ((x7896
                                                                  (letrec ((x7897
                                                                            (letrec ((x7898
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7898))))
                                                                    (car
                                                                     x7897))))
                                                          (car x7896))))
                                                g7895)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7899
                                                        (letrec ((x7900
                                                                  (letrec ((x7901
                                                                            (letrec ((x7902
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7902))))
                                                                    (cdr
                                                                     x7901))))
                                                          (cdr x7900))))
                                                g7899)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7903
                                                        (letrec ((x7905
                                                                  (number? x)))
                                                          (assert x7905)))
                                                       (g7904
                                                        (letrec ((x7906
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7906))))
                                                g7904)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7907
                                                        (letrec ((x7908
                                                                  (letrec ((x7909
                                                                            (letrec ((x7910
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7910))))
                                                                    (car
                                                                     x7909))))
                                                          (car x7908))))
                                                g7907)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7911
                                                        (letrec ((x7914
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7914)))
                                                       (g7912
                                                        (letrec ((x7915
                                                                  (list?
                                                                   args)))
                                                          (assert x7915)))
                                                       (g7913
                                                        (letrec ((x-cnd7916
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7916
                                                            (letrec ((g7917
                                                                      (proc)))
                                                              g7917)
                                                            (letrec ((x-cnd7918
                                                                      (letrec ((x7919
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7919))))
                                                              (if x-cnd7918
                                                                (letrec ((g7920
                                                                          (letrec ((x7921
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7921))))
                                                                  g7920)
                                                                (letrec ((x-cnd7922
                                                                          (letrec ((x7923
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7923))))
                                                                  (if x-cnd7922
                                                                    (letrec ((g7924
                                                                              (letrec ((x7926
                                                                                        (car
                                                                                         args))
                                                                                       (x7925
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7926
                                                                                 x7925))))
                                                                      g7924)
                                                                    (letrec ((x-cnd7927
                                                                              (letrec ((x7928
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7928))))
                                                                      (if x-cnd7927
                                                                        (letrec ((g7929
                                                                                  (letrec ((x7932
                                                                                            (car
                                                                                             args))
                                                                                           (x7931
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7930
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7932
                                                                                     x7931
                                                                                     x7930))))
                                                                          g7929)
                                                                        (letrec ((x-cnd7933
                                                                                  (letrec ((x7934
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7934))))
                                                                          (if x-cnd7933
                                                                            (letrec ((g7935
                                                                                      (letrec ((x7939
                                                                                                (car
                                                                                                 args))
                                                                                               (x7938
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7937
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7936
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7939
                                                                                         x7938
                                                                                         x7937
                                                                                         x7936))))
                                                                              g7935)
                                                                            (letrec ((x-cnd7940
                                                                                      (letrec ((x7941
                                                                                                (letrec ((x7942
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7942))))
                                                                                        (null?
                                                                                         x7941))))
                                                                              (if x-cnd7940
                                                                                (letrec ((g7943
                                                                                          (letrec ((x7949
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7948
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7947
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7946
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7944
                                                                                                    (letrec ((x7945
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7945))))
                                                                                            (proc
                                                                                             x7949
                                                                                             x7948
                                                                                             x7947
                                                                                             x7946
                                                                                             x7944))))
                                                                                  g7943)
                                                                                (letrec ((x-cnd7950
                                                                                          (letrec ((x7951
                                                                                                    (letrec ((x7952
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7952))))
                                                                                            (null?
                                                                                             x7951))))
                                                                                  (if x-cnd7950
                                                                                    (letrec ((g7953
                                                                                              (letrec ((x7961
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7960
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7959
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7958
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7956
                                                                                                        (letrec ((x7957
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7957)))
                                                                                                       (x7954
                                                                                                        (letrec ((x7955
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7955))))
                                                                                                (proc
                                                                                                 x7961
                                                                                                 x7960
                                                                                                 x7959
                                                                                                 x7958
                                                                                                 x7956
                                                                                                 x7954))))
                                                                                      g7953)
                                                                                    (letrec ((x-cnd7962
                                                                                              (letrec ((x7963
                                                                                                        (letrec ((x7964
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7964))))
                                                                                                (null?
                                                                                                 x7963))))
                                                                                      (if x-cnd7962
                                                                                        (letrec ((g7965
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
                                                                                                               x7969)))
                                                                                                           (x7966
                                                                                                            (letrec ((x7967
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7967))))
                                                                                                    (proc
                                                                                                     x7975
                                                                                                     x7974
                                                                                                     x7973
                                                                                                     x7972
                                                                                                     x7970
                                                                                                     x7968
                                                                                                     x7966))))
                                                                                          g7965)
                                                                                        (letrec ((g7976
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7976)))))))))))))))))))
                                                g7913)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7977
                                                        (letrec ((x7979
                                                                  (list? l)))
                                                          (assert x7979)))
                                                       (g7978
                                                        (letrec ((x-cnd7980
                                                                  (null? l)))
                                                          (if x-cnd7980
                                                            #f
                                                            (letrec ((x-cnd7981
                                                                      (letrec ((x7982
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7982
                                                                         e))))
                                                              (if x-cnd7981
                                                                l
                                                                (letrec ((x7983
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7983))))))))
                                                g7978)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7984
                                                        (letrec ((x7985
                                                                  (letrec ((x7986
                                                                            (letrec ((x7987
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7987))))
                                                                    (cdr
                                                                     x7986))))
                                                          (cdr x7985))))
                                                g7984)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7988
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (letrec ((x7991
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7991))))
                                                                    (cdr
                                                                     x7990))))
                                                          (car x7989))))
                                                g7988)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7992 (random 42)))
                                                g7992)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7993
                                                        (letrec ((x7995
                                                                  (number? x)))
                                                          (assert x7995)))
                                                       (g7994 (= x 0)))
                                                g7994)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7996
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7997
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7997))))
                                                g7996)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7998
                                                        (letrec ((x7999
                                                                  (cdr x)))
                                                          (car x7999))))
                                                g7998)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8000
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd8001
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8001
                                                                      (letrec ((x8002
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8002))
                                                                      #f))))
                                                          (letrec ((g8003
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g8003))))
                                                g8000)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8004
                                                        (letrec ((x8005
                                                                  (letrec ((x8006
                                                                            (letrec ((x8007
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8007))))
                                                                    (cdr
                                                                     x8006))))
                                                          (cdr x8005))))
                                                g8004)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8008
                                                        (letrec ((x-cnd8009
                                                                  (letrec ((x8010
                                                                            #\0))
                                                                    (char<=?
                                                                     x8010
                                                                     c))))
                                                          (if x-cnd8009
                                                            (letrec ((x8011
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8011))
                                                            #f))))
                                                g8008)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8012
                                                        (letrec ((x8014
                                                                  (list? l)))
                                                          (assert x8014)))
                                                       (g8013
                                                        (letrec ((x-cnd8015
                                                                  (null? l)))
                                                          (if x-cnd8015
                                                            #f
                                                            (letrec ((x-cnd8016
                                                                      (letrec ((x8017
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8017
                                                                         k))))
                                                              (if x-cnd8016
                                                                (car l)
                                                                (letrec ((x8018
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8018))))))))
                                                g8013)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8019 (if x #f #t)))
                                                g8019)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8020 (append l1 l2)))
                                                g8020)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8021
                                                        (letrec ((x8023
                                                                  (list? l)))
                                                          (assert x8023)))
                                                       (g8022
                                                        (letrec ((x-cnd8024
                                                                  (null? l)))
                                                          (if x-cnd8024
                                                            #f
                                                            (letrec ((x-cnd8025
                                                                      (letrec ((x8026
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8026
                                                                         e))))
                                                              (if x-cnd8025
                                                                l
                                                                (letrec ((x8027
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8027))))))))
                                                g8022)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8028
                                                        (letrec ((x8029
                                                                  (letrec ((x8030
                                                                            (letrec ((x8031
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8031))))
                                                                    (cdr
                                                                     x8030))))
                                                          (car x8029))))
                                                g8028)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8032
                                                        (letrec ((x8034
                                                                  (list? l)))
                                                          (assert x8034)))
                                                       (g8033
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8035
                                                                              (letrec ((x-cnd8036
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8036
                                                                                  0
                                                                                  (letrec ((x8037
                                                                                            (letrec ((x8038
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8038))))
                                                                                    (+
                                                                                     1
                                                                                     x8037))))))
                                                                      g8035))))
                                                          (letrec ((g8039
                                                                    (rec l)))
                                                            g8039))))
                                                g8033)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8040
                                                        (letrec ((x8043
                                                                  (char? c1)))
                                                          (assert x8043)))
                                                       (g8041
                                                        (letrec ((x8044
                                                                  (char? c2)))
                                                          (assert x8044)))
                                                       (g8042
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8045
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8045))))
                                                g8042)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8046
                                                        (letrec ((x8047
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8047))))
                                                g8046)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8048
                                                        (letrec ((x8049
                                                                  (letrec ((x8050
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8050))))
                                                          (cdr x8049))))
                                                g8048)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8051
                                                        (letrec ((x8053
                                                                  (list? l)))
                                                          (assert x8053)))
                                                       (g8052
                                                        (letrec ((x-cnd8054
                                                                  (null? l)))
                                                          (if x-cnd8054
                                                            #f
                                                            (letrec ((x-cnd8055
                                                                      (letrec ((x8056
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8056
                                                                         k))))
                                                              (if x-cnd8055
                                                                (car l)
                                                                (letrec ((x8057
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8057))))))))
                                                g8052)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8058
                                                        (letrec ((x8059
                                                                  (car x)))
                                                          (car x8059))))
                                                g8058)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8060
                                                        (letrec ((x8063
                                                                  (char? c1)))
                                                          (assert x8063)))
                                                       (g8061
                                                        (letrec ((x8064
                                                                  (char? c2)))
                                                          (assert x8064)))
                                                       (g8062
                                                        (letrec ((x8065
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8065))))
                                                g8062)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8066
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8067
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8067))))
                                                g8066)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8068
                                                        (letrec ((x8071
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8071)))
                                                       (g8069
                                                        (letrec ((x8072
                                                                  (list? l)))
                                                          (assert x8072)))
                                                       (g8070
                                                        (letrec ((x-cnd8073
                                                                  (null? l)))
                                                          (if x-cnd8073
                                                            #t
                                                            (letrec ((x-cnd8074
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8074
                                                                (letrec ((g8075
                                                                          (letrec ((x8077
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8077)))
                                                                         (g8076
                                                                          (letrec ((x8078
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8078))))
                                                                  g8076)
                                                                '()))))))
                                                g8070)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8079
                                                        (letrec ((x8081
                                                                  (number? x)))
                                                          (assert x8081)))
                                                       (g8080
                                                        (letrec ((x-cnd8082
                                                                  (< x 0)))
                                                          (if x-cnd8082
                                                            (- 0 x)
                                                            x))))
                                                g8080)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8083
                                                        (letrec ((x8086
                                                                  (char? c1)))
                                                          (assert x8086)))
                                                       (g8084
                                                        (letrec ((x8087
                                                                  (char? c2)))
                                                          (assert x8087)))
                                                       (g8085
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8088
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8088))))
                                                g8085)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8089
                                                        (letrec ((x8090
                                                                  (letrec ((x8091
                                                                            (letrec ((x8092
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8092))))
                                                                    (cdr
                                                                     x8091))))
                                                          (car x8090))))
                                                g8089)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8093 #f)) g8093)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8094
                                                        (letrec ((x8096
                                                                  (letrec ((x8097
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8097)))
                                                                 (x8095
                                                                  (gcd m n)))
                                                          (/ x8096 x8095))))
                                                g8094)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8098
                                                        (letrec ((x8100
                                                                  (number? x)))
                                                          (assert x8100)))
                                                       (g8099
                                                        (letrec ((x8101
                                                                  (<= x y)))
                                                          (not x8101))))
                                                g8099)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8102
                                                        (letrec ((x8106
                                                                  (list? l)))
                                                          (assert x8106)))
                                                       (g8103
                                                        (letrec ((x8107
                                                                  (number?
                                                                   index)))
                                                          (assert x8107)))
                                                       (g8104
                                                        (letrec ((x8108
                                                                  (letrec ((x8109
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8109))))
                                                          (assert x8108)))
                                                       (g8105
                                                        (letrec ((x-cnd8110
                                                                  (= index 0)))
                                                          (if x-cnd8110
                                                            (car l)
                                                            (letrec ((x8112
                                                                      (cdr l))
                                                                     (x8111
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8112
                                                               x8111))))))
                                                g8105)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8113
                                                        (letrec ((x-cnd8114
                                                                  (= b 0)))
                                                          (if x-cnd8114
                                                            a
                                                            (letrec ((x8115
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8115))))))
                                                g8113)))
                                           (block
                                            (lambda (x7572 y7573 color7574)
                                              (letrec ((g8116
                                                        (letrec ((x8117
                                                                  (letrec ((x8118
                                                                            (letrec ((x8119
                                                                                      (cons
                                                                                       color7574
                                                                                       '())))
                                                                              (cons
                                                                               y7573
                                                                               x8119))))
                                                                    (cons
                                                                     x7572
                                                                     x8118))))
                                                          (cons
                                                           'block
                                                           x8117))))
                                                g8116)))
                                           (block?
                                            (lambda (block7571)
                                              (letrec ((g8120
                                                        (letrec ((x8121
                                                                  (car
                                                                   block7571)))
                                                          (eq? x8121 'block))))
                                                g8120)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (cdr block)))
                                                          (car x8123))))
                                                g8122)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8124
                                                        (letrec ((x8125
                                                                  (letrec ((x8126
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x8126))))
                                                          (car x8125))))
                                                g8124)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8127
                                                        (letrec ((x8128
                                                                  (letrec ((x8129
                                                                            (letrec ((x8130
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8130))))
                                                                    (cdr
                                                                     x8129))))
                                                          (car x8128))))
                                                g8127)))
                                           (tetra
                                            (lambda (center7579 blocks7580)
                                              (letrec ((g8131
                                                        (letrec ((x8132
                                                                  (letrec ((x8133
                                                                            (cons
                                                                             blocks7580
                                                                             '())))
                                                                    (cons
                                                                     center7579
                                                                     x8133))))
                                                          (cons
                                                           'tetra
                                                           x8132))))
                                                g8131)))
                                           (tetra?
                                            (lambda (tetra7578)
                                              (letrec ((g8134
                                                        (letrec ((x8135
                                                                  (car
                                                                   tetra7578)))
                                                          (eq? x8135 'tetra))))
                                                g8134)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8136
                                                        (letrec ((x8137
                                                                  (cdr tetra)))
                                                          (car x8137))))
                                                g8136)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8138
                                                        (letrec ((x8139
                                                                  (letrec ((x8140
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x8140))))
                                                          (car x8139))))
                                                g8138)))
                                           (world
                                            (lambda (tetra7584 blocks7585)
                                              (letrec ((g8141
                                                        (letrec ((x8142
                                                                  (letrec ((x8143
                                                                            (cons
                                                                             blocks7585
                                                                             '())))
                                                                    (cons
                                                                     tetra7584
                                                                     x8143))))
                                                          (cons
                                                           'world
                                                           x8142))))
                                                g8141)))
                                           (world?
                                            (lambda (world7583)
                                              (letrec ((g8144
                                                        (letrec ((x8145
                                                                  (car
                                                                   world7583)))
                                                          (eq? x8145 'world))))
                                                g8144)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (cdr world)))
                                                          (car x8147))))
                                                g8146)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8148
                                                        (letrec ((x8149
                                                                  (letrec ((x8150
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8150))))
                                                          (car x8149))))
                                                g8148)))
                                           (posn
                                            (lambda (x7589 y7590)
                                              (letrec ((g8151
                                                        (letrec ((x8152
                                                                  (letrec ((x8153
                                                                            (cons
                                                                             y7590
                                                                             '())))
                                                                    (cons
                                                                     x7589
                                                                     x8153))))
                                                          (cons 'posn x8152))))
                                                g8151)))
                                           (posn?
                                            (lambda (posn7588)
                                              (letrec ((g8154
                                                        (letrec ((x8155
                                                                  (car
                                                                   posn7588)))
                                                          (eq? x8155 'posn))))
                                                g8154)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8156
                                                        (letrec ((x8157
                                                                  (cdr posn)))
                                                          (car x8157))))
                                                g8156)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8158
                                                        (letrec ((x8159
                                                                  (letrec ((x8160
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x8160))))
                                                          (car x8159))))
                                                g8158)))
                                           (COLOR/C symbol?)
                                           (POSN/C
                                            (lambda (j7330 k7331 v7329)
                                              (letrec ((g8161
                                                        (letrec ((checked7332
                                                                  (letrec ((x8162
                                                                            (car
                                                                             v7329)))
                                                                    (real?/c
                                                                     j7330
                                                                     k7331
                                                                     x8162))))
                                                          (letrec ((g8163
                                                                    (letrec ((checked7333
                                                                              (letrec ((x8164
                                                                                        (letrec ((x8165
                                                                                                  (cdr
                                                                                                   v7329)))
                                                                                          (car
                                                                                           x8165))))
                                                                                (real?/c
                                                                                 j7330
                                                                                 k7331
                                                                                 x8164))))
                                                                      (letrec ((g8166
                                                                                (letrec ((x8167
                                                                                          (letrec ((x8168
                                                                                                    (cons
                                                                                                     checked7333
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7332
                                                                                             x8168))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8167))))
                                                                        g8166))))
                                                            g8163))))
                                                g8161)))
                                           (BLOCK/C
                                            (lambda (j7336 k7337 v7335)
                                              (letrec ((g8169
                                                        (letrec ((checked7338
                                                                  (letrec ((x8170
                                                                            (car
                                                                             v7335)))
                                                                    (real?/c
                                                                     j7336
                                                                     k7337
                                                                     x8170))))
                                                          (letrec ((g8171
                                                                    (letrec ((checked7339
                                                                              (letrec ((x8172
                                                                                        (letrec ((x8173
                                                                                                  (cdr
                                                                                                   v7335)))
                                                                                          (car
                                                                                           x8173))))
                                                                                (real?/c
                                                                                 j7336
                                                                                 k7337
                                                                                 x8172))))
                                                                      (letrec ((g8174
                                                                                (letrec ((checked7340
                                                                                          (letrec ((x8175
                                                                                                    (letrec ((x8176
                                                                                                              (letrec ((x8177
                                                                                                                        (cdr
                                                                                                                         v7335)))
                                                                                                                (cdr
                                                                                                                 x8177))))
                                                                                                      (car
                                                                                                       x8176))))
                                                                                            (COLOR/C
                                                                                             j7336
                                                                                             k7337
                                                                                             x8175))))
                                                                                  (letrec ((g8178
                                                                                            (letrec ((x8179
                                                                                                      (letrec ((x8180
                                                                                                                (letrec ((x8181
                                                                                                                          (cons
                                                                                                                           checked7340
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7339
                                                                                                                   x8181))))
                                                                                                        (cons
                                                                                                         checked7338
                                                                                                         x8180))))
                                                                                              (cons
                                                                                               block
                                                                                               x8179))))
                                                                                    g8178))))
                                                                        g8174))))
                                                            g8171))))
                                                g8169)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7343 k7344 v7342)
                                              (letrec ((g8182
                                                        (letrec ((checked7345
                                                                  (letrec ((x8183
                                                                            (car
                                                                             v7342)))
                                                                    (POSN/C
                                                                     j7343
                                                                     k7344
                                                                     x8183))))
                                                          (letrec ((g8184
                                                                    (letrec ((checked7346
                                                                              (letrec ((x8185
                                                                                        (letrec ((x8186
                                                                                                  (cdr
                                                                                                   v7342)))
                                                                                          (car
                                                                                           x8186))))
                                                                                (BSET/C
                                                                                 j7343
                                                                                 k7344
                                                                                 x8185))))
                                                                      (letrec ((g8187
                                                                                (letrec ((x8188
                                                                                          (letrec ((x8189
                                                                                                    (cons
                                                                                                     checked7346
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7345
                                                                                             x8189))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8188))))
                                                                        g8187))))
                                                            g8184))))
                                                g8182)))
                                           (WORLD/C
                                            (lambda (j7349 k7350 v7348)
                                              (letrec ((g8190
                                                        (letrec ((checked7351
                                                                  (letrec ((x8191
                                                                            (car
                                                                             v7348)))
                                                                    (TETRA/C
                                                                     j7349
                                                                     k7350
                                                                     x8191))))
                                                          (letrec ((g8192
                                                                    (letrec ((checked7352
                                                                              (letrec ((x8193
                                                                                        (letrec ((x8194
                                                                                                  (cdr
                                                                                                   v7348)))
                                                                                          (car
                                                                                           x8194))))
                                                                                (BSET/C
                                                                                 j7349
                                                                                 k7350
                                                                                 x8193))))
                                                                      (letrec ((g8195
                                                                                (letrec ((x8196
                                                                                          (letrec ((x8197
                                                                                                    (cons
                                                                                                     checked7352
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7351
                                                                                             x8197))))
                                                                                  (cons
                                                                                   world
                                                                                   x8196))))
                                                                        g8195))))
                                                            g8192))))
                                                g8190)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8198
                                                        (letrec ((x-cnd8199
                                                                  (letrec ((x8201
                                                                            (posn-x
                                                                             p1))
                                                                           (x8200
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8201
                                                                     x8200))))
                                                          (if x-cnd8199
                                                            (letrec ((x8203
                                                                      (posn-y
                                                                       p1))
                                                                     (x8202
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8203 x8202))
                                                            #f))))
                                                g8198)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8204
                                                        (letrec ((x-cnd8205
                                                                  (letrec ((x8207
                                                                            (block-x
                                                                             b1))
                                                                           (x8206
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8207
                                                                     x8206))))
                                                          (if x-cnd8205
                                                            (letrec ((x8209
                                                                      (block-y
                                                                       b1))
                                                                     (x8208
                                                                      (block-y
                                                                       b2)))
                                                              (= x8209 x8208))
                                                            #f))))
                                                g8204)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8210
                                                        (letrec ((x8214
                                                                  (letrec ((x8215
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8215)))
                                                                 (x8212
                                                                  (letrec ((x8213
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8213)))
                                                                 (x8211
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8214
                                                           x8212
                                                           x8211))))
                                                g8210)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8216
                                                        (letrec ((x8223
                                                                  (letrec ((x8227
                                                                            (posn-x
                                                                             c))
                                                                           (x8224
                                                                            (letrec ((x8226
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8225
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8226
                                                                               x8225))))
                                                                    (+
                                                                     x8227
                                                                     x8224)))
                                                                 (x8218
                                                                  (letrec ((x8222
                                                                            (posn-y
                                                                             c))
                                                                           (x8219
                                                                            (letrec ((x8221
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8220
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8221
                                                                               x8220))))
                                                                    (+
                                                                     x8222
                                                                     x8219)))
                                                                 (x8217
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8223
                                                           x8218
                                                           x8217))))
                                                g8216)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8228
                                                        (letrec ((x8229
                                                                  (letrec ((x8230
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8230))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8229))))
                                                g8228)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8231
                                                        (letrec ((x-cnd8232
                                                                  (null? xs)))
                                                          (if x-cnd8232
                                                            (letrec ((g8233
                                                                      #f))
                                                              g8233)
                                                            (letrec ((g8234
                                                                      (letrec ((x8237
                                                                                (letrec ((x8238
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8238)))
                                                                               (x8235
                                                                                (letrec ((x8236
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8236))))
                                                                        (or x8237
                                                                            x8235))))
                                                              g8234)))))
                                                g8231)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8239
                                                        (letrec ((x-cnd8240
                                                                  (null? xs)))
                                                          (if x-cnd8240
                                                            (letrec ((g8241
                                                                      #t))
                                                              g8241)
                                                            (letrec ((g8242
                                                                      (letrec ((x8245
                                                                                (letrec ((x8246
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8246)))
                                                                               (x8243
                                                                                (letrec ((x8244
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8244))))
                                                                        (and x8245
                                                                             x8243))))
                                                              g8242)))))
                                                g8239)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8247
                                                        (letrec ((x-cnd8248
                                                                  (null? xs)))
                                                          (if x-cnd8248
                                                            (letrec ((g8249
                                                                      null))
                                                              g8249)
                                                            (letrec ((x-cnd8250
                                                                      (letrec ((x8251
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8251))))
                                                              (if x-cnd8250
                                                                (letrec ((g8252
                                                                          (letrec ((x8255
                                                                                    (car
                                                                                     xs))
                                                                                   (x8253
                                                                                    (letrec ((x8254
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8254))))
                                                                            (cons
                                                                             x8255
                                                                             x8253))))
                                                                  g8252)
                                                                (letrec ((g8256
                                                                          (letrec ((x8257
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8257))))
                                                                  g8256)))))))
                                                g8247)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8258
                                                        (letrec ((x-cnd8259
                                                                  (null? l)))
                                                          (if x-cnd8259
                                                            (letrec ((g8260 r))
                                                              g8260)
                                                            (letrec ((g8261
                                                                      (letrec ((x8264
                                                                                (car
                                                                                 l))
                                                                               (x8262
                                                                                (letrec ((x8263
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8263
                                                                                   r))))
                                                                        (cons
                                                                         x8264
                                                                         x8262))))
                                                              g8261)))))
                                                g8258)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8265
                                                        (letrec ((x-cnd8266
                                                                  (null? xs)))
                                                          (if x-cnd8266
                                                            (letrec ((g8267 a))
                                                              g8267)
                                                            (letrec ((g8268
                                                                      (letrec ((x8271
                                                                                (car
                                                                                 xs))
                                                                               (x8269
                                                                                (letrec ((x8270
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8270))))
                                                                        (f
                                                                         x8271
                                                                         x8269))))
                                                              g8268)))))
                                                g8265)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8272
                                                        (letrec ((x8273
                                                                  (letrec ((x8275
                                                                            (c))
                                                                           (x8274
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x8275
                                                                      x8274))))
                                                          (ormap x8273 bs))))
                                                g8272)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8276
                                                        (letrec ((x8277
                                                                  (letrec ((x8279
                                                                            (b))
                                                                           (x8278
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8279
                                                                      x8278))))
                                                          (andmap x8277 bs1))))
                                                g8276)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8280
                                                        (letrec ((x-cnd8281
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8281
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8280)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8282
                                                        (letrec ((x8283
                                                                  (letrec ((x8285
                                                                            (b))
                                                                           (x8284
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8285
                                                                      x8284))))
                                                          (filter x8283 bs1))))
                                                g8282)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8286 (length bs)))
                                                g8286)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8287
                                                        (letrec ((x8288
                                                                  (letrec ((x8290
                                                                            (b))
                                                                           (x8289
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x8290
                                                                      x8289))))
                                                          (map x8288 bs))))
                                                g8287)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8291
                                                        (letrec ((x8292
                                                                  (letrec ((x8294
                                                                            (b))
                                                                           (x8293
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x8294
                                                                      x8293))))
                                                          (map x8292 bs))))
                                                g8291)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8295
                                                        (letrec ((x8296
                                                                  (letrec ((x8298
                                                                            (b))
                                                                           (x8297
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x8298
                                                                      x8297))))
                                                          (map x8296 bs))))
                                                g8295)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8299
                                                        (letrec ((x8300
                                                                  (letrec ((x8304
                                                                            (b))
                                                                           (x8301
                                                                            (letrec ((x8303
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8302
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x8303
                                                                               x8302
                                                                               c))))
                                                                    (λ x8304
                                                                      x8301))))
                                                          (map x8300 bs))))
                                                g8299)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8305
                                                        (letrec ((x8306
                                                                  (letrec ((x8309
                                                                            (b))
                                                                           (x8307
                                                                            (letrec ((x8308
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x8308))))
                                                                    (λ x8309
                                                                      x8307))))
                                                          (filter x8306 bs))))
                                                g8305)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8310
                                                        (letrec ((x8311
                                                                  (letrec ((x8312
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8312))))
                                                          (=
                                                           board-width
                                                           x8311))))
                                                g8310)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8313
                                                        (letrec ((x8314
                                                                  (letrec ((x8317
                                                                            (b))
                                                                           (x8315
                                                                            (letrec ((x8316
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x8316
                                                                               0))))
                                                                    (λ x8317
                                                                      x8315))))
                                                          (ormap x8314 bs))))
                                                g8313)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8318
                                                        (letrec ((x8319
                                                                  (letrec ((x8324
                                                                            (b
                                                                             bs))
                                                                           (x8320
                                                                            (letrec ((x-cnd8321
                                                                                      (blocks-contains?
                                                                                       bs
                                                                                       b)))
                                                                              (if x-cnd8321
                                                                                (letrec ((g8322
                                                                                          bs))
                                                                                  g8322)
                                                                                (letrec ((g8323
                                                                                          (cons
                                                                                           b
                                                                                           bs)))
                                                                                  g8323)))))
                                                                    (λ x8324
                                                                      x8320))))
                                                          (foldr
                                                           x8319
                                                           bs2
                                                           bs1))))
                                                g8318)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8325
                                                        (letrec ((x8326
                                                                  (letrec ((x8329
                                                                            (b
                                                                             n))
                                                                           (x8327
                                                                            (letrec ((x8328
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x8328
                                                                               n))))
                                                                    (λ x8329
                                                                      x8327))))
                                                          (foldr x8326 0 bs))))
                                                g8325)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8330
                                                        (letrec ((x8331
                                                                  (letrec ((x8334
                                                                            (b
                                                                             n))
                                                                           (x8332
                                                                            (letrec ((x8333
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x8333
                                                                               n))))
                                                                    (λ x8334
                                                                      x8332))))
                                                          (foldr
                                                           x8331
                                                           board-width
                                                           bs))))
                                                g8330)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8335
                                                        (letrec ((x8336
                                                                  (letrec ((x8339
                                                                            (b
                                                                             n))
                                                                           (x8337
                                                                            (letrec ((x8338
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x8338
                                                                               n))))
                                                                    (λ x8339
                                                                      x8337))))
                                                          (foldr x8336 0 bs))))
                                                g8335)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8340
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8340)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8341
                                                        (letrec ((x-cnd8342
                                                                  (< i 0)))
                                                          (if x-cnd8342
                                                            (letrec ((g8343
                                                                      empty))
                                                              g8343)
                                                            (letrec ((x-cnd8344
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8344
                                                                (letrec ((g8345
                                                                          (letrec ((x8347
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8346
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8347
                                                                             x8346))))
                                                                  g8345)
                                                                (letrec ((g8348
                                                                          (letrec ((x8351
                                                                                    (letrec ((x8352
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8352
                                                                                       offset)))
                                                                                   (x8349
                                                                                    (letrec ((x8350
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8350))))
                                                                            (blocks-union
                                                                             x8351
                                                                             x8349))))
                                                                  g8348)))))))
                                                g8341)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8353
                                                        (letrec ((x8356
                                                                  (letrec ((x8360
                                                                            (letrec ((x8361
                                                                                      (letrec ((x8362
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8362))))
                                                                              (+
                                                                               dx
                                                                               x8361)))
                                                                           (x8357
                                                                            (letrec ((x8358
                                                                                      (letrec ((x8359
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8359))))
                                                                              (+
                                                                               dy
                                                                               x8358))))
                                                                    (posn
                                                                     x8360
                                                                     x8357)))
                                                                 (x8354
                                                                  (letrec ((x8355
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8355))))
                                                          (tetra
                                                           x8356
                                                           x8354))))
                                                g8353)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8363
                                                        (letrec ((x8367
                                                                  (tetra-center
                                                                   t))
                                                                 (x8364
                                                                  (letrec ((x8366
                                                                            (tetra-center
                                                                             t))
                                                                           (x8365
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8366
                                                                     x8365))))
                                                          (tetra
                                                           x8367
                                                           x8364))))
                                                g8363)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8368
                                                        (letrec ((x8372
                                                                  (tetra-center
                                                                   t))
                                                                 (x8369
                                                                  (letrec ((x8371
                                                                            (tetra-center
                                                                             t))
                                                                           (x8370
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8371
                                                                     x8370))))
                                                          (tetra
                                                           x8372
                                                           x8369))))
                                                g8368)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8373
                                                        (letrec ((x8374
                                                                  (letrec ((x8375
                                                                            (letrec ((x8376
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8376
                                                                               bs))))
                                                                    (false?
                                                                     x8375))))
                                                          (false? x8374))))
                                                g8373)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8377
                                                        (letrec ((x8380
                                                                  (tetra-center
                                                                   t))
                                                                 (x8378
                                                                  (letrec ((x8379
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8379
                                                                     c))))
                                                          (tetra
                                                           x8380
                                                           x8378))))
                                                g8377)))
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
                                              (letrec ((g8381
                                                        (letrec ((x8382
                                                                  (letrec ((x8388
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8383
                                                                            (letrec ((x8387
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8386
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8385
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8384
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8387
                                                                               x8386
                                                                               x8385
                                                                               x8384))))
                                                                    (tetra
                                                                     x8388
                                                                     x8383))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8382))))
                                                g8381)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8389
                                                        (letrec ((x8395
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8390
                                                                  (letrec ((x8391
                                                                            (letrec ((x8393
                                                                                      (letrec ((x8394
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8394)))
                                                                                     (x8392
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8393
                                                                               x8392))))
                                                                    (eliminate-full-rows
                                                                     x8391))))
                                                          (world
                                                           x8395
                                                           x8390))))
                                                g8389)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8396
                                                        (letrec ((x-cnd8397
                                                                  (landed? w)))
                                                          (if x-cnd8397
                                                            (letrec ((g8398 w))
                                                              g8398)
                                                            (letrec ((g8399
                                                                      (letrec ((x8400
                                                                                (letrec ((x8402
                                                                                          (letrec ((x8403
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8403)))
                                                                                         (x8401
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8402
                                                                                   x8401))))
                                                                        (world-jump-down
                                                                         x8400))))
                                                              g8399)))))
                                                g8396)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8404
                                                        (letrec ((x8406
                                                                  (letrec ((x8407
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8407)))
                                                                 (x8405
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8406
                                                           x8405))))
                                                g8404)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8408
                                                        (letrec ((x8410
                                                                  (letrec ((x8411
                                                                            (letrec ((x8412
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8412))))
                                                                    (blocks-max-y
                                                                     x8411)))
                                                                 (x8409
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8410 x8409))))
                                                g8408)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8413
                                                        (letrec ((val7259
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8414
                                                                    (if val7259
                                                                      val7259
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8414))))
                                                g8413)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8415
                                                        (letrec ((x-cnd8416
                                                                  (landed? w)))
                                                          (if x-cnd8416
                                                            (letrec ((g8417
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8417)
                                                            (letrec ((g8418
                                                                      (letrec ((x8420
                                                                                (letrec ((x8421
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8421)))
                                                                               (x8419
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8420
                                                                         x8419))))
                                                              g8418)))))
                                                g8415)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8422
                                                        (letrec ((x-cnd8423
                                                                  (letrec ((x8429
                                                                            (letrec ((x8430
                                                                                      (letrec ((x8431
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8431))))
                                                                              (<
                                                                               x8430
                                                                               0)))
                                                                           (x8426
                                                                            (letrec ((x8427
                                                                                      (letrec ((x8428
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-max-x
                                                                                         x8428))))
                                                                              (>=
                                                                               x8427
                                                                               board-width)))
                                                                           (x8424
                                                                            (letrec ((x8425
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (tetra-overlaps-blocks?
                                                                               new-tetra
                                                                               x8425))))
                                                                    (or x8429
                                                                        x8426
                                                                        x8424))))
                                                          (if x-cnd8423
                                                            (letrec ((g8432 w))
                                                              g8432)
                                                            (letrec ((g8433
                                                                      (letrec ((x8434
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8434))))
                                                              g8433)))))
                                                g8422)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8435
                                                        (letrec ((x8436
                                                                  (letrec ((x8437
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8437))))
                                                          (try-new-tetra
                                                           w
                                                           x8436))))
                                                g8435)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8438
                                                        (letrec ((x8439
                                                                  (letrec ((x8440
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8440))))
                                                          (try-new-tetra
                                                           w
                                                           x8439))))
                                                g8438)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8441
                                                        (letrec ((x8442
                                                                  (letrec ((x8443
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8443))))
                                                          (try-new-tetra
                                                           w
                                                           x8442))))
                                                g8441)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8444
                                                        (letrec ((x8445
                                                                  (letrec ((x8446
                                                                            (letrec ((x8447
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8447))))
                                                                    (tetra-change-color
                                                                     x8446
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8445))))
                                                g8444)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8448
                                                        (letrec ((x-cnd8449
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8449
                                                            (letrec ((g8450
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8450)
                                                            (letrec ((x-cnd8451
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8451
                                                                (letrec ((g8452
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8452)
                                                                (letrec ((x-cnd8453
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8453
                                                                    (letrec ((g8454
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8454)
                                                                    (letrec ((x-cnd8455
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8455
                                                                        (letrec ((g8456
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8456)
                                                                        (letrec ((x-cnd8457
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8457
                                                                            (letrec ((g8458
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8458)
                                                                            (letrec ((g8459
                                                                                      w))
                                                                              g8459)))))))))))))
                                                g8448)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8460
                                                        (cons 'image '())))
                                                g8460)))
                                           (image?
                                            (lambda (image7593)
                                              (letrec ((g8461
                                                        (letrec ((x8462
                                                                  (car
                                                                   image7593)))
                                                          (eq? x8462 'image))))
                                                g8461)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8463 (image)))
                                                g8463)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8464 (image)))
                                                g8464)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8465 (image)))
                                                g8465)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8466 (image)))
                                                g8466)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8467 (image)))
                                                g8467)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8468
                                                        (letrec ((x-cnd8469
                                                                  (letrec ((x8470
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8470))))
                                                          (if x-cnd8469
                                                            (letrec ((g8471
                                                                      (car
                                                                       xs)))
                                                              g8471)
                                                            (letrec ((g8472
                                                                      (letrec ((x8473
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8473))))
                                                              g8472)))))
                                                g8468)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8474
                                                        (letrec ((x8478
                                                                  (letrec ((x8479
                                                                            (letrec ((x8483
                                                                                      (letrec ((x8484
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8484)))
                                                                                     (x8480
                                                                                      (letrec ((x8482
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8481
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8482
                                                                                         x8481))))
                                                                              (append
                                                                               x8483
                                                                               x8480))))
                                                                    (blocks->image
                                                                     x8479)))
                                                                 (x8475
                                                                  (letrec ((x8477
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8476
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8477
                                                                     x8476))))
                                                          (place-image
                                                           x8478
                                                           0
                                                           0
                                                           x8475))))
                                                g8474)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8485
                                                        (letrec ((x8491
                                                                  (letrec ((x8497
                                                                            (b
                                                                             img))
                                                                           (x8492
                                                                            (letrec ((x-cnd8493
                                                                                      (letrec ((x8494
                                                                                                (block-y
                                                                                                 b)))
                                                                                        (<=
                                                                                         0
                                                                                         x8494))))
                                                                              (if x-cnd8493
                                                                                (letrec ((g8495
                                                                                          (place-block
                                                                                           b
                                                                                           img)))
                                                                                  g8495)
                                                                                (letrec ((g8496
                                                                                          img))
                                                                                  g8496)))))
                                                                    (λ x8497
                                                                      x8492)))
                                                                 (x8486
                                                                  (letrec ((x8489
                                                                            (letrec ((x8490
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8490)))
                                                                           (x8487
                                                                            (letrec ((x8488
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8488))))
                                                                    (empty-scene
                                                                     x8489
                                                                     x8487))))
                                                          (foldr
                                                           x8491
                                                           x8486
                                                           bs))))
                                                g8485)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8498
                                                        (letrec ((x8502
                                                                  (letrec ((x8505
                                                                            (add1
                                                                             block-size))
                                                                           (x8504
                                                                            (add1
                                                                             block-size))
                                                                           (x8503
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8505
                                                                     x8504
                                                                     'solid
                                                                     x8503)))
                                                                 (x8499
                                                                  (letrec ((x8501
                                                                            (add1
                                                                             block-size))
                                                                           (x8500
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8501
                                                                     x8500
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8502
                                                           x8499))))
                                                g8498)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8506
                                                        (letrec ((x8515
                                                                  (block->image
                                                                   b))
                                                                 (x8511
                                                                  (letrec ((x8513
                                                                            (letrec ((x8514
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8514
                                                                               block-size)))
                                                                           (x8512
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8513
                                                                     x8512)))
                                                                 (x8507
                                                                  (letrec ((x8509
                                                                            (letrec ((x8510
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8510
                                                                               block-size)))
                                                                           (x8508
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8509
                                                                     x8508))))
                                                          (place-image
                                                           x8515
                                                           x8511
                                                           x8507
                                                           scene))))
                                                g8506)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8516
                                                        (letrec ((x8517
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8517 null))))
                                                g8516))))
                                    (letrec ((g8518
                                              (letrec ((x8581
                                                        ((lambda (j7356
                                                                  k7357
                                                                  f7358)
                                                           (letrec ((g8582
                                                                     (lambda (g7354
                                                                              g7355)
                                                                       (letrec ((g8583
                                                                                 (letrec ((x8584
                                                                                           (letrec ((x8586
                                                                                                     (POSN/C
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7354))
                                                                                                    (x8585
                                                                                                     (POSN/C
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7355)))
                                                                                             (f7358
                                                                                              x8586
                                                                                              x8585))))
                                                                                   (boolean?/c
                                                                                    j7356
                                                                                    k7357
                                                                                    x8584))))
                                                                         g8583))))
                                                             g8582))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8576
                                                        (letrec ((x8577
                                                                  (letrec ((x8580
                                                                            (input))
                                                                           (x8578
                                                                            (letrec ((x8579
                                                                                      (input)))
                                                                              (cons
                                                                               x8579
                                                                               '()))))
                                                                    (cons
                                                                     x8580
                                                                     x8578))))
                                                          (cons 'posn x8577)))
                                                       (x8571
                                                        (letrec ((x8572
                                                                  (letrec ((x8575
                                                                            (input))
                                                                           (x8573
                                                                            (letrec ((x8574
                                                                                      (input)))
                                                                              (cons
                                                                               x8574
                                                                               '()))))
                                                                    (cons
                                                                     x8575
                                                                     x8573))))
                                                          (cons 'posn x8572))))
                                                (x8581 x8576 x8571)))
                                             (g8519
                                              (any/c
                                               'module
                                               'importer
                                               COLOR/C))
                                             (g8520
                                              (any/c 'module 'importer POSN/C))
                                             (g8521
                                              (any/c
                                               'module
                                               'importer
                                               BLOCK/C))
                                             (g8522
                                              (any/c
                                               'module
                                               'importer
                                               TETRA/C))
                                             (g8523
                                              (any/c
                                               'module
                                               'importer
                                               WORLD/C))
                                             (g8524
                                              (any/c 'module 'importer BSET/C))
                                             (g8525
                                              (integer?
                                               'module
                                               'importer
                                               block-size))
                                             (g8526
                                              (integer?
                                               'module
                                               'importer
                                               board-width))
                                             (g8527
                                              (integer?
                                               'module
                                               'importer
                                               board-height))
                                             (g8528
                                              (letrec ((x8599
                                                        ((lambda (j7361
                                                                  k7362
                                                                  f7363)
                                                           (letrec ((g8600
                                                                     (lambda (g7359
                                                                              g7360)
                                                                       (letrec ((g8601
                                                                                 (letrec ((x8602
                                                                                           (letrec ((x8604
                                                                                                     (POSN/C
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7359))
                                                                                                    (x8603
                                                                                                     (BLOCK/C
                                                                                                      j7361
                                                                                                      k7362
                                                                                                      g7360)))
                                                                                             (f7363
                                                                                              x8604
                                                                                              x8603))))
                                                                                   (BLOCK/C
                                                                                    j7361
                                                                                    k7362
                                                                                    x8602))))
                                                                         g8601))))
                                                             g8600))
                                                         'module
                                                         'importer
                                                         block-rotate-ccw))
                                                       (x8594
                                                        (letrec ((x8595
                                                                  (letrec ((x8598
                                                                            (input))
                                                                           (x8596
                                                                            (letrec ((x8597
                                                                                      (input)))
                                                                              (cons
                                                                               x8597
                                                                               '()))))
                                                                    (cons
                                                                     x8598
                                                                     x8596))))
                                                          (cons 'posn x8595)))
                                                       (x8587
                                                        (letrec ((x8588
                                                                  (letrec ((x8593
                                                                            (input))
                                                                           (x8589
                                                                            (letrec ((x8592
                                                                                      (input))
                                                                                     (x8590
                                                                                      (letrec ((x8591
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8591
                                                                                         '()))))
                                                                              (cons
                                                                               x8592
                                                                               x8590))))
                                                                    (cons
                                                                     x8593
                                                                     x8589))))
                                                          (cons
                                                           'block
                                                           x8588))))
                                                (x8599 x8594 x8587)))
                                             (g8529
                                              (letrec ((x8617
                                                        ((lambda (j7366
                                                                  k7367
                                                                  f7368)
                                                           (letrec ((g8618
                                                                     (lambda (g7364
                                                                              g7365)
                                                                       (letrec ((g8619
                                                                                 (letrec ((x8620
                                                                                           (letrec ((x8622
                                                                                                     (POSN/C
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7364))
                                                                                                    (x8621
                                                                                                     (BLOCK/C
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7365)))
                                                                                             (f7368
                                                                                              x8622
                                                                                              x8621))))
                                                                                   (BLOCK/C
                                                                                    j7366
                                                                                    k7367
                                                                                    x8620))))
                                                                         g8619))))
                                                             g8618))
                                                         'module
                                                         'importer
                                                         block-rotate-cw))
                                                       (x8612
                                                        (letrec ((x8613
                                                                  (letrec ((x8616
                                                                            (input))
                                                                           (x8614
                                                                            (letrec ((x8615
                                                                                      (input)))
                                                                              (cons
                                                                               x8615
                                                                               '()))))
                                                                    (cons
                                                                     x8616
                                                                     x8614))))
                                                          (cons 'posn x8613)))
                                                       (x8605
                                                        (letrec ((x8606
                                                                  (letrec ((x8611
                                                                            (input))
                                                                           (x8607
                                                                            (letrec ((x8610
                                                                                      (input))
                                                                                     (x8608
                                                                                      (letrec ((x8609
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8609
                                                                                         '()))))
                                                                              (cons
                                                                               x8610
                                                                               x8608))))
                                                                    (cons
                                                                     x8611
                                                                     x8607))))
                                                          (cons
                                                           'block
                                                           x8606))))
                                                (x8617 x8612 x8605)))
                                             (g8530
                                              (letrec ((x8637
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g8638
                                                                     (lambda (g7369
                                                                              g7370)
                                                                       (letrec ((g8639
                                                                                 (letrec ((x8640
                                                                                           (letrec ((x8642
                                                                                                     (BLOCK/C
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7369))
                                                                                                    (x8641
                                                                                                     (BLOCK/C
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x8642
                                                                                              x8641))))
                                                                                   (boolean?/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x8640))))
                                                                         g8639))))
                                                             g8638))
                                                         'module
                                                         'importer
                                                         block=?))
                                                       (x8630
                                                        (letrec ((x8631
                                                                  (letrec ((x8636
                                                                            (input))
                                                                           (x8632
                                                                            (letrec ((x8635
                                                                                      (input))
                                                                                     (x8633
                                                                                      (letrec ((x8634
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8634
                                                                                         '()))))
                                                                              (cons
                                                                               x8635
                                                                               x8633))))
                                                                    (cons
                                                                     x8636
                                                                     x8632))))
                                                          (cons 'block x8631)))
                                                       (x8623
                                                        (letrec ((x8624
                                                                  (letrec ((x8629
                                                                            (input))
                                                                           (x8625
                                                                            (letrec ((x8628
                                                                                      (input))
                                                                                     (x8626
                                                                                      (letrec ((x8627
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8627
                                                                                         '()))))
                                                                              (cons
                                                                               x8628
                                                                               x8626))))
                                                                    (cons
                                                                     x8629
                                                                     x8625))))
                                                          (cons
                                                           'block
                                                           x8624))))
                                                (x8637 x8630 x8623)))
                                             (g8531
                                              (letrec ((x8652
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g8653
                                                                     (lambda (g7374
                                                                              g7375
                                                                              g7376)
                                                                       (letrec ((g8654
                                                                                 (letrec ((x8655
                                                                                           (letrec ((x8658
                                                                                                     (real?/c
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7374))
                                                                                                    (x8657
                                                                                                     (real?/c
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7375))
                                                                                                    (x8656
                                                                                                     (BLOCK/C
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x8658
                                                                                              x8657
                                                                                              x8656))))
                                                                                   (BLOCK/C
                                                                                    j7377
                                                                                    k7378
                                                                                    x8655))))
                                                                         g8654))))
                                                             g8653))
                                                         'module
                                                         'importer
                                                         block-move))
                                                       (x8651 (input))
                                                       (x8650 (input))
                                                       (x8643
                                                        (letrec ((x8644
                                                                  (letrec ((x8649
                                                                            (input))
                                                                           (x8645
                                                                            (letrec ((x8648
                                                                                      (input))
                                                                                     (x8646
                                                                                      (letrec ((x8647
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8647
                                                                                         '()))))
                                                                              (cons
                                                                               x8648
                                                                               x8646))))
                                                                    (cons
                                                                     x8649
                                                                     x8645))))
                                                          (cons
                                                           'block
                                                           x8644))))
                                                (x8652 x8651 x8650 x8643)))
                                             (g8532
                                              (letrec ((x8667
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g8668
                                                                     (lambda (g7380
                                                                              g7381)
                                                                       (letrec ((g8669
                                                                                 (letrec ((x8670
                                                                                           (letrec ((x8672
                                                                                                     (BSET/C
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7380))
                                                                                                    (x8671
                                                                                                     (BLOCK/C
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x8672
                                                                                              x8671))))
                                                                                   (boolean?/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x8670))))
                                                                         g8669))))
                                                             g8668))
                                                         'module
                                                         'importer
                                                         blocks-contains?))
                                                       (x8666 (input))
                                                       (x8659
                                                        (letrec ((x8660
                                                                  (letrec ((x8665
                                                                            (input))
                                                                           (x8661
                                                                            (letrec ((x8664
                                                                                      (input))
                                                                                     (x8662
                                                                                      (letrec ((x8663
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8663
                                                                                         '()))))
                                                                              (cons
                                                                               x8664
                                                                               x8662))))
                                                                    (cons
                                                                     x8665
                                                                     x8661))))
                                                          (cons
                                                           'block
                                                           x8660))))
                                                (x8667 x8666 x8659)))
                                             (g8533
                                              (letrec ((x8675
                                                        ((lambda (j7387
                                                                  k7388
                                                                  f7389)
                                                           (letrec ((g8676
                                                                     (lambda (g7385
                                                                              g7386)
                                                                       (letrec ((g8677
                                                                                 (letrec ((x8678
                                                                                           (letrec ((x8680
                                                                                                     (BSET/C
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7385))
                                                                                                    (x8679
                                                                                                     (BSET/C
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7386)))
                                                                                             (f7389
                                                                                              x8680
                                                                                              x8679))))
                                                                                   (boolean?/c
                                                                                    j7387
                                                                                    k7388
                                                                                    x8678))))
                                                                         g8677))))
                                                             g8676))
                                                         'module
                                                         'importer
                                                         blocks=?))
                                                       (x8674 (input))
                                                       (x8673 (input)))
                                                (x8675 x8674 x8673)))
                                             (g8534
                                              (letrec ((x8683
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g8684
                                                                     (lambda (g7390
                                                                              g7391)
                                                                       (letrec ((g8685
                                                                                 (letrec ((x8686
                                                                                           (letrec ((x8688
                                                                                                     (BSET/C
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7390))
                                                                                                    (x8687
                                                                                                     (BSET/C
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x8688
                                                                                              x8687))))
                                                                                   (boolean?/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x8686))))
                                                                         g8685))))
                                                             g8684))
                                                         'module
                                                         'importer
                                                         blocks-subset?))
                                                       (x8682 (input))
                                                       (x8681 (input)))
                                                (x8683 x8682 x8681)))
                                             (g8535
                                              (letrec ((x8691
                                                        ((lambda (j7397
                                                                  k7398
                                                                  f7399)
                                                           (letrec ((g8692
                                                                     (lambda (g7395
                                                                              g7396)
                                                                       (letrec ((g8693
                                                                                 (letrec ((x8694
                                                                                           (letrec ((x8696
                                                                                                     (BSET/C
                                                                                                      j7397
                                                                                                      k7398
                                                                                                      g7395))
                                                                                                    (x8695
                                                                                                     (BSET/C
                                                                                                      j7397
                                                                                                      k7398
                                                                                                      g7396)))
                                                                                             (f7399
                                                                                              x8696
                                                                                              x8695))))
                                                                                   (BSET/C
                                                                                    j7397
                                                                                    k7398
                                                                                    x8694))))
                                                                         g8693))))
                                                             g8692))
                                                         'module
                                                         'importer
                                                         blocks-intersect))
                                                       (x8690 (input))
                                                       (x8689 (input)))
                                                (x8691 x8690 x8689)))
                                             (g8536
                                              (letrec ((x8698
                                                        ((lambda (j7401
                                                                  k7402
                                                                  f7403)
                                                           (letrec ((g8699
                                                                     (lambda (g7400)
                                                                       (letrec ((g8700
                                                                                 (letrec ((x8701
                                                                                           (letrec ((x8702
                                                                                                     (BSET/C
                                                                                                      j7401
                                                                                                      k7402
                                                                                                      g7400)))
                                                                                             (f7403
                                                                                              x8702))))
                                                                                   (real?/c
                                                                                    j7401
                                                                                    k7402
                                                                                    x8701))))
                                                                         g8700))))
                                                             g8699))
                                                         'module
                                                         'importer
                                                         blocks-count))
                                                       (x8697 (input)))
                                                (x8698 x8697)))
                                             (g8537
                                              (letrec ((x8704
                                                        ((lambda (j7405
                                                                  k7406
                                                                  f7407)
                                                           (letrec ((g8705
                                                                     (lambda (g7404)
                                                                       (letrec ((g8706
                                                                                 (letrec ((x8707
                                                                                           (letrec ((x8708
                                                                                                     (BSET/C
                                                                                                      j7405
                                                                                                      k7406
                                                                                                      g7404)))
                                                                                             (f7407
                                                                                              x8708))))
                                                                                   (boolean?/c
                                                                                    j7405
                                                                                    k7406
                                                                                    x8707))))
                                                                         g8706))))
                                                             g8705))
                                                         'module
                                                         'importer
                                                         blocks-overflow?))
                                                       (x8703 (input)))
                                                (x8704 x8703)))
                                             (g8538
                                              (letrec ((x8712
                                                        ((lambda (j7411
                                                                  k7412
                                                                  f7413)
                                                           (letrec ((g8713
                                                                     (lambda (g7408
                                                                              g7409
                                                                              g7410)
                                                                       (letrec ((g8714
                                                                                 (letrec ((x8715
                                                                                           (letrec ((x8718
                                                                                                     (real?/c
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7408))
                                                                                                    (x8717
                                                                                                     (real?/c
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7409))
                                                                                                    (x8716
                                                                                                     (BSET/C
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7410)))
                                                                                             (f7413
                                                                                              x8718
                                                                                              x8717
                                                                                              x8716))))
                                                                                   (BSET/C
                                                                                    j7411
                                                                                    k7412
                                                                                    x8715))))
                                                                         g8714))))
                                                             g8713))
                                                         'module
                                                         'importer
                                                         blocks-move))
                                                       (x8711 (input))
                                                       (x8710 (input))
                                                       (x8709 (input)))
                                                (x8712 x8711 x8710 x8709)))
                                             (g8539
                                              (letrec ((x8725
                                                        ((lambda (j7416
                                                                  k7417
                                                                  f7418)
                                                           (letrec ((g8726
                                                                     (lambda (g7414
                                                                              g7415)
                                                                       (letrec ((g8727
                                                                                 (letrec ((x8728
                                                                                           (letrec ((x8730
                                                                                                     (POSN/C
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7414))
                                                                                                    (x8729
                                                                                                     (BSET/C
                                                                                                      j7416
                                                                                                      k7417
                                                                                                      g7415)))
                                                                                             (f7418
                                                                                              x8730
                                                                                              x8729))))
                                                                                   (BSET/C
                                                                                    j7416
                                                                                    k7417
                                                                                    x8728))))
                                                                         g8727))))
                                                             g8726))
                                                         'module
                                                         'importer
                                                         blocks-rotate-cw))
                                                       (x8720
                                                        (letrec ((x8721
                                                                  (letrec ((x8724
                                                                            (input))
                                                                           (x8722
                                                                            (letrec ((x8723
                                                                                      (input)))
                                                                              (cons
                                                                               x8723
                                                                               '()))))
                                                                    (cons
                                                                     x8724
                                                                     x8722))))
                                                          (cons 'posn x8721)))
                                                       (x8719 (input)))
                                                (x8725 x8720 x8719)))
                                             (g8540
                                              (letrec ((x8737
                                                        ((lambda (j7421
                                                                  k7422
                                                                  f7423)
                                                           (letrec ((g8738
                                                                     (lambda (g7419
                                                                              g7420)
                                                                       (letrec ((g8739
                                                                                 (letrec ((x8740
                                                                                           (letrec ((x8742
                                                                                                     (POSN/C
                                                                                                      j7421
                                                                                                      k7422
                                                                                                      g7419))
                                                                                                    (x8741
                                                                                                     (BSET/C
                                                                                                      j7421
                                                                                                      k7422
                                                                                                      g7420)))
                                                                                             (f7423
                                                                                              x8742
                                                                                              x8741))))
                                                                                   (BSET/C
                                                                                    j7421
                                                                                    k7422
                                                                                    x8740))))
                                                                         g8739))))
                                                             g8738))
                                                         'module
                                                         'importer
                                                         blocks-rotate-ccw))
                                                       (x8732
                                                        (letrec ((x8733
                                                                  (letrec ((x8736
                                                                            (input))
                                                                           (x8734
                                                                            (letrec ((x8735
                                                                                      (input)))
                                                                              (cons
                                                                               x8735
                                                                               '()))))
                                                                    (cons
                                                                     x8736
                                                                     x8734))))
                                                          (cons 'posn x8733)))
                                                       (x8731 (input)))
                                                (x8737 x8732 x8731)))
                                             (g8541
                                              (letrec ((x8745
                                                        ((lambda (j7426
                                                                  k7427
                                                                  f7428)
                                                           (letrec ((g8746
                                                                     (lambda (g7424
                                                                              g7425)
                                                                       (letrec ((g8747
                                                                                 (letrec ((x8748
                                                                                           (letrec ((x8750
                                                                                                     (BSET/C
                                                                                                      j7426
                                                                                                      k7427
                                                                                                      g7424))
                                                                                                    (x8749
                                                                                                     (COLOR/C
                                                                                                      j7426
                                                                                                      k7427
                                                                                                      g7425)))
                                                                                             (f7428
                                                                                              x8750
                                                                                              x8749))))
                                                                                   (BSET/C
                                                                                    j7426
                                                                                    k7427
                                                                                    x8748))))
                                                                         g8747))))
                                                             g8746))
                                                         'module
                                                         'importer
                                                         blocks-change-color))
                                                       (x8744 (input))
                                                       (x8743 (input)))
                                                (x8745 x8744 x8743)))
                                             (g8542
                                              (letrec ((x8753
                                                        ((lambda (j7431
                                                                  k7432
                                                                  f7433)
                                                           (letrec ((g8754
                                                                     (lambda (g7429
                                                                              g7430)
                                                                       (letrec ((g8755
                                                                                 (letrec ((x8756
                                                                                           (letrec ((x8758
                                                                                                     (BSET/C
                                                                                                      j7431
                                                                                                      k7432
                                                                                                      g7429))
                                                                                                    (x8757
                                                                                                     (real?/c
                                                                                                      j7431
                                                                                                      k7432
                                                                                                      g7430)))
                                                                                             (f7433
                                                                                              x8758
                                                                                              x8757))))
                                                                                   (BSET/C
                                                                                    j7431
                                                                                    k7432
                                                                                    x8756))))
                                                                         g8755))))
                                                             g8754))
                                                         'module
                                                         'importer
                                                         blocks-row))
                                                       (x8752 (input))
                                                       (x8751 (input)))
                                                (x8753 x8752 x8751)))
                                             (g8543
                                              (letrec ((x8761
                                                        ((lambda (j7436
                                                                  k7437
                                                                  f7438)
                                                           (letrec ((g8762
                                                                     (lambda (g7434
                                                                              g7435)
                                                                       (letrec ((g8763
                                                                                 (letrec ((x8764
                                                                                           (letrec ((x8766
                                                                                                     (BSET/C
                                                                                                      j7436
                                                                                                      k7437
                                                                                                      g7434))
                                                                                                    (x8765
                                                                                                     (real?/c
                                                                                                      j7436
                                                                                                      k7437
                                                                                                      g7435)))
                                                                                             (f7438
                                                                                              x8766
                                                                                              x8765))))
                                                                                   (boolean?/c
                                                                                    j7436
                                                                                    k7437
                                                                                    x8764))))
                                                                         g8763))))
                                                             g8762))
                                                         'module
                                                         'importer
                                                         full-row?))
                                                       (x8760 (input))
                                                       (x8759 (input)))
                                                (x8761 x8760 x8759)))
                                             (g8544
                                              (letrec ((x8769
                                                        ((lambda (j7441
                                                                  k7442
                                                                  f7443)
                                                           (letrec ((g8770
                                                                     (lambda (g7439
                                                                              g7440)
                                                                       (letrec ((g8771
                                                                                 (letrec ((x8772
                                                                                           (letrec ((x8774
                                                                                                     (BSET/C
                                                                                                      j7441
                                                                                                      k7442
                                                                                                      g7439))
                                                                                                    (x8773
                                                                                                     (BSET/C
                                                                                                      j7441
                                                                                                      k7442
                                                                                                      g7440)))
                                                                                             (f7443
                                                                                              x8774
                                                                                              x8773))))
                                                                                   (BSET/C
                                                                                    j7441
                                                                                    k7442
                                                                                    x8772))))
                                                                         g8771))))
                                                             g8770))
                                                         'module
                                                         'importer
                                                         blocks-union))
                                                       (x8768 (input))
                                                       (x8767 (input)))
                                                (x8769 x8768 x8767)))
                                             (g8545
                                              (letrec ((x8776
                                                        ((lambda (j7445
                                                                  k7446
                                                                  f7447)
                                                           (letrec ((g8777
                                                                     (lambda (g7444)
                                                                       (letrec ((g8778
                                                                                 (letrec ((x8779
                                                                                           (letrec ((x8780
                                                                                                     (BSET/C
                                                                                                      j7445
                                                                                                      k7446
                                                                                                      g7444)))
                                                                                             (f7447
                                                                                              x8780))))
                                                                                   (real?/c
                                                                                    j7445
                                                                                    k7446
                                                                                    x8779))))
                                                                         g8778))))
                                                             g8777))
                                                         'module
                                                         'importer
                                                         blocks-max-x))
                                                       (x8775 (input)))
                                                (x8776 x8775)))
                                             (g8546
                                              (letrec ((x8782
                                                        ((lambda (j7449
                                                                  k7450
                                                                  f7451)
                                                           (letrec ((g8783
                                                                     (lambda (g7448)
                                                                       (letrec ((g8784
                                                                                 (letrec ((x8785
                                                                                           (letrec ((x8786
                                                                                                     (BSET/C
                                                                                                      j7449
                                                                                                      k7450
                                                                                                      g7448)))
                                                                                             (f7451
                                                                                              x8786))))
                                                                                   (real?/c
                                                                                    j7449
                                                                                    k7450
                                                                                    x8785))))
                                                                         g8784))))
                                                             g8783))
                                                         'module
                                                         'importer
                                                         blocks-min-x))
                                                       (x8781 (input)))
                                                (x8782 x8781)))
                                             (g8547
                                              (letrec ((x8788
                                                        ((lambda (j7453
                                                                  k7454
                                                                  f7455)
                                                           (letrec ((g8789
                                                                     (lambda (g7452)
                                                                       (letrec ((g8790
                                                                                 (letrec ((x8791
                                                                                           (letrec ((x8792
                                                                                                     (BSET/C
                                                                                                      j7453
                                                                                                      k7454
                                                                                                      g7452)))
                                                                                             (f7455
                                                                                              x8792))))
                                                                                   (real?/c
                                                                                    j7453
                                                                                    k7454
                                                                                    x8791))))
                                                                         g8790))))
                                                             g8789))
                                                         'module
                                                         'importer
                                                         blocks-max-y))
                                                       (x8787 (input)))
                                                (x8788 x8787)))
                                             (g8548
                                              (letrec ((x8794
                                                        ((lambda (j7457
                                                                  k7458
                                                                  f7459)
                                                           (letrec ((g8795
                                                                     (lambda (g7456)
                                                                       (letrec ((g8796
                                                                                 (letrec ((x8797
                                                                                           (letrec ((x8798
                                                                                                     (BSET/C
                                                                                                      j7457
                                                                                                      k7458
                                                                                                      g7456)))
                                                                                             (f7459
                                                                                              x8798))))
                                                                                   (BSET/C
                                                                                    j7457
                                                                                    k7458
                                                                                    x8797))))
                                                                         g8796))))
                                                             g8795))
                                                         'module
                                                         'importer
                                                         eliminate-full-rows))
                                                       (x8793 (input)))
                                                (x8794 x8793)))
                                             (g8549
                                              (letrec ((x8810
                                                        ((lambda (j7463
                                                                  k7464
                                                                  f7465)
                                                           (letrec ((g8811
                                                                     (lambda (g7460
                                                                              g7461
                                                                              g7462)
                                                                       (letrec ((g8812
                                                                                 (letrec ((x8813
                                                                                           (letrec ((x8816
                                                                                                     (integer?/c
                                                                                                      j7463
                                                                                                      k7464
                                                                                                      g7460))
                                                                                                    (x8815
                                                                                                     (integer?/c
                                                                                                      j7463
                                                                                                      k7464
                                                                                                      g7461))
                                                                                                    (x8814
                                                                                                     (TETRA/C
                                                                                                      j7463
                                                                                                      k7464
                                                                                                      g7462)))
                                                                                             (f7465
                                                                                              x8816
                                                                                              x8815
                                                                                              x8814))))
                                                                                   (TETRA/C
                                                                                    j7463
                                                                                    k7464
                                                                                    x8813))))
                                                                         g8812))))
                                                             g8811))
                                                         'module
                                                         'importer
                                                         tetra-move))
                                                       (x8809 (input))
                                                       (x8808 (input))
                                                       (x8799
                                                        (letrec ((x8800
                                                                  (letrec ((x8803
                                                                            (letrec ((x8804
                                                                                      (letrec ((x8807
                                                                                                (input))
                                                                                               (x8805
                                                                                                (letrec ((x8806
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8806
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8807
                                                                                         x8805))))
                                                                              (cons
                                                                               'posn
                                                                               x8804)))
                                                                           (x8801
                                                                            (letrec ((x8802
                                                                                      (input)))
                                                                              (cons
                                                                               x8802
                                                                               '()))))
                                                                    (cons
                                                                     x8803
                                                                     x8801))))
                                                          (cons
                                                           'tetra
                                                           x8800))))
                                                (x8810 x8809 x8808 x8799)))
                                             (g8550
                                              (letrec ((x8826
                                                        ((lambda (j7467
                                                                  k7468
                                                                  f7469)
                                                           (letrec ((g8827
                                                                     (lambda (g7466)
                                                                       (letrec ((g8828
                                                                                 (letrec ((x8829
                                                                                           (letrec ((x8830
                                                                                                     (TETRA/C
                                                                                                      j7467
                                                                                                      k7468
                                                                                                      g7466)))
                                                                                             (f7469
                                                                                              x8830))))
                                                                                   (TETRA/C
                                                                                    j7467
                                                                                    k7468
                                                                                    x8829))))
                                                                         g8828))))
                                                             g8827))
                                                         'module
                                                         'importer
                                                         tetra-rotate-ccw))
                                                       (x8817
                                                        (letrec ((x8818
                                                                  (letrec ((x8821
                                                                            (letrec ((x8822
                                                                                      (letrec ((x8825
                                                                                                (input))
                                                                                               (x8823
                                                                                                (letrec ((x8824
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8824
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8825
                                                                                         x8823))))
                                                                              (cons
                                                                               'posn
                                                                               x8822)))
                                                                           (x8819
                                                                            (letrec ((x8820
                                                                                      (input)))
                                                                              (cons
                                                                               x8820
                                                                               '()))))
                                                                    (cons
                                                                     x8821
                                                                     x8819))))
                                                          (cons
                                                           'tetra
                                                           x8818))))
                                                (x8826 x8817)))
                                             (g8551
                                              (letrec ((x8840
                                                        ((lambda (j7471
                                                                  k7472
                                                                  f7473)
                                                           (letrec ((g8841
                                                                     (lambda (g7470)
                                                                       (letrec ((g8842
                                                                                 (letrec ((x8843
                                                                                           (letrec ((x8844
                                                                                                     (TETRA/C
                                                                                                      j7471
                                                                                                      k7472
                                                                                                      g7470)))
                                                                                             (f7473
                                                                                              x8844))))
                                                                                   (TETRA/C
                                                                                    j7471
                                                                                    k7472
                                                                                    x8843))))
                                                                         g8842))))
                                                             g8841))
                                                         'module
                                                         'importer
                                                         tetra-rotate-cw))
                                                       (x8831
                                                        (letrec ((x8832
                                                                  (letrec ((x8835
                                                                            (letrec ((x8836
                                                                                      (letrec ((x8839
                                                                                                (input))
                                                                                               (x8837
                                                                                                (letrec ((x8838
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8838
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8839
                                                                                         x8837))))
                                                                              (cons
                                                                               'posn
                                                                               x8836)))
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
                                                           'tetra
                                                           x8832))))
                                                (x8840 x8831)))
                                             (g8552
                                              (letrec ((x8855
                                                        ((lambda (j7476
                                                                  k7477
                                                                  f7478)
                                                           (letrec ((g8856
                                                                     (lambda (g7474
                                                                              g7475)
                                                                       (letrec ((g8857
                                                                                 (letrec ((x8858
                                                                                           (letrec ((x8860
                                                                                                     (TETRA/C
                                                                                                      j7476
                                                                                                      k7477
                                                                                                      g7474))
                                                                                                    (x8859
                                                                                                     (BSET/C
                                                                                                      j7476
                                                                                                      k7477
                                                                                                      g7475)))
                                                                                             (f7478
                                                                                              x8860
                                                                                              x8859))))
                                                                                   (boolean?/c
                                                                                    j7476
                                                                                    k7477
                                                                                    x8858))))
                                                                         g8857))))
                                                             g8856))
                                                         'module
                                                         'importer
                                                         tetra-overlaps-blocks?))
                                                       (x8846
                                                        (letrec ((x8847
                                                                  (letrec ((x8850
                                                                            (letrec ((x8851
                                                                                      (letrec ((x8854
                                                                                                (input))
                                                                                               (x8852
                                                                                                (letrec ((x8853
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8853
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8854
                                                                                         x8852))))
                                                                              (cons
                                                                               'posn
                                                                               x8851)))
                                                                           (x8848
                                                                            (letrec ((x8849
                                                                                      (input)))
                                                                              (cons
                                                                               x8849
                                                                               '()))))
                                                                    (cons
                                                                     x8850
                                                                     x8848))))
                                                          (cons 'tetra x8847)))
                                                       (x8845 (input)))
                                                (x8855 x8846 x8845)))
                                             (g8553
                                              (letrec ((x8872
                                                        ((lambda (j7490
                                                                  k7491
                                                                  f7492)
                                                           (letrec ((g8873
                                                                     (lambda (g7479
                                                                              g7480
                                                                              g7481
                                                                              g7482
                                                                              g7483
                                                                              g7484
                                                                              g7485
                                                                              g7486
                                                                              g7487
                                                                              g7488
                                                                              g7489)
                                                                       (letrec ((g8874
                                                                                 (letrec ((x8875
                                                                                           (letrec ((x8886
                                                                                                     (COLOR/C
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7479))
                                                                                                    (x8885
                                                                                                     (real?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7480))
                                                                                                    (x8884
                                                                                                     (real?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7481))
                                                                                                    (x8883
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7482))
                                                                                                    (x8882
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7483))
                                                                                                    (x8881
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7484))
                                                                                                    (x8880
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7485))
                                                                                                    (x8879
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7486))
                                                                                                    (x8878
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7487))
                                                                                                    (x8877
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7488))
                                                                                                    (x8876
                                                                                                     (integer?/c
                                                                                                      j7490
                                                                                                      k7491
                                                                                                      g7489)))
                                                                                             (f7492
                                                                                              x8886
                                                                                              x8885
                                                                                              x8884
                                                                                              x8883
                                                                                              x8882
                                                                                              x8881
                                                                                              x8880
                                                                                              x8879
                                                                                              x8878
                                                                                              x8877
                                                                                              x8876))))
                                                                                   (TETRA/C
                                                                                    j7490
                                                                                    k7491
                                                                                    x8875))))
                                                                         g8874))))
                                                             g8873))
                                                         'module
                                                         'importer
                                                         build-tetra-blocks))
                                                       (x8871 (input))
                                                       (x8870 (input))
                                                       (x8869 (input))
                                                       (x8868 (input))
                                                       (x8867 (input))
                                                       (x8866 (input))
                                                       (x8865 (input))
                                                       (x8864 (input))
                                                       (x8863 (input))
                                                       (x8862 (input))
                                                       (x8861 (input)))
                                                (x8872
                                                 x8871
                                                 x8870
                                                 x8869
                                                 x8868
                                                 x8867
                                                 x8866
                                                 x8865
                                                 x8864
                                                 x8863
                                                 x8862
                                                 x8861)))
                                             (g8554
                                              (letrec ((x8897
                                                        ((lambda (j7495
                                                                  k7496
                                                                  f7497)
                                                           (letrec ((g8898
                                                                     (lambda (g7493
                                                                              g7494)
                                                                       (letrec ((g8899
                                                                                 (letrec ((x8900
                                                                                           (letrec ((x8902
                                                                                                     (TETRA/C
                                                                                                      j7495
                                                                                                      k7496
                                                                                                      g7493))
                                                                                                    (x8901
                                                                                                     (COLOR/C
                                                                                                      j7495
                                                                                                      k7496
                                                                                                      g7494)))
                                                                                             (f7497
                                                                                              x8902
                                                                                              x8901))))
                                                                                   (TETRA/C
                                                                                    j7495
                                                                                    k7496
                                                                                    x8900))))
                                                                         g8899))))
                                                             g8898))
                                                         'module
                                                         'importer
                                                         tetra-change-color))
                                                       (x8888
                                                        (letrec ((x8889
                                                                  (letrec ((x8892
                                                                            (letrec ((x8893
                                                                                      (letrec ((x8896
                                                                                                (input))
                                                                                               (x8894
                                                                                                (letrec ((x8895
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8895
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8896
                                                                                         x8894))))
                                                                              (cons
                                                                               'posn
                                                                               x8893)))
                                                                           (x8890
                                                                            (letrec ((x8891
                                                                                      (input)))
                                                                              (cons
                                                                               x8891
                                                                               '()))))
                                                                    (cons
                                                                     x8892
                                                                     x8890))))
                                                          (cons 'tetra x8889)))
                                                       (x8887 (input)))
                                                (x8897 x8888 x8887)))
                                             (g8555
                                              (letrec ((x8917
                                                        ((lambda (j7500
                                                                  k7501
                                                                  f7502)
                                                           (letrec ((g8918
                                                                     (lambda (g7498
                                                                              g7499)
                                                                       (letrec ((g8919
                                                                                 (letrec ((x8920
                                                                                           (letrec ((x8922
                                                                                                     (WORLD/C
                                                                                                      j7500
                                                                                                      k7501
                                                                                                      g7498))
                                                                                                    (x8921
                                                                                                     (string?/c
                                                                                                      j7500
                                                                                                      k7501
                                                                                                      g7499)))
                                                                                             (f7502
                                                                                              x8922
                                                                                              x8921))))
                                                                                   (WORLD/C
                                                                                    j7500
                                                                                    k7501
                                                                                    x8920))))
                                                                         g8919))))
                                                             g8918))
                                                         'module
                                                         'importer
                                                         world-key-move))
                                                       (x8904
                                                        (letrec ((x8905
                                                                  (letrec ((x8908
                                                                            (letrec ((x8909
                                                                                      (letrec ((x8912
                                                                                                (letrec ((x8913
                                                                                                          (letrec ((x8916
                                                                                                                    (input))
                                                                                                                   (x8914
                                                                                                                    (letrec ((x8915
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8915
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8916
                                                                                                             x8914))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8913)))
                                                                                               (x8910
                                                                                                (letrec ((x8911
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8911
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8912
                                                                                         x8910))))
                                                                              (cons
                                                                               'tetra
                                                                               x8909)))
                                                                           (x8906
                                                                            (letrec ((x8907
                                                                                      (input)))
                                                                              (cons
                                                                               x8907
                                                                               '()))))
                                                                    (cons
                                                                     x8908
                                                                     x8906))))
                                                          (cons 'world x8905)))
                                                       (x8903 (input)))
                                                (x8917 x8904 x8903)))
                                             (g8556
                                              (letrec ((x8937
                                                        ((lambda (j7505
                                                                  k7506
                                                                  f7507)
                                                           (letrec ((g8938
                                                                     (lambda (g7503
                                                                              g7504)
                                                                       (letrec ((g8939
                                                                                 (letrec ((x8940
                                                                                           (letrec ((x8944
                                                                                                     (WORLD/C
                                                                                                      j7505
                                                                                                      k7506
                                                                                                      g7503))
                                                                                                    (x8941
                                                                                                     (letrec ((x8942
                                                                                                               (letrec ((x8943
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8943))))
                                                                                                       (x8942
                                                                                                        j7505
                                                                                                        k7506
                                                                                                        g7504))))
                                                                                             (f7507
                                                                                              x8944
                                                                                              x8941))))
                                                                                   (WORLD/C
                                                                                    j7505
                                                                                    k7506
                                                                                    x8940))))
                                                                         g8939))))
                                                             g8938))
                                                         'module
                                                         'importer
                                                         next-world))
                                                       (x8924
                                                        (letrec ((x8925
                                                                  (letrec ((x8928
                                                                            (letrec ((x8929
                                                                                      (letrec ((x8932
                                                                                                (letrec ((x8933
                                                                                                          (letrec ((x8936
                                                                                                                    (input))
                                                                                                                   (x8934
                                                                                                                    (letrec ((x8935
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8935
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8936
                                                                                                             x8934))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8933)))
                                                                                               (x8930
                                                                                                (letrec ((x8931
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8931
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8932
                                                                                         x8930))))
                                                                              (cons
                                                                               'tetra
                                                                               x8929)))
                                                                           (x8926
                                                                            (letrec ((x8927
                                                                                      (input)))
                                                                              (cons
                                                                               x8927
                                                                               '()))))
                                                                    (cons
                                                                     x8928
                                                                     x8926))))
                                                          (cons 'world x8925)))
                                                       (x8923 (input)))
                                                (x8937 x8924 x8923)))
                                             (g8557
                                              (letrec ((x8958
                                                        ((lambda (j7509
                                                                  k7510
                                                                  f7511)
                                                           (letrec ((g8959
                                                                     (lambda (g7508)
                                                                       (letrec ((g8960
                                                                                 (letrec ((x8961
                                                                                           (letrec ((x8962
                                                                                                     (WORLD/C
                                                                                                      j7509
                                                                                                      k7510
                                                                                                      g7508)))
                                                                                             (f7511
                                                                                              x8962))))
                                                                                   (BSET/C
                                                                                    j7509
                                                                                    k7510
                                                                                    x8961))))
                                                                         g8960))))
                                                             g8959))
                                                         'module
                                                         'importer
                                                         ghost-blocks))
                                                       (x8945
                                                        (letrec ((x8946
                                                                  (letrec ((x8949
                                                                            (letrec ((x8950
                                                                                      (letrec ((x8953
                                                                                                (letrec ((x8954
                                                                                                          (letrec ((x8957
                                                                                                                    (input))
                                                                                                                   (x8955
                                                                                                                    (letrec ((x8956
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8956
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8957
                                                                                                             x8955))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8954)))
                                                                                               (x8951
                                                                                                (letrec ((x8952
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8952
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8953
                                                                                         x8951))))
                                                                              (cons
                                                                               'tetra
                                                                               x8950)))
                                                                           (x8947
                                                                            (letrec ((x8948
                                                                                      (input)))
                                                                              (cons
                                                                               x8948
                                                                               '()))))
                                                                    (cons
                                                                     x8949
                                                                     x8947))))
                                                          (cons
                                                           'world
                                                           x8946))))
                                                (x8958 x8945)))
                                             (g8558
                                              (letrec ((x8964
                                                        ((lambda (j7513
                                                                  k7514
                                                                  f7515)
                                                           (letrec ((g8965
                                                                     (lambda (g7512)
                                                                       (letrec ((g8966
                                                                                 (letrec ((x8967
                                                                                           (letrec ((x8968
                                                                                                     (any/c
                                                                                                      j7513
                                                                                                      k7514
                                                                                                      g7512)))
                                                                                             (f7515
                                                                                              x8968))))
                                                                                   (boolean?/c
                                                                                    j7513
                                                                                    k7514
                                                                                    x8967))))
                                                                         g8966))))
                                                             g8965))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8963 (input)))
                                                (x8964 x8963)))
                                             (g8559
                                              (letrec ((x8971
                                                        ((lambda (j7518
                                                                  k7519
                                                                  f7520)
                                                           (letrec ((g8972
                                                                     (lambda (g7516
                                                                              g7517)
                                                                       (letrec ((g8973
                                                                                 (letrec ((x8974
                                                                                           (letrec ((x8976
                                                                                                     (image?
                                                                                                      j7518
                                                                                                      k7519
                                                                                                      g7516))
                                                                                                    (x8975
                                                                                                     (image?
                                                                                                      j7518
                                                                                                      k7519
                                                                                                      g7517)))
                                                                                             (f7520
                                                                                              x8976
                                                                                              x8975))))
                                                                                   (image?
                                                                                    j7518
                                                                                    k7519
                                                                                    x8974))))
                                                                         g8973))))
                                                             g8972))
                                                         'module
                                                         'importer
                                                         overlay))
                                                       (x8970 (input))
                                                       (x8969 (input)))
                                                (x8971 x8970 x8969)))
                                             (g8560
                                              (letrec ((x8980
                                                        ((lambda (j7524
                                                                  k7525
                                                                  f7526)
                                                           (letrec ((g8981
                                                                     (lambda (g7521
                                                                              g7522
                                                                              g7523)
                                                                       (letrec ((g8982
                                                                                 (letrec ((x8983
                                                                                           (letrec ((x8986
                                                                                                     (real?/c
                                                                                                      j7524
                                                                                                      k7525
                                                                                                      g7521))
                                                                                                    (x8985
                                                                                                     (real?/c
                                                                                                      j7524
                                                                                                      k7525
                                                                                                      g7522))
                                                                                                    (x8984
                                                                                                     (string?/c
                                                                                                      j7524
                                                                                                      k7525
                                                                                                      g7523)))
                                                                                             (f7526
                                                                                              x8986
                                                                                              x8985
                                                                                              x8984))))
                                                                                   (image?
                                                                                    j7524
                                                                                    k7525
                                                                                    x8983))))
                                                                         g8982))))
                                                             g8981))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8979 (input))
                                                       (x8978 (input))
                                                       (x8977 (input)))
                                                (x8980 x8979 x8978 x8977)))
                                             (g8561
                                              (letrec ((x8991
                                                        ((lambda (j7531
                                                                  k7532
                                                                  f7533)
                                                           (letrec ((g8992
                                                                     (lambda (g7527
                                                                              g7528
                                                                              g7529
                                                                              g7530)
                                                                       (letrec ((g8993
                                                                                 (letrec ((x8994
                                                                                           (letrec ((x8998
                                                                                                     (real?/c
                                                                                                      j7531
                                                                                                      k7532
                                                                                                      g7527))
                                                                                                    (x8997
                                                                                                     (real?/c
                                                                                                      j7531
                                                                                                      k7532
                                                                                                      g7528))
                                                                                                    (x8996
                                                                                                     (COLOR/C
                                                                                                      j7531
                                                                                                      k7532
                                                                                                      g7529))
                                                                                                    (x8995
                                                                                                     (COLOR/C
                                                                                                      j7531
                                                                                                      k7532
                                                                                                      g7530)))
                                                                                             (f7533
                                                                                              x8998
                                                                                              x8997
                                                                                              x8996
                                                                                              x8995))))
                                                                                   (image?
                                                                                    j7531
                                                                                    k7532
                                                                                    x8994))))
                                                                         g8993))))
                                                             g8992))
                                                         'module
                                                         'importer
                                                         rectangle))
                                                       (x8990 (input))
                                                       (x8989 (input))
                                                       (x8988 (input))
                                                       (x8987 (input)))
                                                (x8991
                                                 x8990
                                                 x8989
                                                 x8988
                                                 x8987)))
                                             (g8562
                                              (letrec ((x9003
                                                        ((lambda (j7538
                                                                  k7539
                                                                  f7540)
                                                           (letrec ((g9004
                                                                     (lambda (g7534
                                                                              g7535
                                                                              g7536
                                                                              g7537)
                                                                       (letrec ((g9005
                                                                                 (letrec ((x9006
                                                                                           (letrec ((x9010
                                                                                                     (image/c
                                                                                                      j7538
                                                                                                      k7539
                                                                                                      g7534))
                                                                                                    (x9009
                                                                                                     (real?/c
                                                                                                      j7538
                                                                                                      k7539
                                                                                                      g7535))
                                                                                                    (x9008
                                                                                                     (real?/c
                                                                                                      j7538
                                                                                                      k7539
                                                                                                      g7536))
                                                                                                    (x9007
                                                                                                     (image/c
                                                                                                      j7538
                                                                                                      k7539
                                                                                                      g7537)))
                                                                                             (f7540
                                                                                              x9010
                                                                                              x9009
                                                                                              x9008
                                                                                              x9007))))
                                                                                   (image/c
                                                                                    j7538
                                                                                    k7539
                                                                                    x9006))))
                                                                         g9005))))
                                                             g9004))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x9002 (input))
                                                       (x9001 (input))
                                                       (x9000 (input))
                                                       (x8999 (input)))
                                                (x9003
                                                 x9002
                                                 x9001
                                                 x9000
                                                 x8999)))
                                             (g8563
                                              (letrec ((x9013
                                                        ((lambda (j7543
                                                                  k7544
                                                                  f7545)
                                                           (letrec ((g9014
                                                                     (lambda (g7541
                                                                              g7542)
                                                                       (letrec ((g9015
                                                                                 (letrec ((x9016
                                                                                           (letrec ((x9018
                                                                                                     (real?/c
                                                                                                      j7543
                                                                                                      k7544
                                                                                                      g7541))
                                                                                                    (x9017
                                                                                                     (real?/c
                                                                                                      j7543
                                                                                                      k7544
                                                                                                      g7542)))
                                                                                             (f7545
                                                                                              x9018
                                                                                              x9017))))
                                                                                   (image?
                                                                                    j7543
                                                                                    k7544
                                                                                    x9016))))
                                                                         g9015))))
                                                             g9014))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x9012 (input))
                                                       (x9011 (input)))
                                                (x9013 x9012 x9011)))
                                             (g8564
                                              (letrec ((x9020
                                                        ((lambda (j7547
                                                                  k7548
                                                                  f7549)
                                                           (letrec ((g9021
                                                                     (lambda (g7546)
                                                                       (letrec ((g9022
                                                                                 (letrec ((x9023
                                                                                           (letrec ((x9024
                                                                                                     (letrec ((x9025
                                                                                                               (letrec ((x9026
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x9026))))
                                                                                                       (x9025
                                                                                                        j7547
                                                                                                        k7548
                                                                                                        g7546))))
                                                                                             (f7549
                                                                                              x9024))))
                                                                                   (TETRA/C
                                                                                    j7547
                                                                                    k7548
                                                                                    x9023))))
                                                                         g9022))))
                                                             g9021))
                                                         'module
                                                         'importer
                                                         list-pick-random))
                                                       (x9019 (input)))
                                                (x9020 x9019)))
                                             (g8565
                                              (integer?/c
                                               'module
                                               'importer
                                               neg-1))
                                             (g8566
                                              (letrec ((x9040
                                                        ((lambda (j7551
                                                                  k7552
                                                                  f7553)
                                                           (letrec ((g9041
                                                                     (lambda (g7550)
                                                                       (letrec ((g9042
                                                                                 (letrec ((x9043
                                                                                           (letrec ((x9044
                                                                                                     (WORLD/C
                                                                                                      j7551
                                                                                                      k7552
                                                                                                      g7550)))
                                                                                             (f7553
                                                                                              x9044))))
                                                                                   (image/c
                                                                                    j7551
                                                                                    k7552
                                                                                    x9043))))
                                                                         g9042))))
                                                             g9041))
                                                         'module
                                                         'importer
                                                         world->image))
                                                       (x9027
                                                        (letrec ((x9028
                                                                  (letrec ((x9031
                                                                            (letrec ((x9032
                                                                                      (letrec ((x9035
                                                                                                (letrec ((x9036
                                                                                                          (letrec ((x9039
                                                                                                                    (input))
                                                                                                                   (x9037
                                                                                                                    (letrec ((x9038
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x9038
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x9039
                                                                                                             x9037))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x9036)))
                                                                                               (x9033
                                                                                                (letrec ((x9034
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x9034
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x9035
                                                                                         x9033))))
                                                                              (cons
                                                                               'tetra
                                                                               x9032)))
                                                                           (x9029
                                                                            (letrec ((x9030
                                                                                      (input)))
                                                                              (cons
                                                                               x9030
                                                                               '()))))
                                                                    (cons
                                                                     x9031
                                                                     x9029))))
                                                          (cons
                                                           'world
                                                           x9028))))
                                                (x9040 x9027)))
                                             (g8567
                                              (letrec ((x9046
                                                        ((lambda (j7555
                                                                  k7556
                                                                  f7557)
                                                           (letrec ((g9047
                                                                     (lambda (g7554)
                                                                       (letrec ((g9048
                                                                                 (letrec ((x9049
                                                                                           (letrec ((x9050
                                                                                                     (BSET/C
                                                                                                      j7555
                                                                                                      k7556
                                                                                                      g7554)))
                                                                                             (f7557
                                                                                              x9050))))
                                                                                   (image/c
                                                                                    j7555
                                                                                    k7556
                                                                                    x9049))))
                                                                         g9048))))
                                                             g9047))
                                                         'module
                                                         'importer
                                                         blocks->image))
                                                       (x9045 (input)))
                                                (x9046 x9045)))
                                             (g8568
                                              (letrec ((x9058
                                                        ((lambda (j7559
                                                                  k7560
                                                                  f7561)
                                                           (letrec ((g9059
                                                                     (lambda (g7558)
                                                                       (letrec ((g9060
                                                                                 (letrec ((x9061
                                                                                           (letrec ((x9062
                                                                                                     (BLOCK/C
                                                                                                      j7559
                                                                                                      k7560
                                                                                                      g7558)))
                                                                                             (f7561
                                                                                              x9062))))
                                                                                   (image/c
                                                                                    j7559
                                                                                    k7560
                                                                                    x9061))))
                                                                         g9060))))
                                                             g9059))
                                                         'module
                                                         'importer
                                                         block->image))
                                                       (x9051
                                                        (letrec ((x9052
                                                                  (letrec ((x9057
                                                                            (input))
                                                                           (x9053
                                                                            (letrec ((x9056
                                                                                      (input))
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
                                                                     x9057
                                                                     x9053))))
                                                          (cons
                                                           'block
                                                           x9052))))
                                                (x9058 x9051)))
                                             (g8569
                                              (letrec ((x9071
                                                        ((lambda (j7564
                                                                  k7565
                                                                  f7566)
                                                           (letrec ((g9072
                                                                     (lambda (g7562
                                                                              g7563)
                                                                       (letrec ((g9073
                                                                                 (letrec ((x9074
                                                                                           (letrec ((x9076
                                                                                                     (BLOCK/C
                                                                                                      j7564
                                                                                                      k7565
                                                                                                      g7562))
                                                                                                    (x9075
                                                                                                     (image/c
                                                                                                      j7564
                                                                                                      k7565
                                                                                                      g7563)))
                                                                                             (f7566
                                                                                              x9076
                                                                                              x9075))))
                                                                                   (image/c
                                                                                    j7564
                                                                                    k7565
                                                                                    x9074))))
                                                                         g9073))))
                                                             g9072))
                                                         'module
                                                         'importer
                                                         place-block))
                                                       (x9064
                                                        (letrec ((x9065
                                                                  (letrec ((x9070
                                                                            (input))
                                                                           (x9066
                                                                            (letrec ((x9069
                                                                                      (input))
                                                                                     (x9067
                                                                                      (letrec ((x9068
                                                                                                (input)))
                                                                                        (cons
                                                                                         x9068
                                                                                         '()))))
                                                                              (cons
                                                                               x9069
                                                                               x9067))))
                                                                    (cons
                                                                     x9070
                                                                     x9066))))
                                                          (cons 'block x9065)))
                                                       (x9063 (input)))
                                                (x9071 x9064 x9063)))
                                             (g8570
                                              (letrec ((x9078
                                                        ((lambda (j7568
                                                                  k7569
                                                                  f7570)
                                                           (letrec ((g9079
                                                                     (lambda (g7567)
                                                                       (letrec ((g9080
                                                                                 (letrec ((x9081
                                                                                           (letrec ((x9082
                                                                                                     (letrec ((x9083
                                                                                                               (letrec ((x9084
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x9084))))
                                                                                                       (x9083
                                                                                                        j7568
                                                                                                        k7569
                                                                                                        g7567))))
                                                                                             (f7570
                                                                                              x9082))))
                                                                                   (WORLD/C
                                                                                    j7568
                                                                                    k7569
                                                                                    x9081))))
                                                                         g9080))))
                                                             g9079))
                                                         'module
                                                         'importer
                                                         world0))
                                                       (x9077 (input)))
                                                (x9078 x9077))))
                                      g8570))))
                          g7607))))
              g7605)))
    g7604))
