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
                                            (lambda (g7260 g7261 g7262)
                                              (letrec ((g7614
                                                        (letrec ((x-cnd7615
                                                                  (real?
                                                                   g7262)))
                                                          (if x-cnd7615
                                                            g7262
                                                            (blame
                                                             g7260
                                                             'real?)))))
                                                g7614)))
                                           (boolean?/c
                                            (lambda (g7263 g7264 g7265)
                                              (letrec ((g7616
                                                        (letrec ((x-cnd7617
                                                                  (boolean?
                                                                   g7265)))
                                                          (if x-cnd7617
                                                            g7265
                                                            (blame
                                                             g7263
                                                             'boolean?)))))
                                                g7616)))
                                           (number?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7618
                                                        (letrec ((x-cnd7619
                                                                  (number?
                                                                   g7268)))
                                                          (if x-cnd7619
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'number?)))))
                                                g7618)))
                                           (any/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7620
                                                        (letrec ((x-cnd7621
                                                                  ((lambda (v)
                                                                     (letrec ((g7622
                                                                               #t))
                                                                       g7622))
                                                                   g7271)))
                                                          (if x-cnd7621
                                                            g7271
                                                            (blame
                                                             g7269
                                                             '(lambda (v)
                                                                #t))))))
                                                g7620)))
                                           (any?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7623
                                                        (letrec ((x-cnd7624
                                                                  ((lambda (v)
                                                                     (letrec ((g7625
                                                                               #t))
                                                                       g7625))
                                                                   g7274)))
                                                          (if x-cnd7624
                                                            g7274
                                                            (blame
                                                             g7272
                                                             '(lambda (v)
                                                                #t))))))
                                                g7623)))
                                           (cons?/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7626
                                                        (letrec ((x-cnd7627
                                                                  (pair?
                                                                   g7277)))
                                                          (if x-cnd7627
                                                            g7277
                                                            (blame
                                                             g7275
                                                             'pair?)))))
                                                g7626)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7628
                                                        (letrec ((x-cnd7629
                                                                  (pair?
                                                                   g7280)))
                                                          (if x-cnd7629
                                                            g7280
                                                            (blame
                                                             g7278
                                                             'pair?)))))
                                                g7628)))
                                           (integer?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7630
                                                        (letrec ((x-cnd7631
                                                                  (integer?
                                                                   g7283)))
                                                          (if x-cnd7631
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'integer?)))))
                                                g7630)))
                                           (symbol?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7632
                                                        (letrec ((x-cnd7633
                                                                  (symbol?
                                                                   g7286)))
                                                          (if x-cnd7633
                                                            g7286
                                                            (blame
                                                             g7284
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
                                            (lambda (g7287 g7288 g7289)
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
                                                                   g7289)))
                                                          (if x-cnd7649
                                                            g7289
                                                            (blame
                                                             g7287
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7648)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7652 v)) g7652)))
                                           (+
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7654
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7655
                                                                     (letrec ((x7656
                                                                               (letrec ((x7658
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7657
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7658
                                                                                  x7657))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7656))))
                                                             g7655))))
                                                 g7654))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7653 (orig-+ a b)))
                                                 g7653))))
                                           (-
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7660
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7661
                                                                     (letrec ((x7662
                                                                               (letrec ((x7664
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7663
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7664
                                                                                  x7663))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7662))))
                                                             g7661))))
                                                 g7660))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7659 (orig-- a b)))
                                                 g7659))))
                                           (*
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7666
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7667
                                                                     (letrec ((x7668
                                                                               (letrec ((x7670
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7669
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7670
                                                                                  x7669))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7668))))
                                                             g7667))))
                                                 g7666))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7665 (orig-* a b)))
                                                 g7665))))
                                           (/
                                            ((lambda (j7307 k7308 f7309)
                                               (letrec ((g7672
                                                         (lambda (g7305 g7306)
                                                           (letrec ((g7673
                                                                     (letrec ((x7674
                                                                               (letrec ((x7676
                                                                                         (number?/c
                                                                                          j7307
                                                                                          k7308
                                                                                          g7305))
                                                                                        (x7675
                                                                                         (number?/c
                                                                                          j7307
                                                                                          k7308
                                                                                          g7306)))
                                                                                 (f7309
                                                                                  x7676
                                                                                  x7675))))
                                                                       (number?/c
                                                                        j7307
                                                                        k7308
                                                                        x7674))))
                                                             g7673))))
                                                 g7672))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7671 (orig-/ a b)))
                                                 g7671))))
                                           (car
                                            ((lambda (j7311 k7312 f7313)
                                               (letrec ((g7678
                                                         (lambda (g7310)
                                                           (letrec ((g7679
                                                                     (letrec ((x7680
                                                                               (letrec ((x7681
                                                                                         (pair?/c
                                                                                          j7311
                                                                                          k7312
                                                                                          g7310)))
                                                                                 (f7313
                                                                                  x7681))))
                                                                       (any/c
                                                                        j7311
                                                                        k7312
                                                                        x7680))))
                                                             g7679))))
                                                 g7678))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7677 (orig-car p)))
                                                 g7677))))
                                           (cdr
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7683
                                                         (lambda (g7314)
                                                           (letrec ((g7684
                                                                     (letrec ((x7685
                                                                               (letrec ((x7686
                                                                                         (pair?/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7686))))
                                                                       (any/c
                                                                        j7315
                                                                        k7316
                                                                        x7685))))
                                                             g7684))))
                                                 g7683))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7682 (orig-cdr p)))
                                                 g7682))))
                                           (cons
                                            ((lambda (j7320 k7321 f7322)
                                               (letrec ((g7688
                                                         (lambda (g7318 g7319)
                                                           (letrec ((g7689
                                                                     (letrec ((x7690
                                                                               (letrec ((x7692
                                                                                         (any/c
                                                                                          j7320
                                                                                          k7321
                                                                                          g7318))
                                                                                        (x7691
                                                                                         (any/c
                                                                                          j7320
                                                                                          k7321
                                                                                          g7319)))
                                                                                 (f7322
                                                                                  x7692
                                                                                  x7691))))
                                                                       (pair?/c
                                                                        j7320
                                                                        k7321
                                                                        x7690))))
                                                             g7689))))
                                                 g7688))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7687
                                                         (orig-cons a b)))
                                                 g7687))))
                                           (vector-ref
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7694
                                                         (lambda (g7323)
                                                           (letrec ((g7695
                                                                     (letrec ((x7696
                                                                               (letrec ((x7697
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7697))))
                                                                       (integer?/c
                                                                        j7324
                                                                        k7325
                                                                        x7696))))
                                                             g7695))))
                                                 g7694))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7693
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7693))))
                                           (vector-set!
                                            ((lambda (j7329 k7330 f7331)
                                               (letrec ((g7699
                                                         (lambda (g7327 g7328)
                                                           (letrec ((g7700
                                                                     (letrec ((x7701
                                                                               (letrec ((x7703
                                                                                         (vector?/c
                                                                                          j7329
                                                                                          k7330
                                                                                          g7327))
                                                                                        (x7702
                                                                                         (integer?/c
                                                                                          j7329
                                                                                          k7330
                                                                                          g7328)))
                                                                                 (f7331
                                                                                  x7703
                                                                                  x7702))))
                                                                       (any/c
                                                                        j7329
                                                                        k7330
                                                                        x7701))))
                                                             g7700))))
                                                 g7699))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7698
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7698))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7704
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7704)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7705
                                                        (letrec ((x7706
                                                                  (letrec ((x7707
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7707))))
                                                          (cdr x7706))))
                                                g7705)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7708
                                                        (letrec ((x7711
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7711)))
                                                       (g7709
                                                        (letrec ((x7712
                                                                  (list? l)))
                                                          (assert x7712)))
                                                       (g7710
                                                        (letrec ((x-cnd7713
                                                                  (null? l)))
                                                          (if x-cnd7713
                                                            '()
                                                            (letrec ((x7716
                                                                      (letrec ((x7717
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7717)))
                                                                     (x7714
                                                                      (letrec ((x7715
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7715))))
                                                              (cons
                                                               x7716
                                                               x7714))))))
                                                g7710)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7718
                                                        (letrec ((x7719
                                                                  (car x)))
                                                          (cdr x7719))))
                                                g7718)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7720
                                                        (letrec ((x7721
                                                                  (letrec ((x7722
                                                                            (letrec ((x7723
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7723))))
                                                                    (cdr
                                                                     x7722))))
                                                          (car x7721))))
                                                g7720)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7724
                                                        (letrec ((x7725
                                                                  (letrec ((x7726
                                                                            (letrec ((x7727
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7727))))
                                                                    (car
                                                                     x7726))))
                                                          (cdr x7725))))
                                                g7724)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7728
                                                        (letrec ((x7731
                                                                  (string?
                                                                   filename)))
                                                          (assert x7731)))
                                                       (g7729
                                                        (letrec ((x7732
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7732)))
                                                       (g7730
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7733
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7734 res))
                                                            g7734))))
                                                g7730)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7735
                                                        (letrec ((x7736
                                                                  (letrec ((x7737
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7737))))
                                                          (car x7736))))
                                                g7735)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7738
                                                        (letrec ((x7739
                                                                  (letrec ((x7740
                                                                            (letrec ((x7741
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7741))))
                                                                    (car
                                                                     x7740))))
                                                          (cdr x7739))))
                                                g7738)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7742
                                                        (letrec ((x7744
                                                                  (list? l)))
                                                          (assert x7744)))
                                                       (g7743
                                                        (letrec ((x-cnd7745
                                                                  (null? l)))
                                                          (if x-cnd7745
                                                            #f
                                                            (letrec ((x-cnd7746
                                                                      (letrec ((x7747
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7747
                                                                         k))))
                                                              (if x-cnd7746
                                                                (car l)
                                                                (letrec ((x7748
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7748))))))))
                                                g7743)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7749
                                                        (letrec ((x7750
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7750))))
                                                g7749)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7751
                                                        (letrec ((x7753
                                                                  (list? l)))
                                                          (assert x7753)))
                                                       (g7752
                                                        (letrec ((x-cnd7754
                                                                  (null? l)))
                                                          (if x-cnd7754
                                                            ""
                                                            (letrec ((x7757
                                                                      (letrec ((x7758
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7758)))
                                                                     (x7755
                                                                      (letrec ((x7756
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7756))))
                                                              (string-append
                                                               x7757
                                                               x7755))))))
                                                g7752)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7759
                                                        (letrec ((x7762
                                                                  (char? c1)))
                                                          (assert x7762)))
                                                       (g7760
                                                        (letrec ((x7763
                                                                  (char? c2)))
                                                          (assert x7763)))
                                                       (g7761
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7764
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7764))))
                                                g7761)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (letrec ((x7768
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7768))))
                                                                    (cdr
                                                                     x7767))))
                                                          (cdr x7766))))
                                                g7765)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7769
                                                        (letrec ((x7772
                                                                  (list? l)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((x7773
                                                                  (number?)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((x-cnd7774
                                                                  (zero? k)))
                                                          (if x-cnd7774
                                                            x
                                                            (letrec ((x7776
                                                                      (cdr x))
                                                                     (x7775
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7776
                                                               x7775))))))
                                                g7771)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7777 '())) g7777)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7778
                                                        (letrec ((x-cnd7779
                                                                  (letrec ((x7780
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7780))))
                                                          (if x-cnd7779
                                                            (letrec ((x7781
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7781))
                                                            #f))))
                                                g7778)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7782
                                                        (letrec ((x7784
                                                                  (number? x)))
                                                          (assert x7784)))
                                                       (g7783
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7785
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7786
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7786)))))
                                                            g7785))))
                                                g7783)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7787
                                                        (letrec ((val7244
                                                                  (letrec ((x7788
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7788
                                                                     9))))
                                                          (letrec ((g7789
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7790
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7790
                                                                                   10))))
                                                                        (letrec ((g7791
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7792
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7792
                                                                                       32)))))
                                                                          g7791)))))
                                                            g7789))))
                                                g7787)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7793
                                                        (letrec ((x7794
                                                                  (letrec ((x7795
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7795))))
                                                          (cdr x7794))))
                                                g7793)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7796
                                                        (letrec ((x7798
                                                                  (number? x)))
                                                          (assert x7798)))
                                                       (g7797 (> x 0)))
                                                g7797)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7799 #f)) g7799)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (cdr x)))
                                                          (cdr x7801))))
                                                g7800)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7802
                                                        (letrec ((x7804
                                                                  (number? x)))
                                                          (assert x7804)))
                                                       (g7803
                                                        (letrec ((x-cnd7805
                                                                  (< x 0)))
                                                          (if x-cnd7805
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7803)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7806
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7807
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x-cnd7808
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7808
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7809
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x-cnd7810
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7810
                                                                                                  (letrec ((x-cnd7811
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7811
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7812
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x-cnd7813
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7813
                                                                                                                (letrec ((x-cnd7814
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7814
                                                                                                                    (letrec ((x-cnd7815
                                                                                                                              (letrec ((x7817
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7816
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7817
                                                                                                                                 x7816))))
                                                                                                                      (if x-cnd7815
                                                                                                                        (letrec ((x7819
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7818
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7819
                                                                                                                           x7818))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7820
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x-cnd7821
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7821
                                                                                                                    (letrec ((x-cnd7822
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7822
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7823
                                                                                                                                    (letrec ((x-cnd7824
                                                                                                                                              (letrec ((x7825
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7825
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7824
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7826
                                                                                                                                                              (letrec ((val7250
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7827
                                                                                                                                                                          (if val7250
                                                                                                                                                                            val7250
                                                                                                                                                                            (letrec ((x-cnd7828
                                                                                                                                                                                      (letrec ((x7830
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7829
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7830
                                                                                                                                                                                         x7829))))
                                                                                                                                                                              (if x-cnd7828
                                                                                                                                                                                (letrec ((x7831
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7831))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7827))))
                                                                                                                                                      g7826))))
                                                                                                                                          (letrec ((g7832
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7832))
                                                                                                                                        #f))))
                                                                                                                            g7823))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7820)))))
                                                                                        g7812)))))
                                                                          g7809)))))
                                                            g7807))))
                                                g7806)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7833
                                                        (letrec ((x7834
                                                                  (letrec ((x7835
                                                                            (letrec ((x7836
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7836))))
                                                                    (car
                                                                     x7835))))
                                                          (cdr x7834))))
                                                g7833)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7837
                                                        (letrec ((x7838
                                                                  (letrec ((x7839
                                                                            (letrec ((x7840
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7840))))
                                                                    (car
                                                                     x7839))))
                                                          (car x7838))))
                                                g7837)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7841 (eq? x y)))
                                                g7841)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7842
                                                        (letrec ((x7844
                                                                  (number? x)))
                                                          (assert x7844)))
                                                       (g7843
                                                        (letrec ((val7251
                                                                  (> x y)))
                                                          (letrec ((g7845
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7846
                                                                                  (if val7252
                                                                                    val7252
                                                                                    #f)))
                                                                          g7846)))))
                                                            g7845))))
                                                g7843)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7847
                                                        (letrec ((x7850
                                                                  (string?
                                                                   filename)))
                                                          (assert x7850)))
                                                       (g7848
                                                        (letrec ((x7851
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7851)))
                                                       (g7849
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7852
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7853 res))
                                                            g7853))))
                                                g7849)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7854 (cons x '())))
                                                g7854)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7855
                                                        (letrec ((x7858
                                                                  (char? c1)))
                                                          (assert x7858)))
                                                       (g7856
                                                        (letrec ((x7859
                                                                  (char? c2)))
                                                          (assert x7859)))
                                                       (g7857
                                                        (letrec ((val7253
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7860
                                                                    (if val7253
                                                                      val7253
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7860))))
                                                g7857)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7861
                                                        (letrec ((x7862
                                                                  (letrec ((x7863
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7863))))
                                                          (cdr x7862))))
                                                g7861)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7864
                                                        (letrec ((x7865
                                                                  (letrec ((x7866
                                                                            (letrec ((x7867
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7867))))
                                                                    (car
                                                                     x7866))))
                                                          (cdr x7865))))
                                                g7864)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7868
                                                        (letrec ((x7869
                                                                  (letrec ((x7870
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7870))))
                                                          (car x7869))))
                                                g7868)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7873
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7873))))
                                                          (car x7872))))
                                                g7871)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7874
                                                        (letrec ((x7877
                                                                  (char? c1)))
                                                          (assert x7877)))
                                                       (g7875
                                                        (letrec ((x7878
                                                                  (char? c2)))
                                                          (assert x7878)))
                                                       (g7876
                                                        (letrec ((x7879
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7879))))
                                                g7876)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7880
                                                        (letrec ((x7881
                                                                  (letrec ((x7882
                                                                            (letrec ((x7883
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7883))))
                                                                    (car
                                                                     x7882))))
                                                          (car x7881))))
                                                g7880)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7884
                                                        (letrec ((x7886
                                                                  (number? x)))
                                                          (assert x7886)))
                                                       (g7885 (< x 0)))
                                                g7885)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7887 (memq e l)))
                                                g7887)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7888
                                                        (letrec ((x7889
                                                                  (letrec ((x7890
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7890))))
                                                          (car x7889))))
                                                g7888)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7891 '())) g7891)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7892
                                                        (letrec ((x7894
                                                                  (list? l)))
                                                          (assert x7894)))
                                                       (g7893
                                                        (letrec ((x-cnd7895
                                                                  (null? l)))
                                                          (if x-cnd7895
                                                            '()
                                                            (letrec ((x7898
                                                                      (letrec ((x7899
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7899)))
                                                                     (x7896
                                                                      (letrec ((x7897
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7897))))
                                                              (append
                                                               x7898
                                                               x7896))))))
                                                g7893)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7900
                                                        (letrec ((x7901
                                                                  (letrec ((x7902
                                                                            (letrec ((x7903
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7903))))
                                                                    (car
                                                                     x7902))))
                                                          (car x7901))))
                                                g7900)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7904
                                                        (letrec ((x7905
                                                                  (letrec ((x7906
                                                                            (letrec ((x7907
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7907))))
                                                                    (cdr
                                                                     x7906))))
                                                          (cdr x7905))))
                                                g7904)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7908
                                                        (letrec ((x7910
                                                                  (number? x)))
                                                          (assert x7910)))
                                                       (g7909
                                                        (letrec ((x7911
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7911))))
                                                g7909)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7912
                                                        (letrec ((x7913
                                                                  (letrec ((x7914
                                                                            (letrec ((x7915
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7915))))
                                                                    (car
                                                                     x7914))))
                                                          (car x7913))))
                                                g7912)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7916
                                                        (letrec ((x7919
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7919)))
                                                       (g7917
                                                        (letrec ((x7920
                                                                  (list?
                                                                   args)))
                                                          (assert x7920)))
                                                       (g7918
                                                        (letrec ((x-cnd7921
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7921
                                                            (letrec ((g7922
                                                                      (proc)))
                                                              g7922)
                                                            (letrec ((x-cnd7923
                                                                      (letrec ((x7924
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7924))))
                                                              (if x-cnd7923
                                                                (letrec ((g7925
                                                                          (letrec ((x7926
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7926))))
                                                                  g7925)
                                                                (letrec ((x-cnd7927
                                                                          (letrec ((x7928
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7928))))
                                                                  (if x-cnd7927
                                                                    (letrec ((g7929
                                                                              (letrec ((x7931
                                                                                        (car
                                                                                         args))
                                                                                       (x7930
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7931
                                                                                 x7930))))
                                                                      g7929)
                                                                    (letrec ((x-cnd7932
                                                                              (letrec ((x7933
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7933))))
                                                                      (if x-cnd7932
                                                                        (letrec ((g7934
                                                                                  (letrec ((x7937
                                                                                            (car
                                                                                             args))
                                                                                           (x7936
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7935
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7937
                                                                                     x7936
                                                                                     x7935))))
                                                                          g7934)
                                                                        (letrec ((x-cnd7938
                                                                                  (letrec ((x7939
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7939))))
                                                                          (if x-cnd7938
                                                                            (letrec ((g7940
                                                                                      (letrec ((x7944
                                                                                                (car
                                                                                                 args))
                                                                                               (x7943
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7942
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7941
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7944
                                                                                         x7943
                                                                                         x7942
                                                                                         x7941))))
                                                                              g7940)
                                                                            (letrec ((x-cnd7945
                                                                                      (letrec ((x7946
                                                                                                (letrec ((x7947
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7947))))
                                                                                        (null?
                                                                                         x7946))))
                                                                              (if x-cnd7945
                                                                                (letrec ((g7948
                                                                                          (letrec ((x7954
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7953
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7952
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7951
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7949
                                                                                                    (letrec ((x7950
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7950))))
                                                                                            (proc
                                                                                             x7954
                                                                                             x7953
                                                                                             x7952
                                                                                             x7951
                                                                                             x7949))))
                                                                                  g7948)
                                                                                (letrec ((x-cnd7955
                                                                                          (letrec ((x7956
                                                                                                    (letrec ((x7957
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7957))))
                                                                                            (null?
                                                                                             x7956))))
                                                                                  (if x-cnd7955
                                                                                    (letrec ((g7958
                                                                                              (letrec ((x7966
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7965
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7964
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7963
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7961
                                                                                                        (letrec ((x7962
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7962)))
                                                                                                       (x7959
                                                                                                        (letrec ((x7960
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7960))))
                                                                                                (proc
                                                                                                 x7966
                                                                                                 x7965
                                                                                                 x7964
                                                                                                 x7963
                                                                                                 x7961
                                                                                                 x7959))))
                                                                                      g7958)
                                                                                    (letrec ((x-cnd7967
                                                                                              (letrec ((x7968
                                                                                                        (letrec ((x7969
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7969))))
                                                                                                (null?
                                                                                                 x7968))))
                                                                                      (if x-cnd7967
                                                                                        (letrec ((g7970
                                                                                                  (letrec ((x7980
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x7979
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x7978
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x7977
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x7975
                                                                                                            (letrec ((x7976
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7976)))
                                                                                                           (x7973
                                                                                                            (letrec ((x7974
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7974)))
                                                                                                           (x7971
                                                                                                            (letrec ((x7972
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7972))))
                                                                                                    (proc
                                                                                                     x7980
                                                                                                     x7979
                                                                                                     x7978
                                                                                                     x7977
                                                                                                     x7975
                                                                                                     x7973
                                                                                                     x7971))))
                                                                                          g7970)
                                                                                        (letrec ((g7981
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7981)))))))))))))))))))
                                                g7918)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7982
                                                        (letrec ((x7984
                                                                  (list? l)))
                                                          (assert x7984)))
                                                       (g7983
                                                        (letrec ((x-cnd7985
                                                                  (null? l)))
                                                          (if x-cnd7985
                                                            #f
                                                            (letrec ((x-cnd7986
                                                                      (letrec ((x7987
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7987
                                                                         e))))
                                                              (if x-cnd7986
                                                                l
                                                                (letrec ((x7988
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7988))))))))
                                                g7983)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7989
                                                        (letrec ((x7990
                                                                  (letrec ((x7991
                                                                            (letrec ((x7992
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7992))))
                                                                    (cdr
                                                                     x7991))))
                                                          (cdr x7990))))
                                                g7989)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7993
                                                        (letrec ((x7994
                                                                  (letrec ((x7995
                                                                            (letrec ((x7996
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7996))))
                                                                    (cdr
                                                                     x7995))))
                                                          (car x7994))))
                                                g7993)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7997 (random 42)))
                                                g7997)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7998
                                                        (letrec ((x8000
                                                                  (number? x)))
                                                          (assert x8000)))
                                                       (g7999 (= x 0)))
                                                g7999)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8001
                                                        (letrec ((val7254
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8002
                                                                    (if val7254
                                                                      val7254
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8002))))
                                                g8001)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (cdr x)))
                                                          (car x8004))))
                                                g8003)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8005
                                                        (letrec ((val7255
                                                                  (letrec ((x-cnd8006
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8006
                                                                      (letrec ((x8007
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8007))
                                                                      #f))))
                                                          (letrec ((g8008
                                                                    (if val7255
                                                                      val7255
                                                                      (null?
                                                                       l))))
                                                            g8008))))
                                                g8005)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8009
                                                        (letrec ((x8010
                                                                  (letrec ((x8011
                                                                            (letrec ((x8012
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8012))))
                                                                    (cdr
                                                                     x8011))))
                                                          (cdr x8010))))
                                                g8009)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8013
                                                        (letrec ((x-cnd8014
                                                                  (letrec ((x8015
                                                                            #\0))
                                                                    (char<=?
                                                                     x8015
                                                                     c))))
                                                          (if x-cnd8014
                                                            (letrec ((x8016
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8016))
                                                            #f))))
                                                g8013)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8017
                                                        (letrec ((x8019
                                                                  (list? l)))
                                                          (assert x8019)))
                                                       (g8018
                                                        (letrec ((x-cnd8020
                                                                  (null? l)))
                                                          (if x-cnd8020
                                                            #f
                                                            (letrec ((x-cnd8021
                                                                      (letrec ((x8022
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8022
                                                                         k))))
                                                              (if x-cnd8021
                                                                (car l)
                                                                (letrec ((x8023
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8023))))))))
                                                g8018)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8024 (if x #f #t)))
                                                g8024)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8025 (append l1 l2)))
                                                g8025)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8031
                                                                         e))))
                                                              (if x-cnd8030
                                                                l
                                                                (letrec ((x8032
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8032))))))))
                                                g8027)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8033
                                                        (letrec ((x8034
                                                                  (letrec ((x8035
                                                                            (letrec ((x8036
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8036))))
                                                                    (cdr
                                                                     x8035))))
                                                          (car x8034))))
                                                g8033)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8037
                                                        (letrec ((x8039
                                                                  (list? l)))
                                                          (assert x8039)))
                                                       (g8038
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8040
                                                                              (letrec ((x-cnd8041
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8041
                                                                                  0
                                                                                  (letrec ((x8042
                                                                                            (letrec ((x8043
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8043))))
                                                                                    (+
                                                                                     1
                                                                                     x8042))))))
                                                                      g8040))))
                                                          (letrec ((g8044
                                                                    (rec l)))
                                                            g8044))))
                                                g8038)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8045
                                                        (letrec ((x8048
                                                                  (char? c1)))
                                                          (assert x8048)))
                                                       (g8046
                                                        (letrec ((x8049
                                                                  (char? c2)))
                                                          (assert x8049)))
                                                       (g8047
                                                        (letrec ((val7256
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8050
                                                                    (if val7256
                                                                      val7256
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8050))))
                                                g8047)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8051
                                                        (letrec ((x8052
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8052))))
                                                g8051)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8053
                                                        (letrec ((x8054
                                                                  (letrec ((x8055
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8055))))
                                                          (cdr x8054))))
                                                g8053)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8056
                                                        (letrec ((x8058
                                                                  (list? l)))
                                                          (assert x8058)))
                                                       (g8057
                                                        (letrec ((x-cnd8059
                                                                  (null? l)))
                                                          (if x-cnd8059
                                                            #f
                                                            (letrec ((x-cnd8060
                                                                      (letrec ((x8061
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8061
                                                                         k))))
                                                              (if x-cnd8060
                                                                (car l)
                                                                (letrec ((x8062
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8062))))))))
                                                g8057)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8063
                                                        (letrec ((x8064
                                                                  (car x)))
                                                          (car x8064))))
                                                g8063)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8065
                                                        (letrec ((x8068
                                                                  (char? c1)))
                                                          (assert x8068)))
                                                       (g8066
                                                        (letrec ((x8069
                                                                  (char? c2)))
                                                          (assert x8069)))
                                                       (g8067
                                                        (letrec ((x8070
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8070))))
                                                g8067)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8071
                                                        (letrec ((val7257
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8072
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8072))))
                                                g8071)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8073
                                                        (letrec ((x8076
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8076)))
                                                       (g8074
                                                        (letrec ((x8077
                                                                  (list? l)))
                                                          (assert x8077)))
                                                       (g8075
                                                        (letrec ((x-cnd8078
                                                                  (null? l)))
                                                          (if x-cnd8078
                                                            #t
                                                            (letrec ((x-cnd8079
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8079
                                                                (letrec ((g8080
                                                                          (letrec ((x8082
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8082)))
                                                                         (g8081
                                                                          (letrec ((x8083
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8083))))
                                                                  g8081)
                                                                '()))))))
                                                g8075)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8084
                                                        (letrec ((x8086
                                                                  (number? x)))
                                                          (assert x8086)))
                                                       (g8085
                                                        (letrec ((x-cnd8087
                                                                  (< x 0)))
                                                          (if x-cnd8087
                                                            (- 0 x)
                                                            x))))
                                                g8085)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8088
                                                        (letrec ((x8091
                                                                  (char? c1)))
                                                          (assert x8091)))
                                                       (g8089
                                                        (letrec ((x8092
                                                                  (char? c2)))
                                                          (assert x8092)))
                                                       (g8090
                                                        (letrec ((val7258
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8093
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8093))))
                                                g8090)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8094
                                                        (letrec ((x8095
                                                                  (letrec ((x8096
                                                                            (letrec ((x8097
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8097))))
                                                                    (cdr
                                                                     x8096))))
                                                          (car x8095))))
                                                g8094)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8098 #f)) g8098)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8099
                                                        (letrec ((x8101
                                                                  (letrec ((x8102
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8102)))
                                                                 (x8100
                                                                  (gcd m n)))
                                                          (/ x8101 x8100))))
                                                g8099)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8103
                                                        (letrec ((x8105
                                                                  (number? x)))
                                                          (assert x8105)))
                                                       (g8104
                                                        (letrec ((x8106
                                                                  (<= x y)))
                                                          (not x8106))))
                                                g8104)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8107
                                                        (letrec ((x8111
                                                                  (list? l)))
                                                          (assert x8111)))
                                                       (g8108
                                                        (letrec ((x8112
                                                                  (number?
                                                                   index)))
                                                          (assert x8112)))
                                                       (g8109
                                                        (letrec ((x8113
                                                                  (letrec ((x8114
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8114))))
                                                          (assert x8113)))
                                                       (g8110
                                                        (letrec ((x-cnd8115
                                                                  (= index 0)))
                                                          (if x-cnd8115
                                                            (car l)
                                                            (letrec ((x8117
                                                                      (cdr l))
                                                                     (x8116
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8117
                                                               x8116))))))
                                                g8110)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8118
                                                        (letrec ((x-cnd8119
                                                                  (= b 0)))
                                                          (if x-cnd8119
                                                            a
                                                            (letrec ((x8120
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8120))))))
                                                g8118)))
                                           (block
                                            (lambda (x7575 y7576 color7577)
                                              (letrec ((g8121
                                                        (letrec ((x8122
                                                                  (letrec ((x8123
                                                                            (letrec ((x8124
                                                                                      (cons
                                                                                       color7577
                                                                                       '())))
                                                                              (cons
                                                                               y7576
                                                                               x8124))))
                                                                    (cons
                                                                     x7575
                                                                     x8123))))
                                                          (cons
                                                           'block
                                                           x8122))))
                                                g8121)))
                                           (block?
                                            (lambda (block7574)
                                              (letrec ((g8125
                                                        (letrec ((x8126
                                                                  (car
                                                                   block7574)))
                                                          (eq? x8126 'block))))
                                                g8125)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8127
                                                        (letrec ((x8128
                                                                  (cdr block)))
                                                          (car x8128))))
                                                g8127)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8129
                                                        (letrec ((x8130
                                                                  (letrec ((x8131
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x8131))))
                                                          (car x8130))))
                                                g8129)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8132
                                                        (letrec ((x8133
                                                                  (letrec ((x8134
                                                                            (letrec ((x8135
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8135))))
                                                                    (cdr
                                                                     x8134))))
                                                          (car x8133))))
                                                g8132)))
                                           (tetra
                                            (lambda (center7582 blocks7583)
                                              (letrec ((g8136
                                                        (letrec ((x8137
                                                                  (letrec ((x8138
                                                                            (cons
                                                                             blocks7583
                                                                             '())))
                                                                    (cons
                                                                     center7582
                                                                     x8138))))
                                                          (cons
                                                           'tetra
                                                           x8137))))
                                                g8136)))
                                           (tetra?
                                            (lambda (tetra7581)
                                              (letrec ((g8139
                                                        (letrec ((x8140
                                                                  (car
                                                                   tetra7581)))
                                                          (eq? x8140 'tetra))))
                                                g8139)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8141
                                                        (letrec ((x8142
                                                                  (cdr tetra)))
                                                          (car x8142))))
                                                g8141)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8143
                                                        (letrec ((x8144
                                                                  (letrec ((x8145
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x8145))))
                                                          (car x8144))))
                                                g8143)))
                                           (world
                                            (lambda (tetra7587 blocks7588)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (letrec ((x8148
                                                                            (cons
                                                                             blocks7588
                                                                             '())))
                                                                    (cons
                                                                     tetra7587
                                                                     x8148))))
                                                          (cons
                                                           'world
                                                           x8147))))
                                                g8146)))
                                           (world?
                                            (lambda (world7586)
                                              (letrec ((g8149
                                                        (letrec ((x8150
                                                                  (car
                                                                   world7586)))
                                                          (eq? x8150 'world))))
                                                g8149)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8151
                                                        (letrec ((x8152
                                                                  (cdr world)))
                                                          (car x8152))))
                                                g8151)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8153
                                                        (letrec ((x8154
                                                                  (letrec ((x8155
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8155))))
                                                          (car x8154))))
                                                g8153)))
                                           (posn
                                            (lambda (x7592 y7593)
                                              (letrec ((g8156
                                                        (letrec ((x8157
                                                                  (letrec ((x8158
                                                                            (cons
                                                                             y7593
                                                                             '())))
                                                                    (cons
                                                                     x7592
                                                                     x8158))))
                                                          (cons 'posn x8157))))
                                                g8156)))
                                           (posn?
                                            (lambda (posn7591)
                                              (letrec ((g8159
                                                        (letrec ((x8160
                                                                  (car
                                                                   posn7591)))
                                                          (eq? x8160 'posn))))
                                                g8159)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8161
                                                        (letrec ((x8162
                                                                  (cdr posn)))
                                                          (car x8162))))
                                                g8161)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8163
                                                        (letrec ((x8164
                                                                  (letrec ((x8165
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x8165))))
                                                          (car x8164))))
                                                g8163)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7333 k7334 v7332)
                                              (letrec ((g8166
                                                        (letrec ((checked7335
                                                                  (letrec ((x8167
                                                                            (letrec ((x8168
                                                                                      (cdr
                                                                                       v7332)))
                                                                              (car
                                                                               x8168))))
                                                                    (real?/c
                                                                     j7333
                                                                     k7334
                                                                     x8167))))
                                                          (letrec ((g8169
                                                                    (letrec ((checked7336
                                                                              (letrec ((x8170
                                                                                        (letrec ((x8171
                                                                                                  (letrec ((x8172
                                                                                                            (cdr
                                                                                                             v7332)))
                                                                                                    (cdr
                                                                                                     x8172))))
                                                                                          (car
                                                                                           x8171))))
                                                                                (real?/c
                                                                                 j7333
                                                                                 k7334
                                                                                 x8170))))
                                                                      (letrec ((g8173
                                                                                (letrec ((x8174
                                                                                          (letrec ((x8175
                                                                                                    (cons
                                                                                                     checked7336
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7335
                                                                                             x8175))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8174))))
                                                                        g8173))))
                                                            g8169))))
                                                g8166)))
                                           (BLOCK/C
                                            (lambda (j7339 k7340 v7338)
                                              (letrec ((g8176
                                                        (letrec ((checked7341
                                                                  (letrec ((x8177
                                                                            (letrec ((x8178
                                                                                      (cdr
                                                                                       v7338)))
                                                                              (car
                                                                               x8178))))
                                                                    (real?/c
                                                                     j7339
                                                                     k7340
                                                                     x8177))))
                                                          (letrec ((g8179
                                                                    (letrec ((checked7342
                                                                              (letrec ((x8180
                                                                                        (letrec ((x8181
                                                                                                  (letrec ((x8182
                                                                                                            (cdr
                                                                                                             v7338)))
                                                                                                    (cdr
                                                                                                     x8182))))
                                                                                          (car
                                                                                           x8181))))
                                                                                (real?/c
                                                                                 j7339
                                                                                 k7340
                                                                                 x8180))))
                                                                      (letrec ((g8183
                                                                                (letrec ((checked7343
                                                                                          (letrec ((x8184
                                                                                                    (letrec ((x8185
                                                                                                              (letrec ((x8186
                                                                                                                        (letrec ((x8187
                                                                                                                                  (cdr
                                                                                                                                   v7338)))
                                                                                                                          (cdr
                                                                                                                           x8187))))
                                                                                                                (cdr
                                                                                                                 x8186))))
                                                                                                      (car
                                                                                                       x8185))))
                                                                                            (COLOR/C
                                                                                             j7339
                                                                                             k7340
                                                                                             x8184))))
                                                                                  (letrec ((g8188
                                                                                            (letrec ((x8189
                                                                                                      (letrec ((x8190
                                                                                                                (letrec ((x8191
                                                                                                                          (cons
                                                                                                                           checked7343
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7342
                                                                                                                   x8191))))
                                                                                                        (cons
                                                                                                         checked7341
                                                                                                         x8190))))
                                                                                              (cons
                                                                                               block
                                                                                               x8189))))
                                                                                    g8188))))
                                                                        g8183))))
                                                            g8179))))
                                                g8176)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7346 k7347 v7345)
                                              (letrec ((g8192
                                                        (letrec ((checked7348
                                                                  (letrec ((x8193
                                                                            (letrec ((x8194
                                                                                      (cdr
                                                                                       v7345)))
                                                                              (car
                                                                               x8194))))
                                                                    (POSN/C
                                                                     j7346
                                                                     k7347
                                                                     x8193))))
                                                          (letrec ((g8195
                                                                    (letrec ((checked7349
                                                                              (letrec ((x8196
                                                                                        (letrec ((x8197
                                                                                                  (letrec ((x8198
                                                                                                            (cdr
                                                                                                             v7345)))
                                                                                                    (cdr
                                                                                                     x8198))))
                                                                                          (car
                                                                                           x8197))))
                                                                                (BSET/C
                                                                                 j7346
                                                                                 k7347
                                                                                 x8196))))
                                                                      (letrec ((g8199
                                                                                (letrec ((x8200
                                                                                          (letrec ((x8201
                                                                                                    (cons
                                                                                                     checked7349
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7348
                                                                                             x8201))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8200))))
                                                                        g8199))))
                                                            g8195))))
                                                g8192)))
                                           (WORLD/C
                                            (lambda (j7352 k7353 v7351)
                                              (letrec ((g8202
                                                        (letrec ((checked7354
                                                                  (letrec ((x8203
                                                                            (letrec ((x8204
                                                                                      (cdr
                                                                                       v7351)))
                                                                              (car
                                                                               x8204))))
                                                                    (TETRA/C
                                                                     j7352
                                                                     k7353
                                                                     x8203))))
                                                          (letrec ((g8205
                                                                    (letrec ((checked7355
                                                                              (letrec ((x8206
                                                                                        (letrec ((x8207
                                                                                                  (letrec ((x8208
                                                                                                            (cdr
                                                                                                             v7351)))
                                                                                                    (cdr
                                                                                                     x8208))))
                                                                                          (car
                                                                                           x8207))))
                                                                                (BSET/C
                                                                                 j7352
                                                                                 k7353
                                                                                 x8206))))
                                                                      (letrec ((g8209
                                                                                (letrec ((x8210
                                                                                          (letrec ((x8211
                                                                                                    (cons
                                                                                                     checked7355
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7354
                                                                                             x8211))))
                                                                                  (cons
                                                                                   world
                                                                                   x8210))))
                                                                        g8209))))
                                                            g8205))))
                                                g8202)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8212
                                                        (letrec ((x-cnd8213
                                                                  (letrec ((x8215
                                                                            (posn-x
                                                                             p1))
                                                                           (x8214
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8215
                                                                     x8214))))
                                                          (if x-cnd8213
                                                            (letrec ((x8217
                                                                      (posn-y
                                                                       p1))
                                                                     (x8216
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8217 x8216))
                                                            #f))))
                                                g8212)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8218
                                                        (letrec ((x-cnd8219
                                                                  (letrec ((x8221
                                                                            (block-x
                                                                             b1))
                                                                           (x8220
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8221
                                                                     x8220))))
                                                          (if x-cnd8219
                                                            (letrec ((x8223
                                                                      (block-y
                                                                       b1))
                                                                     (x8222
                                                                      (block-y
                                                                       b2)))
                                                              (= x8223 x8222))
                                                            #f))))
                                                g8218)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8224
                                                        (letrec ((x8228
                                                                  (letrec ((x8229
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8229)))
                                                                 (x8226
                                                                  (letrec ((x8227
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8227)))
                                                                 (x8225
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8228
                                                           x8226
                                                           x8225))))
                                                g8224)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8230
                                                        (letrec ((x8237
                                                                  (letrec ((x8241
                                                                            (posn-x
                                                                             c))
                                                                           (x8238
                                                                            (letrec ((x8240
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8239
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8240
                                                                               x8239))))
                                                                    (+
                                                                     x8241
                                                                     x8238)))
                                                                 (x8232
                                                                  (letrec ((x8236
                                                                            (posn-y
                                                                             c))
                                                                           (x8233
                                                                            (letrec ((x8235
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8234
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8235
                                                                               x8234))))
                                                                    (+
                                                                     x8236
                                                                     x8233)))
                                                                 (x8231
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8237
                                                           x8232
                                                           x8231))))
                                                g8230)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8242
                                                        (letrec ((x8243
                                                                  (letrec ((x8244
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8244))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8243))))
                                                g8242)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8245
                                                        (letrec ((x-cnd8246
                                                                  (null? xs)))
                                                          (if x-cnd8246
                                                            (letrec ((g8247
                                                                      #f))
                                                              g8247)
                                                            (letrec ((g8248
                                                                      (letrec ((x8251
                                                                                (letrec ((x8252
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8252)))
                                                                               (x8249
                                                                                (letrec ((x8250
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8250))))
                                                                        (or x8251
                                                                            x8249))))
                                                              g8248)))))
                                                g8245)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8253
                                                        (letrec ((x-cnd8254
                                                                  (null? xs)))
                                                          (if x-cnd8254
                                                            (letrec ((g8255
                                                                      #t))
                                                              g8255)
                                                            (letrec ((g8256
                                                                      (letrec ((x8259
                                                                                (letrec ((x8260
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8260)))
                                                                               (x8257
                                                                                (letrec ((x8258
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8258))))
                                                                        (and x8259
                                                                             x8257))))
                                                              g8256)))))
                                                g8253)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8261
                                                        (letrec ((x-cnd8262
                                                                  (null? xs)))
                                                          (if x-cnd8262
                                                            (letrec ((g8263
                                                                      null))
                                                              g8263)
                                                            (letrec ((x-cnd8264
                                                                      (letrec ((x8265
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8265))))
                                                              (if x-cnd8264
                                                                (letrec ((g8266
                                                                          (letrec ((x8269
                                                                                    (car
                                                                                     xs))
                                                                                   (x8267
                                                                                    (letrec ((x8268
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8268))))
                                                                            (cons
                                                                             x8269
                                                                             x8267))))
                                                                  g8266)
                                                                (letrec ((g8270
                                                                          (letrec ((x8271
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8271))))
                                                                  g8270)))))))
                                                g8261)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8272
                                                        (letrec ((x-cnd8273
                                                                  (null? l)))
                                                          (if x-cnd8273
                                                            (letrec ((g8274 r))
                                                              g8274)
                                                            (letrec ((g8275
                                                                      (letrec ((x8278
                                                                                (car
                                                                                 l))
                                                                               (x8276
                                                                                (letrec ((x8277
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8277
                                                                                   r))))
                                                                        (cons
                                                                         x8278
                                                                         x8276))))
                                                              g8275)))))
                                                g8272)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8279
                                                        (letrec ((x-cnd8280
                                                                  (null? xs)))
                                                          (if x-cnd8280
                                                            (letrec ((g8281 a))
                                                              g8281)
                                                            (letrec ((g8282
                                                                      (letrec ((x8285
                                                                                (car
                                                                                 xs))
                                                                               (x8283
                                                                                (letrec ((x8284
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8284))))
                                                                        (f
                                                                         x8285
                                                                         x8283))))
                                                              g8282)))))
                                                g8279)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8286
                                                        (letrec ((x8287
                                                                  (letrec ((x8289
                                                                            (c))
                                                                           (x8288
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x8289
                                                                      x8288))))
                                                          (ormap x8287 bs))))
                                                g8286)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8290
                                                        (letrec ((x8291
                                                                  (letrec ((x8293
                                                                            (b))
                                                                           (x8292
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8293
                                                                      x8292))))
                                                          (andmap x8291 bs1))))
                                                g8290)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8294
                                                        (letrec ((x-cnd8295
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8295
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8294)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8296
                                                        (letrec ((x8297
                                                                  (letrec ((x8299
                                                                            (b))
                                                                           (x8298
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8299
                                                                      x8298))))
                                                          (filter x8297 bs1))))
                                                g8296)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8300 (length bs)))
                                                g8300)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8301
                                                        (letrec ((x8302
                                                                  (letrec ((x8304
                                                                            (b))
                                                                           (x8303
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x8304
                                                                      x8303))))
                                                          (map x8302 bs))))
                                                g8301)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8305
                                                        (letrec ((x8306
                                                                  (letrec ((x8308
                                                                            (b))
                                                                           (x8307
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x8308
                                                                      x8307))))
                                                          (map x8306 bs))))
                                                g8305)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8309
                                                        (letrec ((x8310
                                                                  (letrec ((x8312
                                                                            (b))
                                                                           (x8311
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x8312
                                                                      x8311))))
                                                          (map x8310 bs))))
                                                g8309)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8313
                                                        (letrec ((x8314
                                                                  (letrec ((x8318
                                                                            (b))
                                                                           (x8315
                                                                            (letrec ((x8317
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8316
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x8317
                                                                               x8316
                                                                               c))))
                                                                    (λ x8318
                                                                      x8315))))
                                                          (map x8314 bs))))
                                                g8313)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8319
                                                        (letrec ((x8320
                                                                  (letrec ((x8323
                                                                            (b))
                                                                           (x8321
                                                                            (letrec ((x8322
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x8322))))
                                                                    (λ x8323
                                                                      x8321))))
                                                          (filter x8320 bs))))
                                                g8319)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8324
                                                        (letrec ((x8325
                                                                  (letrec ((x8326
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8326))))
                                                          (=
                                                           board-width
                                                           x8325))))
                                                g8324)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8327
                                                        (letrec ((x8328
                                                                  (letrec ((x8331
                                                                            (b))
                                                                           (x8329
                                                                            (letrec ((x8330
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x8330
                                                                               0))))
                                                                    (λ x8331
                                                                      x8329))))
                                                          (ormap x8328 bs))))
                                                g8327)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8332
                                                        (letrec ((x8333
                                                                  (letrec ((x8338
                                                                            (b
                                                                             bs))
                                                                           (x8334
                                                                            (letrec ((x-cnd8335
                                                                                      (blocks-contains?
                                                                                       bs
                                                                                       b)))
                                                                              (if x-cnd8335
                                                                                (letrec ((g8336
                                                                                          bs))
                                                                                  g8336)
                                                                                (letrec ((g8337
                                                                                          (cons
                                                                                           b
                                                                                           bs)))
                                                                                  g8337)))))
                                                                    (λ x8338
                                                                      x8334))))
                                                          (foldr
                                                           x8333
                                                           bs2
                                                           bs1))))
                                                g8332)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8339
                                                        (letrec ((x8340
                                                                  (letrec ((x8343
                                                                            (b
                                                                             n))
                                                                           (x8341
                                                                            (letrec ((x8342
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x8342
                                                                               n))))
                                                                    (λ x8343
                                                                      x8341))))
                                                          (foldr x8340 0 bs))))
                                                g8339)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8344
                                                        (letrec ((x8345
                                                                  (letrec ((x8348
                                                                            (b
                                                                             n))
                                                                           (x8346
                                                                            (letrec ((x8347
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x8347
                                                                               n))))
                                                                    (λ x8348
                                                                      x8346))))
                                                          (foldr
                                                           x8345
                                                           board-width
                                                           bs))))
                                                g8344)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8349
                                                        (letrec ((x8350
                                                                  (letrec ((x8353
                                                                            (b
                                                                             n))
                                                                           (x8351
                                                                            (letrec ((x8352
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x8352
                                                                               n))))
                                                                    (λ x8353
                                                                      x8351))))
                                                          (foldr x8350 0 bs))))
                                                g8349)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8354
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8354)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8355
                                                        (letrec ((x-cnd8356
                                                                  (< i 0)))
                                                          (if x-cnd8356
                                                            (letrec ((g8357
                                                                      empty))
                                                              g8357)
                                                            (letrec ((x-cnd8358
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8358
                                                                (letrec ((g8359
                                                                          (letrec ((x8361
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8360
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8361
                                                                             x8360))))
                                                                  g8359)
                                                                (letrec ((g8362
                                                                          (letrec ((x8365
                                                                                    (letrec ((x8366
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8366
                                                                                       offset)))
                                                                                   (x8363
                                                                                    (letrec ((x8364
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8364))))
                                                                            (blocks-union
                                                                             x8365
                                                                             x8363))))
                                                                  g8362)))))))
                                                g8355)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8367
                                                        (letrec ((x8370
                                                                  (letrec ((x8374
                                                                            (letrec ((x8375
                                                                                      (letrec ((x8376
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8376))))
                                                                              (+
                                                                               dx
                                                                               x8375)))
                                                                           (x8371
                                                                            (letrec ((x8372
                                                                                      (letrec ((x8373
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8373))))
                                                                              (+
                                                                               dy
                                                                               x8372))))
                                                                    (posn
                                                                     x8374
                                                                     x8371)))
                                                                 (x8368
                                                                  (letrec ((x8369
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8369))))
                                                          (tetra
                                                           x8370
                                                           x8368))))
                                                g8367)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8377
                                                        (letrec ((x8381
                                                                  (tetra-center
                                                                   t))
                                                                 (x8378
                                                                  (letrec ((x8380
                                                                            (tetra-center
                                                                             t))
                                                                           (x8379
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8380
                                                                     x8379))))
                                                          (tetra
                                                           x8381
                                                           x8378))))
                                                g8377)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8382
                                                        (letrec ((x8386
                                                                  (tetra-center
                                                                   t))
                                                                 (x8383
                                                                  (letrec ((x8385
                                                                            (tetra-center
                                                                             t))
                                                                           (x8384
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8385
                                                                     x8384))))
                                                          (tetra
                                                           x8386
                                                           x8383))))
                                                g8382)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8387
                                                        (letrec ((x8388
                                                                  (letrec ((x8389
                                                                            (letrec ((x8390
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8390
                                                                               bs))))
                                                                    (false?
                                                                     x8389))))
                                                          (false? x8388))))
                                                g8387)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8391
                                                        (letrec ((x8394
                                                                  (tetra-center
                                                                   t))
                                                                 (x8392
                                                                  (letrec ((x8393
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8393
                                                                     c))))
                                                          (tetra
                                                           x8394
                                                           x8392))))
                                                g8391)))
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
                                              (letrec ((g8395
                                                        (letrec ((x8396
                                                                  (letrec ((x8402
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8397
                                                                            (letrec ((x8401
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8400
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8399
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8398
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8401
                                                                               x8400
                                                                               x8399
                                                                               x8398))))
                                                                    (tetra
                                                                     x8402
                                                                     x8397))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8396))))
                                                g8395)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8403
                                                        (letrec ((x8409
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8404
                                                                  (letrec ((x8405
                                                                            (letrec ((x8407
                                                                                      (letrec ((x8408
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8408)))
                                                                                     (x8406
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8407
                                                                               x8406))))
                                                                    (eliminate-full-rows
                                                                     x8405))))
                                                          (world
                                                           x8409
                                                           x8404))))
                                                g8403)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8410
                                                        (letrec ((x-cnd8411
                                                                  (landed? w)))
                                                          (if x-cnd8411
                                                            (letrec ((g8412 w))
                                                              g8412)
                                                            (letrec ((g8413
                                                                      (letrec ((x8414
                                                                                (letrec ((x8416
                                                                                          (letrec ((x8417
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8417)))
                                                                                         (x8415
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8416
                                                                                   x8415))))
                                                                        (world-jump-down
                                                                         x8414))))
                                                              g8413)))))
                                                g8410)))
                                           (landed-on-blocks?
                                            (lambda (w)
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
                                                          (tetra-overlaps-blocks?
                                                           x8420
                                                           x8419))))
                                                g8418)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8422
                                                        (letrec ((x8424
                                                                  (letrec ((x8425
                                                                            (letrec ((x8426
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8426))))
                                                                    (blocks-max-y
                                                                     x8425)))
                                                                 (x8423
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8424 x8423))))
                                                g8422)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8427
                                                        (letrec ((val7259
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8428
                                                                    (if val7259
                                                                      val7259
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8428))))
                                                g8427)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8429
                                                        (letrec ((x-cnd8430
                                                                  (landed? w)))
                                                          (if x-cnd8430
                                                            (letrec ((g8431
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8431)
                                                            (letrec ((g8432
                                                                      (letrec ((x8434
                                                                                (letrec ((x8435
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8435)))
                                                                               (x8433
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8434
                                                                         x8433))))
                                                              g8432)))))
                                                g8429)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8436
                                                        (letrec ((x-cnd8437
                                                                  (letrec ((x8443
                                                                            (letrec ((x8444
                                                                                      (letrec ((x8445
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8445))))
                                                                              (<
                                                                               x8444
                                                                               0)))
                                                                           (x8440
                                                                            (letrec ((x8441
                                                                                      (letrec ((x8442
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-max-x
                                                                                         x8442))))
                                                                              (>=
                                                                               x8441
                                                                               board-width)))
                                                                           (x8438
                                                                            (letrec ((x8439
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (tetra-overlaps-blocks?
                                                                               new-tetra
                                                                               x8439))))
                                                                    (or x8443
                                                                        x8440
                                                                        x8438))))
                                                          (if x-cnd8437
                                                            (letrec ((g8446 w))
                                                              g8446)
                                                            (letrec ((g8447
                                                                      (letrec ((x8448
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8448))))
                                                              g8447)))))
                                                g8436)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8449
                                                        (letrec ((x8450
                                                                  (letrec ((x8451
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8451))))
                                                          (try-new-tetra
                                                           w
                                                           x8450))))
                                                g8449)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8452
                                                        (letrec ((x8453
                                                                  (letrec ((x8454
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8454))))
                                                          (try-new-tetra
                                                           w
                                                           x8453))))
                                                g8452)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8455
                                                        (letrec ((x8456
                                                                  (letrec ((x8457
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8457))))
                                                          (try-new-tetra
                                                           w
                                                           x8456))))
                                                g8455)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8458
                                                        (letrec ((x8459
                                                                  (letrec ((x8460
                                                                            (letrec ((x8461
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8461))))
                                                                    (tetra-change-color
                                                                     x8460
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8459))))
                                                g8458)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8462
                                                        (letrec ((x-cnd8463
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8463
                                                            (letrec ((g8464
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8464)
                                                            (letrec ((x-cnd8465
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8465
                                                                (letrec ((g8466
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8466)
                                                                (letrec ((x-cnd8467
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8467
                                                                    (letrec ((g8468
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8468)
                                                                    (letrec ((x-cnd8469
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8469
                                                                        (letrec ((g8470
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8470)
                                                                        (letrec ((x-cnd8471
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8471
                                                                            (letrec ((g8472
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8472)
                                                                            (letrec ((g8473
                                                                                      w))
                                                                              g8473)))))))))))))
                                                g8462)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8474
                                                        (cons 'image '())))
                                                g8474)))
                                           (image?
                                            (lambda (image7596)
                                              (letrec ((g8475
                                                        (letrec ((x8476
                                                                  (car
                                                                   image7596)))
                                                          (eq? x8476 'image))))
                                                g8475)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8477 (image)))
                                                g8477)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8478 (image)))
                                                g8478)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8479 (image)))
                                                g8479)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8480 (image)))
                                                g8480)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8481 (image)))
                                                g8481)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8482
                                                        (letrec ((x-cnd8483
                                                                  (letrec ((x8484
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8484))))
                                                          (if x-cnd8483
                                                            (letrec ((g8485
                                                                      (car
                                                                       xs)))
                                                              g8485)
                                                            (letrec ((g8486
                                                                      (letrec ((x8487
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8487))))
                                                              g8486)))))
                                                g8482)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8488
                                                        (letrec ((x8492
                                                                  (letrec ((x8493
                                                                            (letrec ((x8497
                                                                                      (letrec ((x8498
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8498)))
                                                                                     (x8494
                                                                                      (letrec ((x8496
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8495
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8496
                                                                                         x8495))))
                                                                              (append
                                                                               x8497
                                                                               x8494))))
                                                                    (blocks->image
                                                                     x8493)))
                                                                 (x8489
                                                                  (letrec ((x8491
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8490
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8491
                                                                     x8490))))
                                                          (place-image
                                                           x8492
                                                           0
                                                           0
                                                           x8489))))
                                                g8488)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8499
                                                        (letrec ((x8505
                                                                  (letrec ((x8511
                                                                            (b
                                                                             img))
                                                                           (x8506
                                                                            (letrec ((x-cnd8507
                                                                                      (letrec ((x8508
                                                                                                (block-y
                                                                                                 b)))
                                                                                        (<=
                                                                                         0
                                                                                         x8508))))
                                                                              (if x-cnd8507
                                                                                (letrec ((g8509
                                                                                          (place-block
                                                                                           b
                                                                                           img)))
                                                                                  g8509)
                                                                                (letrec ((g8510
                                                                                          img))
                                                                                  g8510)))))
                                                                    (λ x8511
                                                                      x8506)))
                                                                 (x8500
                                                                  (letrec ((x8503
                                                                            (letrec ((x8504
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8504)))
                                                                           (x8501
                                                                            (letrec ((x8502
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8502))))
                                                                    (empty-scene
                                                                     x8503
                                                                     x8501))))
                                                          (foldr
                                                           x8505
                                                           x8500
                                                           bs))))
                                                g8499)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8512
                                                        (letrec ((x8516
                                                                  (letrec ((x8519
                                                                            (add1
                                                                             block-size))
                                                                           (x8518
                                                                            (add1
                                                                             block-size))
                                                                           (x8517
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8519
                                                                     x8518
                                                                     'solid
                                                                     x8517)))
                                                                 (x8513
                                                                  (letrec ((x8515
                                                                            (add1
                                                                             block-size))
                                                                           (x8514
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8515
                                                                     x8514
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8516
                                                           x8513))))
                                                g8512)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8520
                                                        (letrec ((x8529
                                                                  (block->image
                                                                   b))
                                                                 (x8525
                                                                  (letrec ((x8527
                                                                            (letrec ((x8528
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8528
                                                                               block-size)))
                                                                           (x8526
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8527
                                                                     x8526)))
                                                                 (x8521
                                                                  (letrec ((x8523
                                                                            (letrec ((x8524
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8524
                                                                               block-size)))
                                                                           (x8522
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8523
                                                                     x8522))))
                                                          (place-image
                                                           x8529
                                                           x8525
                                                           x8521
                                                           scene))))
                                                g8520)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8530
                                                        (letrec ((x8531
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8531 null))))
                                                g8530))))
                                    (letrec ((g8532
                                              (letrec ((x8595
                                                        ((lambda (j7359
                                                                  k7360
                                                                  f7361)
                                                           (letrec ((g8596
                                                                     (lambda (g7357
                                                                              g7358)
                                                                       (letrec ((g8597
                                                                                 (letrec ((x8598
                                                                                           (letrec ((x8600
                                                                                                     (POSN/C
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7357))
                                                                                                    (x8599
                                                                                                     (POSN/C
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7358)))
                                                                                             (f7361
                                                                                              x8600
                                                                                              x8599))))
                                                                                   (boolean?/c
                                                                                    j7359
                                                                                    k7360
                                                                                    x8598))))
                                                                         g8597))))
                                                             g8596))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8590
                                                        (letrec ((x8591
                                                                  (letrec ((x8594
                                                                            (input))
                                                                           (x8592
                                                                            (letrec ((x8593
                                                                                      (input)))
                                                                              (cons
                                                                               x8593
                                                                               '()))))
                                                                    (cons
                                                                     x8594
                                                                     x8592))))
                                                          (cons 'posn x8591)))
                                                       (x8585
                                                        (letrec ((x8586
                                                                  (letrec ((x8589
                                                                            (input))
                                                                           (x8587
                                                                            (letrec ((x8588
                                                                                      (input)))
                                                                              (cons
                                                                               x8588
                                                                               '()))))
                                                                    (cons
                                                                     x8589
                                                                     x8587))))
                                                          (cons 'posn x8586))))
                                                (x8595 x8590 x8585)))
                                             (g8533
                                              (any/c
                                               'module
                                               'importer
                                               COLOR/C))
                                             (g8534
                                              (any/c 'module 'importer POSN/C))
                                             (g8535
                                              (any/c
                                               'module
                                               'importer
                                               BLOCK/C))
                                             (g8536
                                              (any/c
                                               'module
                                               'importer
                                               TETRA/C))
                                             (g8537
                                              (any/c
                                               'module
                                               'importer
                                               WORLD/C))
                                             (g8538
                                              (any/c 'module 'importer BSET/C))
                                             (g8539
                                              (integer?/c
                                               'module
                                               'importer
                                               block-size))
                                             (g8540
                                              (integer?/c
                                               'module
                                               'importer
                                               board-width))
                                             (g8541
                                              (integer?/c
                                               'module
                                               'importer
                                               board-height))
                                             (g8542
                                              (letrec ((x8613
                                                        ((lambda (j7364
                                                                  k7365
                                                                  f7366)
                                                           (letrec ((g8614
                                                                     (lambda (g7362
                                                                              g7363)
                                                                       (letrec ((g8615
                                                                                 (letrec ((x8616
                                                                                           (letrec ((x8618
                                                                                                     (POSN/C
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7362))
                                                                                                    (x8617
                                                                                                     (BLOCK/C
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7363)))
                                                                                             (f7366
                                                                                              x8618
                                                                                              x8617))))
                                                                                   (BLOCK/C
                                                                                    j7364
                                                                                    k7365
                                                                                    x8616))))
                                                                         g8615))))
                                                             g8614))
                                                         'module
                                                         'importer
                                                         block-rotate-ccw))
                                                       (x8608
                                                        (letrec ((x8609
                                                                  (letrec ((x8612
                                                                            (input))
                                                                           (x8610
                                                                            (letrec ((x8611
                                                                                      (input)))
                                                                              (cons
                                                                               x8611
                                                                               '()))))
                                                                    (cons
                                                                     x8612
                                                                     x8610))))
                                                          (cons 'posn x8609)))
                                                       (x8601
                                                        (letrec ((x8602
                                                                  (letrec ((x8607
                                                                            (input))
                                                                           (x8603
                                                                            (letrec ((x8606
                                                                                      (input))
                                                                                     (x8604
                                                                                      (letrec ((x8605
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8605
                                                                                         '()))))
                                                                              (cons
                                                                               x8606
                                                                               x8604))))
                                                                    (cons
                                                                     x8607
                                                                     x8603))))
                                                          (cons
                                                           'block
                                                           x8602))))
                                                (x8613 x8608 x8601)))
                                             (g8543
                                              (letrec ((x8631
                                                        ((lambda (j7369
                                                                  k7370
                                                                  f7371)
                                                           (letrec ((g8632
                                                                     (lambda (g7367
                                                                              g7368)
                                                                       (letrec ((g8633
                                                                                 (letrec ((x8634
                                                                                           (letrec ((x8636
                                                                                                     (POSN/C
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7367))
                                                                                                    (x8635
                                                                                                     (BLOCK/C
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7368)))
                                                                                             (f7371
                                                                                              x8636
                                                                                              x8635))))
                                                                                   (BLOCK/C
                                                                                    j7369
                                                                                    k7370
                                                                                    x8634))))
                                                                         g8633))))
                                                             g8632))
                                                         'module
                                                         'importer
                                                         block-rotate-cw))
                                                       (x8626
                                                        (letrec ((x8627
                                                                  (letrec ((x8630
                                                                            (input))
                                                                           (x8628
                                                                            (letrec ((x8629
                                                                                      (input)))
                                                                              (cons
                                                                               x8629
                                                                               '()))))
                                                                    (cons
                                                                     x8630
                                                                     x8628))))
                                                          (cons 'posn x8627)))
                                                       (x8619
                                                        (letrec ((x8620
                                                                  (letrec ((x8625
                                                                            (input))
                                                                           (x8621
                                                                            (letrec ((x8624
                                                                                      (input))
                                                                                     (x8622
                                                                                      (letrec ((x8623
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8623
                                                                                         '()))))
                                                                              (cons
                                                                               x8624
                                                                               x8622))))
                                                                    (cons
                                                                     x8625
                                                                     x8621))))
                                                          (cons
                                                           'block
                                                           x8620))))
                                                (x8631 x8626 x8619)))
                                             (g8544
                                              (letrec ((x8651
                                                        ((lambda (j7374
                                                                  k7375
                                                                  f7376)
                                                           (letrec ((g8652
                                                                     (lambda (g7372
                                                                              g7373)
                                                                       (letrec ((g8653
                                                                                 (letrec ((x8654
                                                                                           (letrec ((x8656
                                                                                                     (BLOCK/C
                                                                                                      j7374
                                                                                                      k7375
                                                                                                      g7372))
                                                                                                    (x8655
                                                                                                     (BLOCK/C
                                                                                                      j7374
                                                                                                      k7375
                                                                                                      g7373)))
                                                                                             (f7376
                                                                                              x8656
                                                                                              x8655))))
                                                                                   (boolean?/c
                                                                                    j7374
                                                                                    k7375
                                                                                    x8654))))
                                                                         g8653))))
                                                             g8652))
                                                         'module
                                                         'importer
                                                         block=?))
                                                       (x8644
                                                        (letrec ((x8645
                                                                  (letrec ((x8650
                                                                            (input))
                                                                           (x8646
                                                                            (letrec ((x8649
                                                                                      (input))
                                                                                     (x8647
                                                                                      (letrec ((x8648
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8648
                                                                                         '()))))
                                                                              (cons
                                                                               x8649
                                                                               x8647))))
                                                                    (cons
                                                                     x8650
                                                                     x8646))))
                                                          (cons 'block x8645)))
                                                       (x8637
                                                        (letrec ((x8638
                                                                  (letrec ((x8643
                                                                            (input))
                                                                           (x8639
                                                                            (letrec ((x8642
                                                                                      (input))
                                                                                     (x8640
                                                                                      (letrec ((x8641
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8641
                                                                                         '()))))
                                                                              (cons
                                                                               x8642
                                                                               x8640))))
                                                                    (cons
                                                                     x8643
                                                                     x8639))))
                                                          (cons
                                                           'block
                                                           x8638))))
                                                (x8651 x8644 x8637)))
                                             (g8545
                                              (letrec ((x8666
                                                        ((lambda (j7380
                                                                  k7381
                                                                  f7382)
                                                           (letrec ((g8667
                                                                     (lambda (g7377
                                                                              g7378
                                                                              g7379)
                                                                       (letrec ((g8668
                                                                                 (letrec ((x8669
                                                                                           (letrec ((x8672
                                                                                                     (real?/c
                                                                                                      j7380
                                                                                                      k7381
                                                                                                      g7377))
                                                                                                    (x8671
                                                                                                     (real?/c
                                                                                                      j7380
                                                                                                      k7381
                                                                                                      g7378))
                                                                                                    (x8670
                                                                                                     (BLOCK/C
                                                                                                      j7380
                                                                                                      k7381
                                                                                                      g7379)))
                                                                                             (f7382
                                                                                              x8672
                                                                                              x8671
                                                                                              x8670))))
                                                                                   (BLOCK/C
                                                                                    j7380
                                                                                    k7381
                                                                                    x8669))))
                                                                         g8668))))
                                                             g8667))
                                                         'module
                                                         'importer
                                                         block-move))
                                                       (x8665 (input))
                                                       (x8664 (input))
                                                       (x8657
                                                        (letrec ((x8658
                                                                  (letrec ((x8663
                                                                            (input))
                                                                           (x8659
                                                                            (letrec ((x8662
                                                                                      (input))
                                                                                     (x8660
                                                                                      (letrec ((x8661
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8661
                                                                                         '()))))
                                                                              (cons
                                                                               x8662
                                                                               x8660))))
                                                                    (cons
                                                                     x8663
                                                                     x8659))))
                                                          (cons
                                                           'block
                                                           x8658))))
                                                (x8666 x8665 x8664 x8657)))
                                             (g8546
                                              (letrec ((x8681
                                                        ((lambda (j7385
                                                                  k7386
                                                                  f7387)
                                                           (letrec ((g8682
                                                                     (lambda (g7383
                                                                              g7384)
                                                                       (letrec ((g8683
                                                                                 (letrec ((x8684
                                                                                           (letrec ((x8686
                                                                                                     (BSET/C
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7383))
                                                                                                    (x8685
                                                                                                     (BLOCK/C
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7384)))
                                                                                             (f7387
                                                                                              x8686
                                                                                              x8685))))
                                                                                   (boolean?/c
                                                                                    j7385
                                                                                    k7386
                                                                                    x8684))))
                                                                         g8683))))
                                                             g8682))
                                                         'module
                                                         'importer
                                                         blocks-contains?))
                                                       (x8680 (input))
                                                       (x8673
                                                        (letrec ((x8674
                                                                  (letrec ((x8679
                                                                            (input))
                                                                           (x8675
                                                                            (letrec ((x8678
                                                                                      (input))
                                                                                     (x8676
                                                                                      (letrec ((x8677
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8677
                                                                                         '()))))
                                                                              (cons
                                                                               x8678
                                                                               x8676))))
                                                                    (cons
                                                                     x8679
                                                                     x8675))))
                                                          (cons
                                                           'block
                                                           x8674))))
                                                (x8681 x8680 x8673)))
                                             (g8547
                                              (letrec ((x8689
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g8690
                                                                     (lambda (g7388
                                                                              g7389)
                                                                       (letrec ((g8691
                                                                                 (letrec ((x8692
                                                                                           (letrec ((x8694
                                                                                                     (BSET/C
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7388))
                                                                                                    (x8693
                                                                                                     (BSET/C
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x8694
                                                                                              x8693))))
                                                                                   (boolean?/c
                                                                                    j7390
                                                                                    k7391
                                                                                    x8692))))
                                                                         g8691))))
                                                             g8690))
                                                         'module
                                                         'importer
                                                         blocks=?))
                                                       (x8688 (input))
                                                       (x8687 (input)))
                                                (x8689 x8688 x8687)))
                                             (g8548
                                              (letrec ((x8697
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g8698
                                                                     (lambda (g7393
                                                                              g7394)
                                                                       (letrec ((g8699
                                                                                 (letrec ((x8700
                                                                                           (letrec ((x8702
                                                                                                     (BSET/C
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7393))
                                                                                                    (x8701
                                                                                                     (BSET/C
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x8702
                                                                                              x8701))))
                                                                                   (boolean?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x8700))))
                                                                         g8699))))
                                                             g8698))
                                                         'module
                                                         'importer
                                                         blocks-subset?))
                                                       (x8696 (input))
                                                       (x8695 (input)))
                                                (x8697 x8696 x8695)))
                                             (g8549
                                              (letrec ((x8705
                                                        ((lambda (j7400
                                                                  k7401
                                                                  f7402)
                                                           (letrec ((g8706
                                                                     (lambda (g7398
                                                                              g7399)
                                                                       (letrec ((g8707
                                                                                 (letrec ((x8708
                                                                                           (letrec ((x8710
                                                                                                     (BSET/C
                                                                                                      j7400
                                                                                                      k7401
                                                                                                      g7398))
                                                                                                    (x8709
                                                                                                     (BSET/C
                                                                                                      j7400
                                                                                                      k7401
                                                                                                      g7399)))
                                                                                             (f7402
                                                                                              x8710
                                                                                              x8709))))
                                                                                   (BSET/C
                                                                                    j7400
                                                                                    k7401
                                                                                    x8708))))
                                                                         g8707))))
                                                             g8706))
                                                         'module
                                                         'importer
                                                         blocks-intersect))
                                                       (x8704 (input))
                                                       (x8703 (input)))
                                                (x8705 x8704 x8703)))
                                             (g8550
                                              (letrec ((x8712
                                                        ((lambda (j7404
                                                                  k7405
                                                                  f7406)
                                                           (letrec ((g8713
                                                                     (lambda (g7403)
                                                                       (letrec ((g8714
                                                                                 (letrec ((x8715
                                                                                           (letrec ((x8716
                                                                                                     (BSET/C
                                                                                                      j7404
                                                                                                      k7405
                                                                                                      g7403)))
                                                                                             (f7406
                                                                                              x8716))))
                                                                                   (real?/c
                                                                                    j7404
                                                                                    k7405
                                                                                    x8715))))
                                                                         g8714))))
                                                             g8713))
                                                         'module
                                                         'importer
                                                         blocks-count))
                                                       (x8711 (input)))
                                                (x8712 x8711)))
                                             (g8551
                                              (letrec ((x8718
                                                        ((lambda (j7408
                                                                  k7409
                                                                  f7410)
                                                           (letrec ((g8719
                                                                     (lambda (g7407)
                                                                       (letrec ((g8720
                                                                                 (letrec ((x8721
                                                                                           (letrec ((x8722
                                                                                                     (BSET/C
                                                                                                      j7408
                                                                                                      k7409
                                                                                                      g7407)))
                                                                                             (f7410
                                                                                              x8722))))
                                                                                   (boolean?/c
                                                                                    j7408
                                                                                    k7409
                                                                                    x8721))))
                                                                         g8720))))
                                                             g8719))
                                                         'module
                                                         'importer
                                                         blocks-overflow?))
                                                       (x8717 (input)))
                                                (x8718 x8717)))
                                             (g8552
                                              (letrec ((x8726
                                                        ((lambda (j7414
                                                                  k7415
                                                                  f7416)
                                                           (letrec ((g8727
                                                                     (lambda (g7411
                                                                              g7412
                                                                              g7413)
                                                                       (letrec ((g8728
                                                                                 (letrec ((x8729
                                                                                           (letrec ((x8732
                                                                                                     (real?/c
                                                                                                      j7414
                                                                                                      k7415
                                                                                                      g7411))
                                                                                                    (x8731
                                                                                                     (real?/c
                                                                                                      j7414
                                                                                                      k7415
                                                                                                      g7412))
                                                                                                    (x8730
                                                                                                     (BSET/C
                                                                                                      j7414
                                                                                                      k7415
                                                                                                      g7413)))
                                                                                             (f7416
                                                                                              x8732
                                                                                              x8731
                                                                                              x8730))))
                                                                                   (BSET/C
                                                                                    j7414
                                                                                    k7415
                                                                                    x8729))))
                                                                         g8728))))
                                                             g8727))
                                                         'module
                                                         'importer
                                                         blocks-move))
                                                       (x8725 (input))
                                                       (x8724 (input))
                                                       (x8723 (input)))
                                                (x8726 x8725 x8724 x8723)))
                                             (g8553
                                              (letrec ((x8739
                                                        ((lambda (j7419
                                                                  k7420
                                                                  f7421)
                                                           (letrec ((g8740
                                                                     (lambda (g7417
                                                                              g7418)
                                                                       (letrec ((g8741
                                                                                 (letrec ((x8742
                                                                                           (letrec ((x8744
                                                                                                     (POSN/C
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7417))
                                                                                                    (x8743
                                                                                                     (BSET/C
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7418)))
                                                                                             (f7421
                                                                                              x8744
                                                                                              x8743))))
                                                                                   (BSET/C
                                                                                    j7419
                                                                                    k7420
                                                                                    x8742))))
                                                                         g8741))))
                                                             g8740))
                                                         'module
                                                         'importer
                                                         blocks-rotate-cw))
                                                       (x8734
                                                        (letrec ((x8735
                                                                  (letrec ((x8738
                                                                            (input))
                                                                           (x8736
                                                                            (letrec ((x8737
                                                                                      (input)))
                                                                              (cons
                                                                               x8737
                                                                               '()))))
                                                                    (cons
                                                                     x8738
                                                                     x8736))))
                                                          (cons 'posn x8735)))
                                                       (x8733 (input)))
                                                (x8739 x8734 x8733)))
                                             (g8554
                                              (letrec ((x8751
                                                        ((lambda (j7424
                                                                  k7425
                                                                  f7426)
                                                           (letrec ((g8752
                                                                     (lambda (g7422
                                                                              g7423)
                                                                       (letrec ((g8753
                                                                                 (letrec ((x8754
                                                                                           (letrec ((x8756
                                                                                                     (POSN/C
                                                                                                      j7424
                                                                                                      k7425
                                                                                                      g7422))
                                                                                                    (x8755
                                                                                                     (BSET/C
                                                                                                      j7424
                                                                                                      k7425
                                                                                                      g7423)))
                                                                                             (f7426
                                                                                              x8756
                                                                                              x8755))))
                                                                                   (BSET/C
                                                                                    j7424
                                                                                    k7425
                                                                                    x8754))))
                                                                         g8753))))
                                                             g8752))
                                                         'module
                                                         'importer
                                                         blocks-rotate-ccw))
                                                       (x8746
                                                        (letrec ((x8747
                                                                  (letrec ((x8750
                                                                            (input))
                                                                           (x8748
                                                                            (letrec ((x8749
                                                                                      (input)))
                                                                              (cons
                                                                               x8749
                                                                               '()))))
                                                                    (cons
                                                                     x8750
                                                                     x8748))))
                                                          (cons 'posn x8747)))
                                                       (x8745 (input)))
                                                (x8751 x8746 x8745)))
                                             (g8555
                                              (letrec ((x8759
                                                        ((lambda (j7429
                                                                  k7430
                                                                  f7431)
                                                           (letrec ((g8760
                                                                     (lambda (g7427
                                                                              g7428)
                                                                       (letrec ((g8761
                                                                                 (letrec ((x8762
                                                                                           (letrec ((x8764
                                                                                                     (BSET/C
                                                                                                      j7429
                                                                                                      k7430
                                                                                                      g7427))
                                                                                                    (x8763
                                                                                                     (COLOR/C
                                                                                                      j7429
                                                                                                      k7430
                                                                                                      g7428)))
                                                                                             (f7431
                                                                                              x8764
                                                                                              x8763))))
                                                                                   (BSET/C
                                                                                    j7429
                                                                                    k7430
                                                                                    x8762))))
                                                                         g8761))))
                                                             g8760))
                                                         'module
                                                         'importer
                                                         blocks-change-color))
                                                       (x8758 (input))
                                                       (x8757 (input)))
                                                (x8759 x8758 x8757)))
                                             (g8556
                                              (letrec ((x8767
                                                        ((lambda (j7434
                                                                  k7435
                                                                  f7436)
                                                           (letrec ((g8768
                                                                     (lambda (g7432
                                                                              g7433)
                                                                       (letrec ((g8769
                                                                                 (letrec ((x8770
                                                                                           (letrec ((x8772
                                                                                                     (BSET/C
                                                                                                      j7434
                                                                                                      k7435
                                                                                                      g7432))
                                                                                                    (x8771
                                                                                                     (real?/c
                                                                                                      j7434
                                                                                                      k7435
                                                                                                      g7433)))
                                                                                             (f7436
                                                                                              x8772
                                                                                              x8771))))
                                                                                   (BSET/C
                                                                                    j7434
                                                                                    k7435
                                                                                    x8770))))
                                                                         g8769))))
                                                             g8768))
                                                         'module
                                                         'importer
                                                         blocks-row))
                                                       (x8766 (input))
                                                       (x8765 (input)))
                                                (x8767 x8766 x8765)))
                                             (g8557
                                              (letrec ((x8775
                                                        ((lambda (j7439
                                                                  k7440
                                                                  f7441)
                                                           (letrec ((g8776
                                                                     (lambda (g7437
                                                                              g7438)
                                                                       (letrec ((g8777
                                                                                 (letrec ((x8778
                                                                                           (letrec ((x8780
                                                                                                     (BSET/C
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7437))
                                                                                                    (x8779
                                                                                                     (real?/c
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7438)))
                                                                                             (f7441
                                                                                              x8780
                                                                                              x8779))))
                                                                                   (boolean?/c
                                                                                    j7439
                                                                                    k7440
                                                                                    x8778))))
                                                                         g8777))))
                                                             g8776))
                                                         'module
                                                         'importer
                                                         full-row?))
                                                       (x8774 (input))
                                                       (x8773 (input)))
                                                (x8775 x8774 x8773)))
                                             (g8558
                                              (letrec ((x8783
                                                        ((lambda (j7444
                                                                  k7445
                                                                  f7446)
                                                           (letrec ((g8784
                                                                     (lambda (g7442
                                                                              g7443)
                                                                       (letrec ((g8785
                                                                                 (letrec ((x8786
                                                                                           (letrec ((x8788
                                                                                                     (BSET/C
                                                                                                      j7444
                                                                                                      k7445
                                                                                                      g7442))
                                                                                                    (x8787
                                                                                                     (BSET/C
                                                                                                      j7444
                                                                                                      k7445
                                                                                                      g7443)))
                                                                                             (f7446
                                                                                              x8788
                                                                                              x8787))))
                                                                                   (BSET/C
                                                                                    j7444
                                                                                    k7445
                                                                                    x8786))))
                                                                         g8785))))
                                                             g8784))
                                                         'module
                                                         'importer
                                                         blocks-union))
                                                       (x8782 (input))
                                                       (x8781 (input)))
                                                (x8783 x8782 x8781)))
                                             (g8559
                                              (letrec ((x8790
                                                        ((lambda (j7448
                                                                  k7449
                                                                  f7450)
                                                           (letrec ((g8791
                                                                     (lambda (g7447)
                                                                       (letrec ((g8792
                                                                                 (letrec ((x8793
                                                                                           (letrec ((x8794
                                                                                                     (BSET/C
                                                                                                      j7448
                                                                                                      k7449
                                                                                                      g7447)))
                                                                                             (f7450
                                                                                              x8794))))
                                                                                   (real?/c
                                                                                    j7448
                                                                                    k7449
                                                                                    x8793))))
                                                                         g8792))))
                                                             g8791))
                                                         'module
                                                         'importer
                                                         blocks-max-x))
                                                       (x8789 (input)))
                                                (x8790 x8789)))
                                             (g8560
                                              (letrec ((x8796
                                                        ((lambda (j7452
                                                                  k7453
                                                                  f7454)
                                                           (letrec ((g8797
                                                                     (lambda (g7451)
                                                                       (letrec ((g8798
                                                                                 (letrec ((x8799
                                                                                           (letrec ((x8800
                                                                                                     (BSET/C
                                                                                                      j7452
                                                                                                      k7453
                                                                                                      g7451)))
                                                                                             (f7454
                                                                                              x8800))))
                                                                                   (real?/c
                                                                                    j7452
                                                                                    k7453
                                                                                    x8799))))
                                                                         g8798))))
                                                             g8797))
                                                         'module
                                                         'importer
                                                         blocks-min-x))
                                                       (x8795 (input)))
                                                (x8796 x8795)))
                                             (g8561
                                              (letrec ((x8802
                                                        ((lambda (j7456
                                                                  k7457
                                                                  f7458)
                                                           (letrec ((g8803
                                                                     (lambda (g7455)
                                                                       (letrec ((g8804
                                                                                 (letrec ((x8805
                                                                                           (letrec ((x8806
                                                                                                     (BSET/C
                                                                                                      j7456
                                                                                                      k7457
                                                                                                      g7455)))
                                                                                             (f7458
                                                                                              x8806))))
                                                                                   (real?/c
                                                                                    j7456
                                                                                    k7457
                                                                                    x8805))))
                                                                         g8804))))
                                                             g8803))
                                                         'module
                                                         'importer
                                                         blocks-max-y))
                                                       (x8801 (input)))
                                                (x8802 x8801)))
                                             (g8562
                                              (letrec ((x8808
                                                        ((lambda (j7460
                                                                  k7461
                                                                  f7462)
                                                           (letrec ((g8809
                                                                     (lambda (g7459)
                                                                       (letrec ((g8810
                                                                                 (letrec ((x8811
                                                                                           (letrec ((x8812
                                                                                                     (BSET/C
                                                                                                      j7460
                                                                                                      k7461
                                                                                                      g7459)))
                                                                                             (f7462
                                                                                              x8812))))
                                                                                   (BSET/C
                                                                                    j7460
                                                                                    k7461
                                                                                    x8811))))
                                                                         g8810))))
                                                             g8809))
                                                         'module
                                                         'importer
                                                         eliminate-full-rows))
                                                       (x8807 (input)))
                                                (x8808 x8807)))
                                             (g8563
                                              (letrec ((x8824
                                                        ((lambda (j7466
                                                                  k7467
                                                                  f7468)
                                                           (letrec ((g8825
                                                                     (lambda (g7463
                                                                              g7464
                                                                              g7465)
                                                                       (letrec ((g8826
                                                                                 (letrec ((x8827
                                                                                           (letrec ((x8830
                                                                                                     (integer?/c
                                                                                                      j7466
                                                                                                      k7467
                                                                                                      g7463))
                                                                                                    (x8829
                                                                                                     (integer?/c
                                                                                                      j7466
                                                                                                      k7467
                                                                                                      g7464))
                                                                                                    (x8828
                                                                                                     (TETRA/C
                                                                                                      j7466
                                                                                                      k7467
                                                                                                      g7465)))
                                                                                             (f7468
                                                                                              x8830
                                                                                              x8829
                                                                                              x8828))))
                                                                                   (TETRA/C
                                                                                    j7466
                                                                                    k7467
                                                                                    x8827))))
                                                                         g8826))))
                                                             g8825))
                                                         'module
                                                         'importer
                                                         tetra-move))
                                                       (x8823 (input))
                                                       (x8822 (input))
                                                       (x8813
                                                        (letrec ((x8814
                                                                  (letrec ((x8817
                                                                            (letrec ((x8818
                                                                                      (letrec ((x8821
                                                                                                (input))
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
                                                                               'posn
                                                                               x8818)))
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
                                                           'tetra
                                                           x8814))))
                                                (x8824 x8823 x8822 x8813)))
                                             (g8564
                                              (letrec ((x8840
                                                        ((lambda (j7470
                                                                  k7471
                                                                  f7472)
                                                           (letrec ((g8841
                                                                     (lambda (g7469)
                                                                       (letrec ((g8842
                                                                                 (letrec ((x8843
                                                                                           (letrec ((x8844
                                                                                                     (TETRA/C
                                                                                                      j7470
                                                                                                      k7471
                                                                                                      g7469)))
                                                                                             (f7472
                                                                                              x8844))))
                                                                                   (TETRA/C
                                                                                    j7470
                                                                                    k7471
                                                                                    x8843))))
                                                                         g8842))))
                                                             g8841))
                                                         'module
                                                         'importer
                                                         tetra-rotate-ccw))
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
                                             (g8565
                                              (letrec ((x8854
                                                        ((lambda (j7474
                                                                  k7475
                                                                  f7476)
                                                           (letrec ((g8855
                                                                     (lambda (g7473)
                                                                       (letrec ((g8856
                                                                                 (letrec ((x8857
                                                                                           (letrec ((x8858
                                                                                                     (TETRA/C
                                                                                                      j7474
                                                                                                      k7475
                                                                                                      g7473)))
                                                                                             (f7476
                                                                                              x8858))))
                                                                                   (TETRA/C
                                                                                    j7474
                                                                                    k7475
                                                                                    x8857))))
                                                                         g8856))))
                                                             g8855))
                                                         'module
                                                         'importer
                                                         tetra-rotate-cw))
                                                       (x8845
                                                        (letrec ((x8846
                                                                  (letrec ((x8849
                                                                            (letrec ((x8850
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
                                                                               'posn
                                                                               x8850)))
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
                                                           'tetra
                                                           x8846))))
                                                (x8854 x8845)))
                                             (g8566
                                              (letrec ((x8869
                                                        ((lambda (j7479
                                                                  k7480
                                                                  f7481)
                                                           (letrec ((g8870
                                                                     (lambda (g7477
                                                                              g7478)
                                                                       (letrec ((g8871
                                                                                 (letrec ((x8872
                                                                                           (letrec ((x8874
                                                                                                     (TETRA/C
                                                                                                      j7479
                                                                                                      k7480
                                                                                                      g7477))
                                                                                                    (x8873
                                                                                                     (BSET/C
                                                                                                      j7479
                                                                                                      k7480
                                                                                                      g7478)))
                                                                                             (f7481
                                                                                              x8874
                                                                                              x8873))))
                                                                                   (boolean?/c
                                                                                    j7479
                                                                                    k7480
                                                                                    x8872))))
                                                                         g8871))))
                                                             g8870))
                                                         'module
                                                         'importer
                                                         tetra-overlaps-blocks?))
                                                       (x8860
                                                        (letrec ((x8861
                                                                  (letrec ((x8864
                                                                            (letrec ((x8865
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
                                                                               'posn
                                                                               x8865)))
                                                                           (x8862
                                                                            (letrec ((x8863
                                                                                      (input)))
                                                                              (cons
                                                                               x8863
                                                                               '()))))
                                                                    (cons
                                                                     x8864
                                                                     x8862))))
                                                          (cons 'tetra x8861)))
                                                       (x8859 (input)))
                                                (x8869 x8860 x8859)))
                                             (g8567
                                              (letrec ((x8886
                                                        ((lambda (j7493
                                                                  k7494
                                                                  f7495)
                                                           (letrec ((g8887
                                                                     (lambda (g7482
                                                                              g7483
                                                                              g7484
                                                                              g7485
                                                                              g7486
                                                                              g7487
                                                                              g7488
                                                                              g7489
                                                                              g7490
                                                                              g7491
                                                                              g7492)
                                                                       (letrec ((g8888
                                                                                 (letrec ((x8889
                                                                                           (letrec ((x8900
                                                                                                     (COLOR/C
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7482))
                                                                                                    (x8899
                                                                                                     (real?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7483))
                                                                                                    (x8898
                                                                                                     (real?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7484))
                                                                                                    (x8897
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7485))
                                                                                                    (x8896
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7486))
                                                                                                    (x8895
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7487))
                                                                                                    (x8894
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7488))
                                                                                                    (x8893
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7489))
                                                                                                    (x8892
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7490))
                                                                                                    (x8891
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7491))
                                                                                                    (x8890
                                                                                                     (integer?/c
                                                                                                      j7493
                                                                                                      k7494
                                                                                                      g7492)))
                                                                                             (f7495
                                                                                              x8900
                                                                                              x8899
                                                                                              x8898
                                                                                              x8897
                                                                                              x8896
                                                                                              x8895
                                                                                              x8894
                                                                                              x8893
                                                                                              x8892
                                                                                              x8891
                                                                                              x8890))))
                                                                                   (TETRA/C
                                                                                    j7493
                                                                                    k7494
                                                                                    x8889))))
                                                                         g8888))))
                                                             g8887))
                                                         'module
                                                         'importer
                                                         build-tetra-blocks))
                                                       (x8885 (input))
                                                       (x8884 (input))
                                                       (x8883 (input))
                                                       (x8882 (input))
                                                       (x8881 (input))
                                                       (x8880 (input))
                                                       (x8879 (input))
                                                       (x8878 (input))
                                                       (x8877 (input))
                                                       (x8876 (input))
                                                       (x8875 (input)))
                                                (x8886
                                                 x8885
                                                 x8884
                                                 x8883
                                                 x8882
                                                 x8881
                                                 x8880
                                                 x8879
                                                 x8878
                                                 x8877
                                                 x8876
                                                 x8875)))
                                             (g8568
                                              (letrec ((x8911
                                                        ((lambda (j7498
                                                                  k7499
                                                                  f7500)
                                                           (letrec ((g8912
                                                                     (lambda (g7496
                                                                              g7497)
                                                                       (letrec ((g8913
                                                                                 (letrec ((x8914
                                                                                           (letrec ((x8916
                                                                                                     (TETRA/C
                                                                                                      j7498
                                                                                                      k7499
                                                                                                      g7496))
                                                                                                    (x8915
                                                                                                     (COLOR/C
                                                                                                      j7498
                                                                                                      k7499
                                                                                                      g7497)))
                                                                                             (f7500
                                                                                              x8916
                                                                                              x8915))))
                                                                                   (TETRA/C
                                                                                    j7498
                                                                                    k7499
                                                                                    x8914))))
                                                                         g8913))))
                                                             g8912))
                                                         'module
                                                         'importer
                                                         tetra-change-color))
                                                       (x8902
                                                        (letrec ((x8903
                                                                  (letrec ((x8906
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
                                                                           (x8904
                                                                            (letrec ((x8905
                                                                                      (input)))
                                                                              (cons
                                                                               x8905
                                                                               '()))))
                                                                    (cons
                                                                     x8906
                                                                     x8904))))
                                                          (cons 'tetra x8903)))
                                                       (x8901 (input)))
                                                (x8911 x8902 x8901)))
                                             (g8569
                                              (letrec ((x8931
                                                        ((lambda (j7503
                                                                  k7504
                                                                  f7505)
                                                           (letrec ((g8932
                                                                     (lambda (g7501
                                                                              g7502)
                                                                       (letrec ((g8933
                                                                                 (letrec ((x8934
                                                                                           (letrec ((x8936
                                                                                                     (WORLD/C
                                                                                                      j7503
                                                                                                      k7504
                                                                                                      g7501))
                                                                                                    (x8935
                                                                                                     (string?/c
                                                                                                      j7503
                                                                                                      k7504
                                                                                                      g7502)))
                                                                                             (f7505
                                                                                              x8936
                                                                                              x8935))))
                                                                                   (WORLD/C
                                                                                    j7503
                                                                                    k7504
                                                                                    x8934))))
                                                                         g8933))))
                                                             g8932))
                                                         'module
                                                         'importer
                                                         world-key-move))
                                                       (x8918
                                                        (letrec ((x8919
                                                                  (letrec ((x8922
                                                                            (letrec ((x8923
                                                                                      (letrec ((x8926
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
                                                                                               (x8924
                                                                                                (letrec ((x8925
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8925
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8926
                                                                                         x8924))))
                                                                              (cons
                                                                               'tetra
                                                                               x8923)))
                                                                           (x8920
                                                                            (letrec ((x8921
                                                                                      (input)))
                                                                              (cons
                                                                               x8921
                                                                               '()))))
                                                                    (cons
                                                                     x8922
                                                                     x8920))))
                                                          (cons 'world x8919)))
                                                       (x8917 (input)))
                                                (x8931 x8918 x8917)))
                                             (g8570
                                              (letrec ((x8951
                                                        ((lambda (j7508
                                                                  k7509
                                                                  f7510)
                                                           (letrec ((g8952
                                                                     (lambda (g7506
                                                                              g7507)
                                                                       (letrec ((g8953
                                                                                 (letrec ((x8954
                                                                                           (letrec ((x8958
                                                                                                     (WORLD/C
                                                                                                      j7508
                                                                                                      k7509
                                                                                                      g7506))
                                                                                                    (x8955
                                                                                                     (letrec ((x8956
                                                                                                               (letrec ((x8957
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8957))))
                                                                                                       (x8956
                                                                                                        j7508
                                                                                                        k7509
                                                                                                        g7507))))
                                                                                             (f7510
                                                                                              x8958
                                                                                              x8955))))
                                                                                   (WORLD/C
                                                                                    j7508
                                                                                    k7509
                                                                                    x8954))))
                                                                         g8953))))
                                                             g8952))
                                                         'module
                                                         'importer
                                                         next-world))
                                                       (x8938
                                                        (letrec ((x8939
                                                                  (letrec ((x8942
                                                                            (letrec ((x8943
                                                                                      (letrec ((x8946
                                                                                                (letrec ((x8947
                                                                                                          (letrec ((x8950
                                                                                                                    (input))
                                                                                                                   (x8948
                                                                                                                    (letrec ((x8949
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8949
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8950
                                                                                                             x8948))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8947)))
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
                                                                               'tetra
                                                                               x8943)))
                                                                           (x8940
                                                                            (letrec ((x8941
                                                                                      (input)))
                                                                              (cons
                                                                               x8941
                                                                               '()))))
                                                                    (cons
                                                                     x8942
                                                                     x8940))))
                                                          (cons 'world x8939)))
                                                       (x8937 (input)))
                                                (x8951 x8938 x8937)))
                                             (g8571
                                              (letrec ((x8972
                                                        ((lambda (j7512
                                                                  k7513
                                                                  f7514)
                                                           (letrec ((g8973
                                                                     (lambda (g7511)
                                                                       (letrec ((g8974
                                                                                 (letrec ((x8975
                                                                                           (letrec ((x8976
                                                                                                     (WORLD/C
                                                                                                      j7512
                                                                                                      k7513
                                                                                                      g7511)))
                                                                                             (f7514
                                                                                              x8976))))
                                                                                   (BSET/C
                                                                                    j7512
                                                                                    k7513
                                                                                    x8975))))
                                                                         g8974))))
                                                             g8973))
                                                         'module
                                                         'importer
                                                         ghost-blocks))
                                                       (x8959
                                                        (letrec ((x8960
                                                                  (letrec ((x8963
                                                                            (letrec ((x8964
                                                                                      (letrec ((x8967
                                                                                                (letrec ((x8968
                                                                                                          (letrec ((x8971
                                                                                                                    (input))
                                                                                                                   (x8969
                                                                                                                    (letrec ((x8970
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8970
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8971
                                                                                                             x8969))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8968)))
                                                                                               (x8965
                                                                                                (letrec ((x8966
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8966
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8967
                                                                                         x8965))))
                                                                              (cons
                                                                               'tetra
                                                                               x8964)))
                                                                           (x8961
                                                                            (letrec ((x8962
                                                                                      (input)))
                                                                              (cons
                                                                               x8962
                                                                               '()))))
                                                                    (cons
                                                                     x8963
                                                                     x8961))))
                                                          (cons
                                                           'world
                                                           x8960))))
                                                (x8972 x8959)))
                                             (g8572
                                              (letrec ((x8978
                                                        ((lambda (j7516
                                                                  k7517
                                                                  f7518)
                                                           (letrec ((g8979
                                                                     (lambda (g7515)
                                                                       (letrec ((g8980
                                                                                 (letrec ((x8981
                                                                                           (letrec ((x8982
                                                                                                     (any/c
                                                                                                      j7516
                                                                                                      k7517
                                                                                                      g7515)))
                                                                                             (f7518
                                                                                              x8982))))
                                                                                   (boolean?/c
                                                                                    j7516
                                                                                    k7517
                                                                                    x8981))))
                                                                         g8980))))
                                                             g8979))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8977 (input)))
                                                (x8978 x8977)))
                                             (g8573
                                              (letrec ((x8985
                                                        ((lambda (j7521
                                                                  k7522
                                                                  f7523)
                                                           (letrec ((g8986
                                                                     (lambda (g7519
                                                                              g7520)
                                                                       (letrec ((g8987
                                                                                 (letrec ((x8988
                                                                                           (letrec ((x8990
                                                                                                     (image?
                                                                                                      j7521
                                                                                                      k7522
                                                                                                      g7519))
                                                                                                    (x8989
                                                                                                     (image?
                                                                                                      j7521
                                                                                                      k7522
                                                                                                      g7520)))
                                                                                             (f7523
                                                                                              x8990
                                                                                              x8989))))
                                                                                   (image?
                                                                                    j7521
                                                                                    k7522
                                                                                    x8988))))
                                                                         g8987))))
                                                             g8986))
                                                         'module
                                                         'importer
                                                         overlay))
                                                       (x8984 (input))
                                                       (x8983 (input)))
                                                (x8985 x8984 x8983)))
                                             (g8574
                                              (letrec ((x8994
                                                        ((lambda (j7527
                                                                  k7528
                                                                  f7529)
                                                           (letrec ((g8995
                                                                     (lambda (g7524
                                                                              g7525
                                                                              g7526)
                                                                       (letrec ((g8996
                                                                                 (letrec ((x8997
                                                                                           (letrec ((x9000
                                                                                                     (real?/c
                                                                                                      j7527
                                                                                                      k7528
                                                                                                      g7524))
                                                                                                    (x8999
                                                                                                     (real?/c
                                                                                                      j7527
                                                                                                      k7528
                                                                                                      g7525))
                                                                                                    (x8998
                                                                                                     (string?/c
                                                                                                      j7527
                                                                                                      k7528
                                                                                                      g7526)))
                                                                                             (f7529
                                                                                              x9000
                                                                                              x8999
                                                                                              x8998))))
                                                                                   (image?
                                                                                    j7527
                                                                                    k7528
                                                                                    x8997))))
                                                                         g8996))))
                                                             g8995))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8993 (input))
                                                       (x8992 (input))
                                                       (x8991 (input)))
                                                (x8994 x8993 x8992 x8991)))
                                             (g8575
                                              (letrec ((x9005
                                                        ((lambda (j7534
                                                                  k7535
                                                                  f7536)
                                                           (letrec ((g9006
                                                                     (lambda (g7530
                                                                              g7531
                                                                              g7532
                                                                              g7533)
                                                                       (letrec ((g9007
                                                                                 (letrec ((x9008
                                                                                           (letrec ((x9012
                                                                                                     (real?/c
                                                                                                      j7534
                                                                                                      k7535
                                                                                                      g7530))
                                                                                                    (x9011
                                                                                                     (real?/c
                                                                                                      j7534
                                                                                                      k7535
                                                                                                      g7531))
                                                                                                    (x9010
                                                                                                     (COLOR/C
                                                                                                      j7534
                                                                                                      k7535
                                                                                                      g7532))
                                                                                                    (x9009
                                                                                                     (COLOR/C
                                                                                                      j7534
                                                                                                      k7535
                                                                                                      g7533)))
                                                                                             (f7536
                                                                                              x9012
                                                                                              x9011
                                                                                              x9010
                                                                                              x9009))))
                                                                                   (image?
                                                                                    j7534
                                                                                    k7535
                                                                                    x9008))))
                                                                         g9007))))
                                                             g9006))
                                                         'module
                                                         'importer
                                                         rectangle))
                                                       (x9004 (input))
                                                       (x9003 (input))
                                                       (x9002 (input))
                                                       (x9001 (input)))
                                                (x9005
                                                 x9004
                                                 x9003
                                                 x9002
                                                 x9001)))
                                             (g8576
                                              (letrec ((x9017
                                                        ((lambda (j7541
                                                                  k7542
                                                                  f7543)
                                                           (letrec ((g9018
                                                                     (lambda (g7537
                                                                              g7538
                                                                              g7539
                                                                              g7540)
                                                                       (letrec ((g9019
                                                                                 (letrec ((x9020
                                                                                           (letrec ((x9024
                                                                                                     (image/c
                                                                                                      j7541
                                                                                                      k7542
                                                                                                      g7537))
                                                                                                    (x9023
                                                                                                     (real?/c
                                                                                                      j7541
                                                                                                      k7542
                                                                                                      g7538))
                                                                                                    (x9022
                                                                                                     (real?/c
                                                                                                      j7541
                                                                                                      k7542
                                                                                                      g7539))
                                                                                                    (x9021
                                                                                                     (image/c
                                                                                                      j7541
                                                                                                      k7542
                                                                                                      g7540)))
                                                                                             (f7543
                                                                                              x9024
                                                                                              x9023
                                                                                              x9022
                                                                                              x9021))))
                                                                                   (image/c
                                                                                    j7541
                                                                                    k7542
                                                                                    x9020))))
                                                                         g9019))))
                                                             g9018))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x9016 (input))
                                                       (x9015 (input))
                                                       (x9014 (input))
                                                       (x9013 (input)))
                                                (x9017
                                                 x9016
                                                 x9015
                                                 x9014
                                                 x9013)))
                                             (g8577
                                              (letrec ((x9027
                                                        ((lambda (j7546
                                                                  k7547
                                                                  f7548)
                                                           (letrec ((g9028
                                                                     (lambda (g7544
                                                                              g7545)
                                                                       (letrec ((g9029
                                                                                 (letrec ((x9030
                                                                                           (letrec ((x9032
                                                                                                     (real?/c
                                                                                                      j7546
                                                                                                      k7547
                                                                                                      g7544))
                                                                                                    (x9031
                                                                                                     (real?/c
                                                                                                      j7546
                                                                                                      k7547
                                                                                                      g7545)))
                                                                                             (f7548
                                                                                              x9032
                                                                                              x9031))))
                                                                                   (image?
                                                                                    j7546
                                                                                    k7547
                                                                                    x9030))))
                                                                         g9029))))
                                                             g9028))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x9026 (input))
                                                       (x9025 (input)))
                                                (x9027 x9026 x9025)))
                                             (g8578
                                              (letrec ((x9034
                                                        ((lambda (j7550
                                                                  k7551
                                                                  f7552)
                                                           (letrec ((g9035
                                                                     (lambda (g7549)
                                                                       (letrec ((g9036
                                                                                 (letrec ((x9037
                                                                                           (letrec ((x9038
                                                                                                     (letrec ((x9039
                                                                                                               (letrec ((x9040
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x9040))))
                                                                                                       (x9039
                                                                                                        j7550
                                                                                                        k7551
                                                                                                        g7549))))
                                                                                             (f7552
                                                                                              x9038))))
                                                                                   (TETRA/C
                                                                                    j7550
                                                                                    k7551
                                                                                    x9037))))
                                                                         g9036))))
                                                             g9035))
                                                         'module
                                                         'importer
                                                         list-pick-random))
                                                       (x9033 (input)))
                                                (x9034 x9033)))
                                             (g8579
                                              (integer?/c
                                               'module
                                               'importer
                                               neg-1))
                                             (g8580
                                              (letrec ((x9054
                                                        ((lambda (j7554
                                                                  k7555
                                                                  f7556)
                                                           (letrec ((g9055
                                                                     (lambda (g7553)
                                                                       (letrec ((g9056
                                                                                 (letrec ((x9057
                                                                                           (letrec ((x9058
                                                                                                     (WORLD/C
                                                                                                      j7554
                                                                                                      k7555
                                                                                                      g7553)))
                                                                                             (f7556
                                                                                              x9058))))
                                                                                   (image/c
                                                                                    j7554
                                                                                    k7555
                                                                                    x9057))))
                                                                         g9056))))
                                                             g9055))
                                                         'module
                                                         'importer
                                                         world->image))
                                                       (x9041
                                                        (letrec ((x9042
                                                                  (letrec ((x9045
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
                                                           'world
                                                           x9042))))
                                                (x9054 x9041)))
                                             (g8581
                                              (letrec ((x9060
                                                        ((lambda (j7558
                                                                  k7559
                                                                  f7560)
                                                           (letrec ((g9061
                                                                     (lambda (g7557)
                                                                       (letrec ((g9062
                                                                                 (letrec ((x9063
                                                                                           (letrec ((x9064
                                                                                                     (BSET/C
                                                                                                      j7558
                                                                                                      k7559
                                                                                                      g7557)))
                                                                                             (f7560
                                                                                              x9064))))
                                                                                   (image/c
                                                                                    j7558
                                                                                    k7559
                                                                                    x9063))))
                                                                         g9062))))
                                                             g9061))
                                                         'module
                                                         'importer
                                                         blocks->image))
                                                       (x9059 (input)))
                                                (x9060 x9059)))
                                             (g8582
                                              (letrec ((x9072
                                                        ((lambda (j7562
                                                                  k7563
                                                                  f7564)
                                                           (letrec ((g9073
                                                                     (lambda (g7561)
                                                                       (letrec ((g9074
                                                                                 (letrec ((x9075
                                                                                           (letrec ((x9076
                                                                                                     (BLOCK/C
                                                                                                      j7562
                                                                                                      k7563
                                                                                                      g7561)))
                                                                                             (f7564
                                                                                              x9076))))
                                                                                   (image/c
                                                                                    j7562
                                                                                    k7563
                                                                                    x9075))))
                                                                         g9074))))
                                                             g9073))
                                                         'module
                                                         'importer
                                                         block->image))
                                                       (x9065
                                                        (letrec ((x9066
                                                                  (letrec ((x9071
                                                                            (input))
                                                                           (x9067
                                                                            (letrec ((x9070
                                                                                      (input))
                                                                                     (x9068
                                                                                      (letrec ((x9069
                                                                                                (input)))
                                                                                        (cons
                                                                                         x9069
                                                                                         '()))))
                                                                              (cons
                                                                               x9070
                                                                               x9068))))
                                                                    (cons
                                                                     x9071
                                                                     x9067))))
                                                          (cons
                                                           'block
                                                           x9066))))
                                                (x9072 x9065)))
                                             (g8583
                                              (letrec ((x9085
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g9086
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g9087
                                                                                 (letrec ((x9088
                                                                                           (letrec ((x9090
                                                                                                     (BLOCK/C
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x9089
                                                                                                     (image/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x9090
                                                                                              x9089))))
                                                                                   (image/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x9088))))
                                                                         g9087))))
                                                             g9086))
                                                         'module
                                                         'importer
                                                         place-block))
                                                       (x9078
                                                        (letrec ((x9079
                                                                  (letrec ((x9084
                                                                            (input))
                                                                           (x9080
                                                                            (letrec ((x9083
                                                                                      (input))
                                                                                     (x9081
                                                                                      (letrec ((x9082
                                                                                                (input)))
                                                                                        (cons
                                                                                         x9082
                                                                                         '()))))
                                                                              (cons
                                                                               x9083
                                                                               x9081))))
                                                                    (cons
                                                                     x9084
                                                                     x9080))))
                                                          (cons 'block x9079)))
                                                       (x9077 (input)))
                                                (x9085 x9078 x9077)))
                                             (g8584
                                              (letrec ((x9092
                                                        ((lambda (j7571
                                                                  k7572
                                                                  f7573)
                                                           (letrec ((g9093
                                                                     (lambda (g7570)
                                                                       (letrec ((g9094
                                                                                 (letrec ((x9095
                                                                                           (letrec ((x9096
                                                                                                     (letrec ((x9097
                                                                                                               (letrec ((x9098
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x9098))))
                                                                                                       (x9097
                                                                                                        j7571
                                                                                                        k7572
                                                                                                        g7570))))
                                                                                             (f7573
                                                                                              x9096))))
                                                                                   (WORLD/C
                                                                                    j7571
                                                                                    k7572
                                                                                    x9095))))
                                                                         g9094))))
                                                             g9093))
                                                         'module
                                                         'importer
                                                         world0))
                                                       (x9091 (input)))
                                                (x9092 x9091))))
                                      g8584))))
                          g7610))))
              g7608)))
    g7607))
