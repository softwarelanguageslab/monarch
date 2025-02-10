(letrec ((any? (lambda (v) (letrec ((g7551 #t)) g7551)))
         (meta (lambda (v) (letrec ((g7552 v)) g7552)))
         (member
          (lambda (v lst)
            (letrec ((g7553
                      (letrec ((g7554
                                (letrec ((x-e7555 lst))
                                  (match
                                   x-e7555
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7556 (eq? v v1)))
                                       (if x-cnd7556 #t (member v vs)))))))))
                        g7554)))
              g7553)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7557 (lambda (v) (letrec ((g7558 v)) g7558)))) g7557)))
         (nonzero?
          (lambda (v)
            (letrec ((g7559 (letrec ((x7560 (= v 0))) (not x7560)))) g7559))))
  (letrec ((g7561
            (letrec ((g7562
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7563 '())
                                 (g7564
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7565
                                                        (lambda (k j lst)
                                                          (letrec ((g7566
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7567
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7567))
                                                                     lst)))
                                                            g7566))))
                                                g7565)))
                                           (real?/c
                                            (lambda (g7258 g7259 g7260)
                                              (letrec ((g7568
                                                        (letrec ((x-cnd7569
                                                                  (real?
                                                                   g7260)))
                                                          (if x-cnd7569
                                                            g7260
                                                            (blame
                                                             g7258
                                                             'real?)))))
                                                g7568)))
                                           (boolean?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7570
                                                        (letrec ((x-cnd7571
                                                                  (boolean?
                                                                   g7263)))
                                                          (if x-cnd7571
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'boolean?)))))
                                                g7570)))
                                           (number?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7572
                                                        (letrec ((x-cnd7573
                                                                  (number?
                                                                   g7266)))
                                                          (if x-cnd7573
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'number?)))))
                                                g7572)))
                                           (any/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7574
                                                        (letrec ((x-cnd7575
                                                                  ((lambda (v)
                                                                     (letrec ((g7576
                                                                               #t))
                                                                       g7576))
                                                                   g7269)))
                                                          (if x-cnd7575
                                                            g7269
                                                            (blame
                                                             g7267
                                                             '(lambda (v)
                                                                #t))))))
                                                g7574)))
                                           (any?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7577
                                                        (letrec ((x-cnd7578
                                                                  ((lambda (v)
                                                                     (letrec ((g7579
                                                                               #t))
                                                                       g7579))
                                                                   g7272)))
                                                          (if x-cnd7578
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7577)))
                                           (cons?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7580
                                                        (letrec ((x-cnd7581
                                                                  (pair?
                                                                   g7275)))
                                                          (if x-cnd7581
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'pair?)))))
                                                g7580)))
                                           (pair?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7582
                                                        (letrec ((x-cnd7583
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7583
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7582)))
                                           (integer?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7584
                                                        (letrec ((x-cnd7585
                                                                  (integer?
                                                                   g7281)))
                                                          (if x-cnd7585
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'integer?)))))
                                                g7584)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7586
                                                        (lambda (k j v)
                                                          (letrec ((g7587
                                                                    (letrec ((x-cnd7588
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7588
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7587))))
                                                g7586)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7589
                                                        (lambda (k j v)
                                                          (letrec ((g7590
                                                                    (letrec ((x-cnd7591
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7591
                                                                        '()
                                                                        (letrec ((x7595
                                                                                  (letrec ((x7596
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7596)))
                                                                                 (x7592
                                                                                  (letrec ((x7594
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7593
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7594
                                                                                     k
                                                                                     j
                                                                                     x7593))))
                                                                          (orig-cons
                                                                           x7595
                                                                           x7592))))))
                                                            g7590))))
                                                g7589)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7597 #t)) g7597)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7598
                                                        (letrec ((x7599
                                                                  (= v 0)))
                                                          (not x7599))))
                                                g7598)))
                                           (nonzero?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7600
                                                        (letrec ((x-cnd7601
                                                                  ((lambda (v)
                                                                     (letrec ((g7602
                                                                               (letrec ((x7603
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7603))))
                                                                       g7602))
                                                                   g7284)))
                                                          (if x-cnd7601
                                                            g7284
                                                            (blame
                                                             g7282
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7600)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7604 v)) g7604)))
                                           (+
                                            ((lambda (j7287 k7288 f7289)
                                               (letrec ((g7606
                                                         (lambda (g7285 g7286)
                                                           (letrec ((g7607
                                                                     (letrec ((x7608
                                                                               (letrec ((x7610
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7285))
                                                                                        (x7609
                                                                                         (number?/c
                                                                                          j7287
                                                                                          k7288
                                                                                          g7286)))
                                                                                 (f7289
                                                                                  x7610
                                                                                  x7609))))
                                                                       (number?/c
                                                                        j7287
                                                                        k7288
                                                                        x7608))))
                                                             g7607))))
                                                 g7606))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7605 (orig-+ a b)))
                                                 g7605))))
                                           (-
                                            ((lambda (j7292 k7293 f7294)
                                               (letrec ((g7612
                                                         (lambda (g7290 g7291)
                                                           (letrec ((g7613
                                                                     (letrec ((x7614
                                                                               (letrec ((x7616
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7290))
                                                                                        (x7615
                                                                                         (number?/c
                                                                                          j7292
                                                                                          k7293
                                                                                          g7291)))
                                                                                 (f7294
                                                                                  x7616
                                                                                  x7615))))
                                                                       (number?/c
                                                                        j7292
                                                                        k7293
                                                                        x7614))))
                                                             g7613))))
                                                 g7612))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7611 (orig-- a b)))
                                                 g7611))))
                                           (*
                                            ((lambda (j7297 k7298 f7299)
                                               (letrec ((g7618
                                                         (lambda (g7295 g7296)
                                                           (letrec ((g7619
                                                                     (letrec ((x7620
                                                                               (letrec ((x7622
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7295))
                                                                                        (x7621
                                                                                         (number?/c
                                                                                          j7297
                                                                                          k7298
                                                                                          g7296)))
                                                                                 (f7299
                                                                                  x7622
                                                                                  x7621))))
                                                                       (number?/c
                                                                        j7297
                                                                        k7298
                                                                        x7620))))
                                                             g7619))))
                                                 g7618))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7617 (orig-* a b)))
                                                 g7617))))
                                           (/
                                            ((lambda (j7302 k7303 f7304)
                                               (letrec ((g7624
                                                         (lambda (g7300 g7301)
                                                           (letrec ((g7625
                                                                     (letrec ((x7626
                                                                               (letrec ((x7628
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7300))
                                                                                        (x7627
                                                                                         (number?/c
                                                                                          j7302
                                                                                          k7303
                                                                                          g7301)))
                                                                                 (f7304
                                                                                  x7628
                                                                                  x7627))))
                                                                       (number?/c
                                                                        j7302
                                                                        k7303
                                                                        x7626))))
                                                             g7625))))
                                                 g7624))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7623 (orig-/ a b)))
                                                 g7623))))
                                           (car
                                            ((lambda (j7306 k7307 f7308)
                                               (letrec ((g7630
                                                         (lambda (g7305)
                                                           (letrec ((g7631
                                                                     (letrec ((x7632
                                                                               (letrec ((x7633
                                                                                         (pair?/c
                                                                                          j7306
                                                                                          k7307
                                                                                          g7305)))
                                                                                 (f7308
                                                                                  x7633))))
                                                                       (any/c
                                                                        j7306
                                                                        k7307
                                                                        x7632))))
                                                             g7631))))
                                                 g7630))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7629 (orig-car p)))
                                                 g7629))))
                                           (cdr
                                            ((lambda (j7310 k7311 f7312)
                                               (letrec ((g7635
                                                         (lambda (g7309)
                                                           (letrec ((g7636
                                                                     (letrec ((x7637
                                                                               (letrec ((x7638
                                                                                         (pair?/c
                                                                                          j7310
                                                                                          k7311
                                                                                          g7309)))
                                                                                 (f7312
                                                                                  x7638))))
                                                                       (any/c
                                                                        j7310
                                                                        k7311
                                                                        x7637))))
                                                             g7636))))
                                                 g7635))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7634 (orig-cdr p)))
                                                 g7634))))
                                           (cons
                                            ((lambda (j7315 k7316 f7317)
                                               (letrec ((g7640
                                                         (lambda (g7313 g7314)
                                                           (letrec ((g7641
                                                                     (letrec ((x7642
                                                                               (letrec ((x7644
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7313))
                                                                                        (x7643
                                                                                         (any/c
                                                                                          j7315
                                                                                          k7316
                                                                                          g7314)))
                                                                                 (f7317
                                                                                  x7644
                                                                                  x7643))))
                                                                       (pair?/c
                                                                        j7315
                                                                        k7316
                                                                        x7642))))
                                                             g7641))))
                                                 g7640))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7639
                                                         (orig-cons a b)))
                                                 g7639))))
                                           (vector-ref
                                            ((lambda (j7319 k7320 f7321)
                                               (letrec ((g7646
                                                         (lambda (g7318)
                                                           (letrec ((g7647
                                                                     (letrec ((x7648
                                                                               (letrec ((x7649
                                                                                         (vector?/c
                                                                                          j7319
                                                                                          k7320
                                                                                          g7318)))
                                                                                 (f7321
                                                                                  x7649))))
                                                                       (integer?/c
                                                                        j7319
                                                                        k7320
                                                                        x7648))))
                                                             g7647))))
                                                 g7646))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7645
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7645))))
                                           (vector-set!
                                            ((lambda (j7324 k7325 f7326)
                                               (letrec ((g7651
                                                         (lambda (g7322 g7323)
                                                           (letrec ((g7652
                                                                     (letrec ((x7653
                                                                               (letrec ((x7655
                                                                                         (vector?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7322))
                                                                                        (x7654
                                                                                         (integer?/c
                                                                                          j7324
                                                                                          k7325
                                                                                          g7323)))
                                                                                 (f7326
                                                                                  x7655
                                                                                  x7654))))
                                                                       (any/c
                                                                        j7324
                                                                        k7325
                                                                        x7653))))
                                                             g7652))))
                                                 g7651))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7650
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7650))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7656
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7656)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7657
                                                        (letrec ((x7658
                                                                  (letrec ((x7659
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7659))))
                                                          (cdr x7658))))
                                                g7657)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7660
                                                        (letrec ((x7663
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7663)))
                                                       (g7661
                                                        (letrec ((x7664
                                                                  (list? l)))
                                                          (assert x7664)))
                                                       (g7662
                                                        (letrec ((x-cnd7665
                                                                  (null? l)))
                                                          (if x-cnd7665
                                                            '()
                                                            (letrec ((x7668
                                                                      (letrec ((x7669
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7669)))
                                                                     (x7666
                                                                      (letrec ((x7667
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7667))))
                                                              (cons
                                                               x7668
                                                               x7666))))))
                                                g7662)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7670
                                                        (letrec ((x7671
                                                                  (car x)))
                                                          (cdr x7671))))
                                                g7670)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7672
                                                        (letrec ((x7673
                                                                  (letrec ((x7674
                                                                            (letrec ((x7675
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7675))))
                                                                    (cdr
                                                                     x7674))))
                                                          (car x7673))))
                                                g7672)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7676
                                                        (letrec ((x7677
                                                                  (letrec ((x7678
                                                                            (letrec ((x7679
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7679))))
                                                                    (car
                                                                     x7678))))
                                                          (cdr x7677))))
                                                g7676)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7680
                                                        (letrec ((x7683
                                                                  (string?
                                                                   filename)))
                                                          (assert x7683)))
                                                       (g7681
                                                        (letrec ((x7684
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7684)))
                                                       (g7682
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7685
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7686 res))
                                                            g7686))))
                                                g7682)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7687
                                                        (letrec ((x7688
                                                                  (letrec ((x7689
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7689))))
                                                          (car x7688))))
                                                g7687)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7690
                                                        (letrec ((x7691
                                                                  (letrec ((x7692
                                                                            (letrec ((x7693
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7693))))
                                                                    (car
                                                                     x7692))))
                                                          (cdr x7691))))
                                                g7690)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7694
                                                        (letrec ((x7696
                                                                  (list? l)))
                                                          (assert x7696)))
                                                       (g7695
                                                        (letrec ((x-cnd7697
                                                                  (null? l)))
                                                          (if x-cnd7697
                                                            #f
                                                            (letrec ((x-cnd7698
                                                                      (letrec ((x7699
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7699
                                                                         k))))
                                                              (if x-cnd7698
                                                                (car l)
                                                                (letrec ((x7700
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7700))))))))
                                                g7695)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7701
                                                        (letrec ((x7702
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7702))))
                                                g7701)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7703
                                                        (letrec ((x7705
                                                                  (list? l)))
                                                          (assert x7705)))
                                                       (g7704
                                                        (letrec ((x-cnd7706
                                                                  (null? l)))
                                                          (if x-cnd7706
                                                            ""
                                                            (letrec ((x7709
                                                                      (letrec ((x7710
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7710)))
                                                                     (x7707
                                                                      (letrec ((x7708
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7708))))
                                                              (string-append
                                                               x7709
                                                               x7707))))))
                                                g7704)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7711
                                                        (letrec ((x7714
                                                                  (char? c1)))
                                                          (assert x7714)))
                                                       (g7712
                                                        (letrec ((x7715
                                                                  (char? c2)))
                                                          (assert x7715)))
                                                       (g7713
                                                        (letrec ((val7241
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7716
                                                                    (if val7241
                                                                      val7241
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7716))))
                                                g7713)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7717
                                                        (letrec ((x7718
                                                                  (letrec ((x7719
                                                                            (letrec ((x7720
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7720))))
                                                                    (cdr
                                                                     x7719))))
                                                          (cdr x7718))))
                                                g7717)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7721
                                                        (letrec ((x7724
                                                                  (list? l)))
                                                          (assert x7724)))
                                                       (g7722
                                                        (letrec ((x7725
                                                                  (number?)))
                                                          (assert x7725)))
                                                       (g7723
                                                        (letrec ((x-cnd7726
                                                                  (zero? k)))
                                                          (if x-cnd7726
                                                            x
                                                            (letrec ((x7728
                                                                      (cdr x))
                                                                     (x7727
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7728
                                                               x7727))))))
                                                g7723)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7729 '())) g7729)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7730
                                                        (letrec ((x-cnd7731
                                                                  (letrec ((x7732
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7732))))
                                                          (if x-cnd7731
                                                            (letrec ((x7733
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7733))
                                                            #f))))
                                                g7730)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7734
                                                        (letrec ((x7736
                                                                  (number? x)))
                                                          (assert x7736)))
                                                       (g7735
                                                        (letrec ((val7242
                                                                  (< x y)))
                                                          (letrec ((g7737
                                                                    (if val7242
                                                                      val7242
                                                                      (letrec ((val7243
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7738
                                                                                  (if val7243
                                                                                    val7243
                                                                                    #f)))
                                                                          g7738)))))
                                                            g7737))))
                                                g7735)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7739
                                                        (letrec ((val7244
                                                                  (letrec ((x7740
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7740
                                                                     9))))
                                                          (letrec ((g7741
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (letrec ((x7742
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7742
                                                                                   10))))
                                                                        (letrec ((g7743
                                                                                  (if val7245
                                                                                    val7245
                                                                                    (letrec ((x7744
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7744
                                                                                       32)))))
                                                                          g7743)))))
                                                            g7741))))
                                                g7739)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7745
                                                        (letrec ((x7746
                                                                  (letrec ((x7747
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7747))))
                                                          (cdr x7746))))
                                                g7745)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7750
                                                                  (number? x)))
                                                          (assert x7750)))
                                                       (g7749 (> x 0)))
                                                g7749)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7751 #f)) g7751)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7752
                                                        (letrec ((x7753
                                                                  (cdr x)))
                                                          (cdr x7753))))
                                                g7752)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7754
                                                        (letrec ((x7756
                                                                  (number? x)))
                                                          (assert x7756)))
                                                       (g7755
                                                        (letrec ((x-cnd7757
                                                                  (< x 0)))
                                                          (if x-cnd7757
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7755)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7758
                                                        (letrec ((val7246
                                                                  (eq? a b)))
                                                          (letrec ((g7759
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7761
                                                                                          (null?
                                                                                           a))
                                                                                         (x7760
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7761
                                                                                       x7760))))
                                                                        (letrec ((g7762
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((val7248
                                                                                              (letrec ((x7765
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7764
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7763
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7765
                                                                                                     x7764
                                                                                                     x7763))))
                                                                                      (letrec ((g7766
                                                                                                (if val7248
                                                                                                  val7248
                                                                                                  (letrec ((val7249
                                                                                                            (letrec ((x7774
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7773
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7770
                                                                                                                      (letrec ((x7772
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7771
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7772
                                                                                                                         x7771)))
                                                                                                                     (x7767
                                                                                                                      (letrec ((x7769
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7768
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7769
                                                                                                                         x7768))))
                                                                                                              (and x7774
                                                                                                                   x7773
                                                                                                                   x7770
                                                                                                                   x7767))))
                                                                                                    (letrec ((g7775
                                                                                                              (if val7249
                                                                                                                val7249
                                                                                                                (letrec ((x7791
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7790
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7776
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7777
                                                                                                                                      (letrec ((x7788
                                                                                                                                                (letrec ((x7789
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7789
                                                                                                                                                   n)))
                                                                                                                                               (x7778
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7779
                                                                                                                                                                      (letrec ((x7786
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7780
                                                                                                                                                                                (letrec ((x7783
                                                                                                                                                                                          (letrec ((x7785
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7784
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7785
                                                                                                                                                                                             x7784)))
                                                                                                                                                                                         (x7781
                                                                                                                                                                                          (letrec ((x7782
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7782))))
                                                                                                                                                                                  (and x7783
                                                                                                                                                                                       x7781))))
                                                                                                                                                                        (or x7786
                                                                                                                                                                            x7780))))
                                                                                                                                                              g7779))))
                                                                                                                                                  (letrec ((g7787
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7787))))
                                                                                                                                        (and x7788
                                                                                                                                             x7778))))
                                                                                                                              g7777))))
                                                                                                                  (and x7791
                                                                                                                       x7790
                                                                                                                       x7776)))))
                                                                                                      g7775)))))
                                                                                        g7766)))))
                                                                          g7762)))))
                                                            g7759))))
                                                g7758)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (letrec ((x7794
                                                                            (letrec ((x7795
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7795))))
                                                                    (car
                                                                     x7794))))
                                                          (cdr x7793))))
                                                g7792)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7796
                                                        (letrec ((x7797
                                                                  (letrec ((x7798
                                                                            (letrec ((x7799
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7799))))
                                                                    (car
                                                                     x7798))))
                                                          (car x7797))))
                                                g7796)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7800 (eq? x y)))
                                                g7800)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7801
                                                        (letrec ((x7803
                                                                  (number? x)))
                                                          (assert x7803)))
                                                       (g7802
                                                        (letrec ((val7250
                                                                  (> x y)))
                                                          (letrec ((g7804
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7805
                                                                                  (if val7251
                                                                                    val7251
                                                                                    #f)))
                                                                          g7805)))))
                                                            g7804))))
                                                g7802)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7806
                                                        (letrec ((x7809
                                                                  (string?
                                                                   filename)))
                                                          (assert x7809)))
                                                       (g7807
                                                        (letrec ((x7810
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7811
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7812 res))
                                                            g7812))))
                                                g7808)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7813 (cons x '())))
                                                g7813)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7814
                                                        (letrec ((x7817
                                                                  (char? c1)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x7818
                                                                  (char? c2)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((val7252
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7819
                                                                    (if val7252
                                                                      val7252
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7819))))
                                                g7816)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7820
                                                        (letrec ((x7821
                                                                  (letrec ((x7822
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7822))))
                                                          (cdr x7821))))
                                                g7820)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7823
                                                        (letrec ((x7824
                                                                  (letrec ((x7825
                                                                            (letrec ((x7826
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7826))))
                                                                    (car
                                                                     x7825))))
                                                          (cdr x7824))))
                                                g7823)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7827
                                                        (letrec ((x7828
                                                                  (letrec ((x7829
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7829))))
                                                          (car x7828))))
                                                g7827)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7830
                                                        (letrec ((x7831
                                                                  (letrec ((x7832
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7832))))
                                                          (car x7831))))
                                                g7830)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7833
                                                        (letrec ((x7836
                                                                  (char? c1)))
                                                          (assert x7836)))
                                                       (g7834
                                                        (letrec ((x7837
                                                                  (char? c2)))
                                                          (assert x7837)))
                                                       (g7835
                                                        (letrec ((x7838
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7838))))
                                                g7835)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7839
                                                        (letrec ((x7840
                                                                  (letrec ((x7841
                                                                            (letrec ((x7842
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7842))))
                                                                    (car
                                                                     x7841))))
                                                          (car x7840))))
                                                g7839)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7843
                                                        (letrec ((x7845
                                                                  (number? x)))
                                                          (assert x7845)))
                                                       (g7844 (< x 0)))
                                                g7844)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7846 (memq e l)))
                                                g7846)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7847
                                                        (letrec ((x7848
                                                                  (letrec ((x7849
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7849))))
                                                          (car x7848))))
                                                g7847)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7850 '())) g7850)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7851
                                                        (letrec ((x7853
                                                                  (list? l)))
                                                          (assert x7853)))
                                                       (g7852
                                                        (letrec ((x-cnd7854
                                                                  (null? l)))
                                                          (if x-cnd7854
                                                            '()
                                                            (letrec ((x7857
                                                                      (letrec ((x7858
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7858)))
                                                                     (x7855
                                                                      (letrec ((x7856
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7856))))
                                                              (append
                                                               x7857
                                                               x7855))))))
                                                g7852)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7859
                                                        (letrec ((x7860
                                                                  (letrec ((x7861
                                                                            (letrec ((x7862
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7862))))
                                                                    (car
                                                                     x7861))))
                                                          (car x7860))))
                                                g7859)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7863
                                                        (letrec ((x7864
                                                                  (letrec ((x7865
                                                                            (letrec ((x7866
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7866))))
                                                                    (cdr
                                                                     x7865))))
                                                          (cdr x7864))))
                                                g7863)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7867
                                                        (letrec ((x7869
                                                                  (number? x)))
                                                          (assert x7869)))
                                                       (g7868
                                                        (letrec ((x7870
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7870))))
                                                g7868)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7873
                                                                            (letrec ((x7874
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7874))))
                                                                    (car
                                                                     x7873))))
                                                          (car x7872))))
                                                g7871)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7875
                                                        (letrec ((x7878
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7878)))
                                                       (g7876
                                                        (letrec ((x7879
                                                                  (list?
                                                                   args)))
                                                          (assert x7879)))
                                                       (g7877
                                                        (letrec ((x-cnd7880
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7880
                                                            (letrec ((g7881
                                                                      (proc)))
                                                              g7881)
                                                            (letrec ((x-cnd7882
                                                                      (letrec ((x7883
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7883))))
                                                              (if x-cnd7882
                                                                (letrec ((g7884
                                                                          (letrec ((x7885
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7885))))
                                                                  g7884)
                                                                (letrec ((x-cnd7886
                                                                          (letrec ((x7887
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7887))))
                                                                  (if x-cnd7886
                                                                    (letrec ((g7888
                                                                              (letrec ((x7890
                                                                                        (car
                                                                                         args))
                                                                                       (x7889
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7890
                                                                                 x7889))))
                                                                      g7888)
                                                                    (letrec ((x-cnd7891
                                                                              (letrec ((x7892
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7892))))
                                                                      (if x-cnd7891
                                                                        (letrec ((g7893
                                                                                  (letrec ((x7896
                                                                                            (car
                                                                                             args))
                                                                                           (x7895
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7894
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7896
                                                                                     x7895
                                                                                     x7894))))
                                                                          g7893)
                                                                        (letrec ((x-cnd7897
                                                                                  (letrec ((x7898
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7898))))
                                                                          (if x-cnd7897
                                                                            (letrec ((g7899
                                                                                      (letrec ((x7903
                                                                                                (car
                                                                                                 args))
                                                                                               (x7902
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7901
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7900
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7903
                                                                                         x7902
                                                                                         x7901
                                                                                         x7900))))
                                                                              g7899)
                                                                            (letrec ((x-cnd7904
                                                                                      (letrec ((x7905
                                                                                                (letrec ((x7906
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7906))))
                                                                                        (null?
                                                                                         x7905))))
                                                                              (if x-cnd7904
                                                                                (letrec ((g7907
                                                                                          (letrec ((x7913
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7912
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7911
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7910
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7908
                                                                                                    (letrec ((x7909
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7909))))
                                                                                            (proc
                                                                                             x7913
                                                                                             x7912
                                                                                             x7911
                                                                                             x7910
                                                                                             x7908))))
                                                                                  g7907)
                                                                                (letrec ((x-cnd7914
                                                                                          (letrec ((x7915
                                                                                                    (letrec ((x7916
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7916))))
                                                                                            (null?
                                                                                             x7915))))
                                                                                  (if x-cnd7914
                                                                                    (letrec ((g7917
                                                                                              (letrec ((x7925
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7924
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7923
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7922
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7920
                                                                                                        (letrec ((x7921
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7921)))
                                                                                                       (x7918
                                                                                                        (letrec ((x7919
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7919))))
                                                                                                (proc
                                                                                                 x7925
                                                                                                 x7924
                                                                                                 x7923
                                                                                                 x7922
                                                                                                 x7920
                                                                                                 x7918))))
                                                                                      g7917)
                                                                                    (letrec ((x-cnd7926
                                                                                              (letrec ((x7927
                                                                                                        (letrec ((x7928
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7928))))
                                                                                                (null?
                                                                                                 x7927))))
                                                                                      (if x-cnd7926
                                                                                        (letrec ((g7929
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
                                                                                                             args))
                                                                                                           (x7934
                                                                                                            (letrec ((x7935
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x7935)))
                                                                                                           (x7932
                                                                                                            (letrec ((x7933
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7933)))
                                                                                                           (x7930
                                                                                                            (letrec ((x7931
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7931))))
                                                                                                    (proc
                                                                                                     x7939
                                                                                                     x7938
                                                                                                     x7937
                                                                                                     x7936
                                                                                                     x7934
                                                                                                     x7932
                                                                                                     x7930))))
                                                                                          g7929)
                                                                                        (letrec ((g7940
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g7940)))))))))))))))))))
                                                g7877)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7941
                                                        (letrec ((x7943
                                                                  (list? l)))
                                                          (assert x7943)))
                                                       (g7942
                                                        (letrec ((x-cnd7944
                                                                  (null? l)))
                                                          (if x-cnd7944
                                                            #f
                                                            (letrec ((x-cnd7945
                                                                      (letrec ((x7946
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7946
                                                                         e))))
                                                              (if x-cnd7945
                                                                l
                                                                (letrec ((x7947
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7947))))))))
                                                g7942)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7948
                                                        (letrec ((x7949
                                                                  (letrec ((x7950
                                                                            (letrec ((x7951
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7951))))
                                                                    (cdr
                                                                     x7950))))
                                                          (cdr x7949))))
                                                g7948)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7952
                                                        (letrec ((x7953
                                                                  (letrec ((x7954
                                                                            (letrec ((x7955
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7955))))
                                                                    (cdr
                                                                     x7954))))
                                                          (car x7953))))
                                                g7952)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7956 (random 42)))
                                                g7956)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7957
                                                        (letrec ((x7959
                                                                  (number? x)))
                                                          (assert x7959)))
                                                       (g7958 (= x 0)))
                                                g7958)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7960
                                                        (letrec ((val7253
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7961
                                                                    (if val7253
                                                                      val7253
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7961))))
                                                g7960)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7962
                                                        (letrec ((x7963
                                                                  (cdr x)))
                                                          (car x7963))))
                                                g7962)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7964
                                                        (letrec ((val7254
                                                                  (letrec ((x7967
                                                                            (pair?
                                                                             l))
                                                                           (x7965
                                                                            (letrec ((x7966
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7966))))
                                                                    (and x7967
                                                                         x7965))))
                                                          (letrec ((g7968
                                                                    (if val7254
                                                                      val7254
                                                                      (null?
                                                                       l))))
                                                            g7968))))
                                                g7964)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7969
                                                        (letrec ((x7970
                                                                  (letrec ((x7971
                                                                            (letrec ((x7972
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7972))))
                                                                    (cdr
                                                                     x7971))))
                                                          (cdr x7970))))
                                                g7969)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7973
                                                        (letrec ((x-cnd7974
                                                                  (letrec ((x7975
                                                                            #\0))
                                                                    (char<=?
                                                                     x7975
                                                                     c))))
                                                          (if x-cnd7974
                                                            (letrec ((x7976
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7976))
                                                            #f))))
                                                g7973)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7982
                                                                         k))))
                                                              (if x-cnd7981
                                                                (car l)
                                                                (letrec ((x7983
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7983))))))))
                                                g7978)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7984 (if x #f #t)))
                                                g7984)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7985 (append l1 l2)))
                                                g7985)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7986
                                                        (letrec ((x7988
                                                                  (list? l)))
                                                          (assert x7988)))
                                                       (g7987
                                                        (letrec ((x-cnd7989
                                                                  (null? l)))
                                                          (if x-cnd7989
                                                            #f
                                                            (letrec ((x-cnd7990
                                                                      (letrec ((x7991
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7991
                                                                         e))))
                                                              (if x-cnd7990
                                                                l
                                                                (letrec ((x7992
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7992))))))))
                                                g7987)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7993
                                                        (letrec ((x7994
                                                                  (letrec ((x7995
                                                                            (letrec ((x7996
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7996))))
                                                                    (cdr
                                                                     x7995))))
                                                          (car x7994))))
                                                g7993)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7997
                                                        (letrec ((x7999
                                                                  (list? l)))
                                                          (assert x7999)))
                                                       (g7998
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8000
                                                                              (letrec ((x-cnd8001
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8001
                                                                                  0
                                                                                  (letrec ((x8002
                                                                                            (letrec ((x8003
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8003))))
                                                                                    (+
                                                                                     1
                                                                                     x8002))))))
                                                                      g8000))))
                                                          (letrec ((g8004
                                                                    (rec l)))
                                                            g8004))))
                                                g7998)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8005
                                                        (letrec ((x8008
                                                                  (char? c1)))
                                                          (assert x8008)))
                                                       (g8006
                                                        (letrec ((x8009
                                                                  (char? c2)))
                                                          (assert x8009)))
                                                       (g8007
                                                        (letrec ((val7255
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8010
                                                                    (if val7255
                                                                      val7255
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8010))))
                                                g8007)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8011
                                                        (letrec ((x8012
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8012))))
                                                g8011)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8013
                                                        (letrec ((x8014
                                                                  (letrec ((x8015
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8015))))
                                                          (cdr x8014))))
                                                g8013)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8016
                                                        (letrec ((x8018
                                                                  (list? l)))
                                                          (assert x8018)))
                                                       (g8017
                                                        (letrec ((x-cnd8019
                                                                  (null? l)))
                                                          (if x-cnd8019
                                                            #f
                                                            (letrec ((x-cnd8020
                                                                      (letrec ((x8021
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8021
                                                                         k))))
                                                              (if x-cnd8020
                                                                (car l)
                                                                (letrec ((x8022
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8022))))))))
                                                g8017)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8023
                                                        (letrec ((x8024
                                                                  (car x)))
                                                          (car x8024))))
                                                g8023)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8025
                                                        (letrec ((x8028
                                                                  (char? c1)))
                                                          (assert x8028)))
                                                       (g8026
                                                        (letrec ((x8029
                                                                  (char? c2)))
                                                          (assert x8029)))
                                                       (g8027
                                                        (letrec ((x8030
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8030))))
                                                g8027)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8031
                                                        (letrec ((val7256
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8032
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8032))))
                                                g8031)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8033
                                                        (letrec ((x8036
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8036)))
                                                       (g8034
                                                        (letrec ((x8037
                                                                  (list? l)))
                                                          (assert x8037)))
                                                       (g8035
                                                        (letrec ((x-cnd8038
                                                                  (null? l)))
                                                          (if x-cnd8038
                                                            #t
                                                            (letrec ((x-cnd8039
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8039
                                                                (letrec ((g8040
                                                                          (letrec ((x8042
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8042)))
                                                                         (g8041
                                                                          (letrec ((x8043
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8043))))
                                                                  g8041)
                                                                '()))))))
                                                g8035)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8044
                                                        (letrec ((x8046
                                                                  (number? x)))
                                                          (assert x8046)))
                                                       (g8045
                                                        (letrec ((x-cnd8047
                                                                  (< x 0)))
                                                          (if x-cnd8047
                                                            (- 0 x)
                                                            x))))
                                                g8045)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8048
                                                        (letrec ((x8051
                                                                  (char? c1)))
                                                          (assert x8051)))
                                                       (g8049
                                                        (letrec ((x8052
                                                                  (char? c2)))
                                                          (assert x8052)))
                                                       (g8050
                                                        (letrec ((val7257
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8053
                                                                    (if val7257
                                                                      val7257
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8053))))
                                                g8050)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8054
                                                        (letrec ((x8055
                                                                  (letrec ((x8056
                                                                            (letrec ((x8057
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8057))))
                                                                    (cdr
                                                                     x8056))))
                                                          (car x8055))))
                                                g8054)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8058 #f)) g8058)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8059
                                                        (letrec ((x8061
                                                                  (letrec ((x8062
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8062)))
                                                                 (x8060
                                                                  (gcd m n)))
                                                          (/ x8061 x8060))))
                                                g8059)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8063
                                                        (letrec ((x8065
                                                                  (number? x)))
                                                          (assert x8065)))
                                                       (g8064
                                                        (letrec ((x8066
                                                                  (<= x y)))
                                                          (not x8066))))
                                                g8064)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8067
                                                        (letrec ((x8071
                                                                  (list? l)))
                                                          (assert x8071)))
                                                       (g8068
                                                        (letrec ((x8072
                                                                  (number?
                                                                   index)))
                                                          (assert x8072)))
                                                       (g8069
                                                        (letrec ((x8073
                                                                  (letrec ((x8074
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8074))))
                                                          (assert x8073)))
                                                       (g8070
                                                        (letrec ((x-cnd8075
                                                                  (= index 0)))
                                                          (if x-cnd8075
                                                            (car l)
                                                            (letrec ((x8077
                                                                      (cdr l))
                                                                     (x8076
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8077
                                                               x8076))))))
                                                g8070)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8078
                                                        (letrec ((x-cnd8079
                                                                  (= b 0)))
                                                          (if x-cnd8079
                                                            a
                                                            (letrec ((x8080
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8080))))))
                                                g8078)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8081
                                                        (cons 'image '())))
                                                g8081)))
                                           (image?
                                            (lambda (image7550)
                                              (letrec ((g8082
                                                        (letrec ((x8083
                                                                  (car
                                                                   image7550)))
                                                          (eq? x8083 'image))))
                                                g8082)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8084 (image)))
                                                g8084)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8085 (image)))
                                                g8085)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8086 (image)))
                                                g8086)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8087
                                                        (letrec ((x-cnd8088
                                                                  (<= x y)))
                                                          (if x-cnd8088 x y))))
                                                g8087)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8089
                                                        (letrec ((x-cnd8090
                                                                  (>= x y)))
                                                          (if x-cnd8090 x y))))
                                                g8089)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8091
                                                        (letrec ((x-cnd8092
                                                                  (>= x 0)))
                                                          (if x-cnd8092
                                                            x
                                                            (- 0 x)))))
                                                g8091)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8093 (* x x)))
                                                g8093)))
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
                                            (lambda (j7328 k7329 f7330)
                                              (letrec ((g8094
                                                        (lambda (g7327)
                                                          (letrec ((g8095
                                                                    (letrec ((x7331
                                                                              ((lambda (g7335
                                                                                        g7336
                                                                                        g7337)
                                                                                 (letrec ((g8096
                                                                                           (letrec ((x-cnd8097
                                                                                                     ((lambda (v7334)
                                                                                                        (letrec ((g8098
                                                                                                                  (letrec ((x-cnd8099
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7334)))
                                                                                                                    (if x-cnd8099
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8100
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7334)))
                                                                                                                        (if x-cnd8100
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8101
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7334)))
                                                                                                                            (if x-cnd8101
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8102
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7334)))
                                                                                                                                (if x-cnd8102
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8103
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7334)))
                                                                                                                                    (if x-cnd8103
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7334)))))))))))))
                                                                                                          g8098))
                                                                                                      g7337)))
                                                                                             (if x-cnd8097
                                                                                               g7337
                                                                                               (blame
                                                                                                g7335
                                                                                                '(lambda (v7334)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7334)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7334)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7334)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7334)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7334)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7334))))))))))))
                                                                                   g8096))
                                                                               j7328
                                                                               k7329
                                                                               g7327)))
                                                                      (letrec ((g8104
                                                                                (letrec ((x8106
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8107
                                                                                                       (letrec ((x-cnd8108
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8108
                                                                                                           (letrec ((g8109
                                                                                                                     (lambda (j7338
                                                                                                                              k7339
                                                                                                                              f7340)
                                                                                                                       (letrec ((g8110
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8111
                                                                                                                                             (letrec ((x8112
                                                                                                                                                       (f7340)))
                                                                                                                                               (real?
                                                                                                                                                j7338
                                                                                                                                                k7339
                                                                                                                                                x8112))))
                                                                                                                                     g8111))))
                                                                                                                         g8110))))
                                                                                                             g8109)
                                                                                                           (letrec ((x-cnd8113
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8113
                                                                                                               (letrec ((g8114
                                                                                                                         (lambda (j7341
                                                                                                                                  k7342
                                                                                                                                  f7343)
                                                                                                                           (letrec ((g8115
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8116
                                                                                                                                                 (letrec ((x8117
                                                                                                                                                           (f7343)))
                                                                                                                                                   (real?
                                                                                                                                                    j7341
                                                                                                                                                    k7342
                                                                                                                                                    x8117))))
                                                                                                                                         g8116))))
                                                                                                                             g8115))))
                                                                                                                 g8114)
                                                                                                               (letrec ((x-cnd8118
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8118
                                                                                                                   (letrec ((g8119
                                                                                                                             (lambda (j7344
                                                                                                                                      k7345
                                                                                                                                      f7346)
                                                                                                                               (letrec ((g8120
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8121
                                                                                                                                                     (letrec ((x8122
                                                                                                                                                               (f7346)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7344
                                                                                                                                                        k7345
                                                                                                                                                        x8122))))
                                                                                                                                             g8121))))
                                                                                                                                 g8120))))
                                                                                                                     g8119)
                                                                                                                   (letrec ((x-cnd8123
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8123
                                                                                                                       (letrec ((g8124
                                                                                                                                 (lambda (j7349
                                                                                                                                          k7350
                                                                                                                                          f7351)
                                                                                                                                   (letrec ((g8125
                                                                                                                                             (lambda (g7347
                                                                                                                                                      g7348)
                                                                                                                                               (letrec ((g8126
                                                                                                                                                         (letrec ((x8127
                                                                                                                                                                   (letrec ((x8129
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7349
                                                                                                                                                                              k7350
                                                                                                                                                                              g7347))
                                                                                                                                                                            (x8128
                                                                                                                                                                             (real?
                                                                                                                                                                              j7349
                                                                                                                                                                              k7350
                                                                                                                                                                              g7348)))
                                                                                                                                                                     (f7351
                                                                                                                                                                      x8129
                                                                                                                                                                      x8128))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7349
                                                                                                                                                            k7350
                                                                                                                                                            x8127))))
                                                                                                                                                 g8126))))
                                                                                                                                     g8125))))
                                                                                                                         g8124)
                                                                                                                       (letrec ((x-cnd8130
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8130
                                                                                                                           (letrec ((g8131
                                                                                                                                     (lambda (j7354
                                                                                                                                              k7355
                                                                                                                                              f7356)
                                                                                                                                       (letrec ((g8132
                                                                                                                                                 (lambda (g7352
                                                                                                                                                          g7353)
                                                                                                                                                   (letrec ((g8133
                                                                                                                                                             (letrec ((x8134
                                                                                                                                                                       (letrec ((x8136
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7354
                                                                                                                                                                                  k7355
                                                                                                                                                                                  g7352))
                                                                                                                                                                                (x8135
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7354
                                                                                                                                                                                  k7355
                                                                                                                                                                                  g7353)))
                                                                                                                                                                         (f7356
                                                                                                                                                                          x8136
                                                                                                                                                                          x8135))))
                                                                                                                                                               (image?
                                                                                                                                                                j7354
                                                                                                                                                                k7355
                                                                                                                                                                x8134))))
                                                                                                                                                     g8133))))
                                                                                                                                         g8132))))
                                                                                                                             g8131)
                                                                                                                           (letrec ((x-cnd8137
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8137
                                                                                                                               (letrec ((g8138
                                                                                                                                         (lambda (j7358
                                                                                                                                                  k7359
                                                                                                                                                  f7360)
                                                                                                                                           (letrec ((g8139
                                                                                                                                                     (lambda (g7357)
                                                                                                                                                       (letrec ((g8140
                                                                                                                                                                 (letrec ((x8141
                                                                                                                                                                           (letrec ((x8142
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7358
                                                                                                                                                                                      k7359
                                                                                                                                                                                      g7357)))
                                                                                                                                                                             (f7360
                                                                                                                                                                              x8142))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7358
                                                                                                                                                                    k7359
                                                                                                                                                                    x8141))))
                                                                                                                                                         g8140))))
                                                                                                                                             g8139))))
                                                                                                                                 g8138)
                                                                                                                               (letrec ((g8143
                                                                                                                                         "error"))
                                                                                                                                 g8143)))))))))))))))
                                                                                               g8107))
                                                                                           x7331))
                                                                                         (x8105
                                                                                          (f7330
                                                                                           x7331)))
                                                                                  (x8106
                                                                                   j7328
                                                                                   k7329
                                                                                   x8105))))
                                                                        g8104))))
                                                            g8095))))
                                                g8094)))
                                           (player/c
                                            (lambda (j7362 k7363 f7364)
                                              (letrec ((g8144
                                                        (lambda (g7361)
                                                          (letrec ((g8145
                                                                    (letrec ((x7365
                                                                              ((lambda (g7369
                                                                                        g7370
                                                                                        g7371)
                                                                                 (letrec ((g8146
                                                                                           (letrec ((x-cnd8147
                                                                                                     ((lambda (v7368)
                                                                                                        (letrec ((g8148
                                                                                                                  (letrec ((x-cnd8149
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7368)))
                                                                                                                    (if x-cnd8149
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8150
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7368)))
                                                                                                                        (if x-cnd8150
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7368)))))))
                                                                                                          g8148))
                                                                                                      g7371)))
                                                                                             (if x-cnd8147
                                                                                               g7371
                                                                                               (blame
                                                                                                g7369
                                                                                                '(lambda (v7368)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7368)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7368)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7368)))))))))
                                                                                   g8146))
                                                                               j7362
                                                                               k7363
                                                                               g7361)))
                                                                      (letrec ((g8151
                                                                                (letrec ((x8153
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8154
                                                                                                       (letrec ((x-cnd8155
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8155
                                                                                                           (letrec ((g8156
                                                                                                                     (lambda (j7372
                                                                                                                              k7373
                                                                                                                              f7374)
                                                                                                                       (letrec ((g8157
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8158
                                                                                                                                             (letrec ((x8159
                                                                                                                                                       (f7374)))
                                                                                                                                               (posn/c
                                                                                                                                                j7372
                                                                                                                                                k7373
                                                                                                                                                x8159))))
                                                                                                                                     g8158))))
                                                                                                                         g8157))))
                                                                                                             g8156)
                                                                                                           (letrec ((x-cnd8160
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8160
                                                                                                               (letrec ((g8161
                                                                                                                         (lambda (j7376
                                                                                                                                  k7377
                                                                                                                                  f7378)
                                                                                                                           (letrec ((g8162
                                                                                                                                     (lambda (g7375)
                                                                                                                                       (letrec ((g8163
                                                                                                                                                 (letrec ((x8164
                                                                                                                                                           (letrec ((x8165
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7376
                                                                                                                                                                      k7377
                                                                                                                                                                      g7375)))
                                                                                                                                                             (f7378
                                                                                                                                                              x8165))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7376
                                                                                                                                                    k7377
                                                                                                                                                    x8164))))
                                                                                                                                         g8163))))
                                                                                                                             g8162))))
                                                                                                                 g8161)
                                                                                                               (letrec ((x-cnd8166
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8166
                                                                                                                   (letrec ((g8167
                                                                                                                             (lambda (j7380
                                                                                                                                      k7381
                                                                                                                                      f7382)
                                                                                                                               (letrec ((g8168
                                                                                                                                         (lambda (g7379)
                                                                                                                                           (letrec ((g8169
                                                                                                                                                     (letrec ((x8170
                                                                                                                                                               (letrec ((x8171
                                                                                                                                                                         (image?
                                                                                                                                                                          j7380
                                                                                                                                                                          k7381
                                                                                                                                                                          g7379)))
                                                                                                                                                                 (f7382
                                                                                                                                                                  x8171))))
                                                                                                                                                       (image?
                                                                                                                                                        j7380
                                                                                                                                                        k7381
                                                                                                                                                        x8170))))
                                                                                                                                             g8169))))
                                                                                                                                 g8168))))
                                                                                                                     g8167)
                                                                                                                   (letrec ((g8172
                                                                                                                             "error"))
                                                                                                                     g8172)))))))))
                                                                                               g8154))
                                                                                           x7365))
                                                                                         (x8152
                                                                                          (f7364
                                                                                           x7365)))
                                                                                  (x8153
                                                                                   j7362
                                                                                   k7363
                                                                                   x8152))))
                                                                        g8151))))
                                                            g8145))))
                                                g8144)))
                                           (zombie/c
                                            (lambda (j7384 k7385 f7386)
                                              (letrec ((g8173
                                                        (lambda (g7383)
                                                          (letrec ((g8174
                                                                    (letrec ((x7387
                                                                              ((lambda (g7391
                                                                                        g7392
                                                                                        g7393)
                                                                                 (letrec ((g8175
                                                                                           (letrec ((x-cnd8176
                                                                                                     ((lambda (v7390)
                                                                                                        (letrec ((g8177
                                                                                                                  (letrec ((x-cnd8178
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7390)))
                                                                                                                    (if x-cnd8178
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8179
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7390)))
                                                                                                                        (if x-cnd8179
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8180
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7390)))
                                                                                                                            (if x-cnd8180
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7390)))))))))
                                                                                                          g8177))
                                                                                                      g7393)))
                                                                                             (if x-cnd8176
                                                                                               g7393
                                                                                               (blame
                                                                                                g7391
                                                                                                '(lambda (v7390)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7390)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7390)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7390)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7390))))))))))
                                                                                   g8175))
                                                                               j7384
                                                                               k7385
                                                                               g7383)))
                                                                      (letrec ((g8181
                                                                                (letrec ((x8183
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8184
                                                                                                       (letrec ((x-cnd8185
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8185
                                                                                                           (letrec ((g8186
                                                                                                                     (lambda (j7394
                                                                                                                              k7395
                                                                                                                              f7396)
                                                                                                                       (letrec ((g8187
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8188
                                                                                                                                             (letrec ((x8189
                                                                                                                                                       (f7396)))
                                                                                                                                               (posn/c
                                                                                                                                                j7394
                                                                                                                                                k7395
                                                                                                                                                x8189))))
                                                                                                                                     g8188))))
                                                                                                                         g8187))))
                                                                                                             g8186)
                                                                                                           (letrec ((x-cnd8190
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8190
                                                                                                               (letrec ((g8191
                                                                                                                         (lambda (j7399
                                                                                                                                  k7400
                                                                                                                                  f7401)
                                                                                                                           (letrec ((g8192
                                                                                                                                     (lambda (g7397
                                                                                                                                              g7398)
                                                                                                                                       (letrec ((g8193
                                                                                                                                                 (letrec ((x8194
                                                                                                                                                           (letrec ((x8196
                                                                                                                                                                     (string?
                                                                                                                                                                      j7399
                                                                                                                                                                      k7400
                                                                                                                                                                      g7397))
                                                                                                                                                                    (x8195
                                                                                                                                                                     (image?
                                                                                                                                                                      j7399
                                                                                                                                                                      k7400
                                                                                                                                                                      g7398)))
                                                                                                                                                             (f7401
                                                                                                                                                              x8196
                                                                                                                                                              x8195))))
                                                                                                                                                   (image?
                                                                                                                                                    j7399
                                                                                                                                                    k7400
                                                                                                                                                    x8194))))
                                                                                                                                         g8193))))
                                                                                                                             g8192))))
                                                                                                                 g8191)
                                                                                                               (letrec ((x-cnd8197
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8197
                                                                                                                   (letrec ((g8198
                                                                                                                             (lambda (j7403
                                                                                                                                      k7404
                                                                                                                                      f7405)
                                                                                                                               (letrec ((g8199
                                                                                                                                         (lambda (g7402)
                                                                                                                                           (letrec ((g8200
                                                                                                                                                     (letrec ((x8201
                                                                                                                                                               (letrec ((x8202
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7403
                                                                                                                                                                          k7404
                                                                                                                                                                          g7402)))
                                                                                                                                                                 (f7405
                                                                                                                                                                  x8202))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7403
                                                                                                                                                        k7404
                                                                                                                                                        x8201))))
                                                                                                                                             g8200))))
                                                                                                                                 g8199))))
                                                                                                                     g8198)
                                                                                                                   (letrec ((x-cnd8203
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8203
                                                                                                                       (letrec ((g8204
                                                                                                                                 (lambda (j7407
                                                                                                                                          k7408
                                                                                                                                          f7409)
                                                                                                                                   (letrec ((g8205
                                                                                                                                             (lambda (g7406)
                                                                                                                                               (letrec ((g8206
                                                                                                                                                         (letrec ((x8207
                                                                                                                                                                   (letrec ((x8208
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7407
                                                                                                                                                                              k7408
                                                                                                                                                                              g7406)))
                                                                                                                                                                     (f7409
                                                                                                                                                                      x8208))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7407
                                                                                                                                                            k7408
                                                                                                                                                            x8207))))
                                                                                                                                                 g8206))))
                                                                                                                                     g8205))))
                                                                                                                         g8204)
                                                                                                                       (letrec ((g8209
                                                                                                                                 "error"))
                                                                                                                         g8209)))))))))))
                                                                                               g8184))
                                                                                           x7387))
                                                                                         (x8182
                                                                                          (f7386
                                                                                           x7387)))
                                                                                  (x8183
                                                                                   j7384
                                                                                   k7385
                                                                                   x8182))))
                                                                        g8181))))
                                                            g8174))))
                                                g8173)))
                                           (horde/c
                                            (lambda (j7411 k7412 f7413)
                                              (letrec ((g8210
                                                        (lambda (g7410)
                                                          (letrec ((g8211
                                                                    (letrec ((x7414
                                                                              ((lambda (g7418
                                                                                        g7419
                                                                                        g7420)
                                                                                 (letrec ((g8212
                                                                                           (letrec ((x-cnd8213
                                                                                                     ((lambda (v7417)
                                                                                                        (letrec ((g8214
                                                                                                                  (letrec ((x-cnd8215
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7417)))
                                                                                                                    (if x-cnd8215
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8216
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7417)))
                                                                                                                        (if x-cnd8216
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8217
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7417)))
                                                                                                                            (if x-cnd8217
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8218
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7417)))
                                                                                                                                (if x-cnd8218
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8219
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7417)))
                                                                                                                                    (if x-cnd8219
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7417)))))))))))))
                                                                                                          g8214))
                                                                                                      g7420)))
                                                                                             (if x-cnd8213
                                                                                               g7420
                                                                                               (blame
                                                                                                g7418
                                                                                                '(lambda (v7417)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7417)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7417)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7417)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7417)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7417)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7417))))))))))))
                                                                                   g8212))
                                                                               j7411
                                                                               k7412
                                                                               g7410)))
                                                                      (letrec ((g8220
                                                                                (letrec ((x8222
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8223
                                                                                                       (letrec ((x-cnd8224
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8224
                                                                                                           (letrec ((g8225
                                                                                                                     (lambda (j7421
                                                                                                                              k7422
                                                                                                                              f7423)
                                                                                                                       (letrec ((g8226
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8227
                                                                                                                                             (letrec ((x8228
                                                                                                                                                       (f7423)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7421
                                                                                                                                                k7422
                                                                                                                                                x8228))))
                                                                                                                                     g8227))))
                                                                                                                         g8226))))
                                                                                                             g8225)
                                                                                                           (letrec ((x-cnd8229
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8229
                                                                                                               (letrec ((g8230
                                                                                                                         (lambda (j7424
                                                                                                                                  k7425
                                                                                                                                  f7426)
                                                                                                                           (letrec ((g8231
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8232
                                                                                                                                                 (letrec ((x8233
                                                                                                                                                           (f7426)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7424
                                                                                                                                                    k7425
                                                                                                                                                    x8233))))
                                                                                                                                         g8232))))
                                                                                                                             g8231))))
                                                                                                                 g8230)
                                                                                                               (letrec ((x-cnd8234
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8234
                                                                                                                   (letrec ((g8235
                                                                                                                             (lambda (j7428
                                                                                                                                      k7429
                                                                                                                                      f7430)
                                                                                                                               (letrec ((g8236
                                                                                                                                         (lambda (g7427)
                                                                                                                                           (letrec ((g8237
                                                                                                                                                     (letrec ((x8238
                                                                                                                                                               (letrec ((x8239
                                                                                                                                                                         (image?
                                                                                                                                                                          j7428
                                                                                                                                                                          k7429
                                                                                                                                                                          g7427)))
                                                                                                                                                                 (f7430
                                                                                                                                                                  x8239))))
                                                                                                                                                       (image?
                                                                                                                                                        j7428
                                                                                                                                                        k7429
                                                                                                                                                        x8238))))
                                                                                                                                             g8237))))
                                                                                                                                 g8236))))
                                                                                                                     g8235)
                                                                                                                   (letrec ((x-cnd8240
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8240
                                                                                                                       (letrec ((g8241
                                                                                                                                 (lambda (j7432
                                                                                                                                          k7433
                                                                                                                                          f7434)
                                                                                                                                   (letrec ((g8242
                                                                                                                                             (lambda (g7431)
                                                                                                                                               (letrec ((g8243
                                                                                                                                                         (letrec ((x8244
                                                                                                                                                                   (letrec ((x8245
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7432
                                                                                                                                                                              k7433
                                                                                                                                                                              g7431)))
                                                                                                                                                                     (f7434
                                                                                                                                                                      x8245))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7432
                                                                                                                                                            k7433
                                                                                                                                                            x8244))))
                                                                                                                                                 g8243))))
                                                                                                                                     g8242))))
                                                                                                                         g8241)
                                                                                                                       (letrec ((x-cnd8246
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8246
                                                                                                                           (letrec ((g8247
                                                                                                                                     (lambda (j7436
                                                                                                                                              k7437
                                                                                                                                              f7438)
                                                                                                                                       (letrec ((g8248
                                                                                                                                                 (lambda (g7435)
                                                                                                                                                   (letrec ((g8249
                                                                                                                                                             (letrec ((x8250
                                                                                                                                                                       (letrec ((x8251
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7436
                                                                                                                                                                                  k7437
                                                                                                                                                                                  g7435)))
                                                                                                                                                                         (f7438
                                                                                                                                                                          x8251))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7436
                                                                                                                                                                k7437
                                                                                                                                                                x8250))))
                                                                                                                                                     g8249))))
                                                                                                                                         g8248))))
                                                                                                                             g8247)
                                                                                                                           (letrec ((x-cnd8252
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8252
                                                                                                                               (letrec ((g8253
                                                                                                                                         (lambda (j7439
                                                                                                                                                  k7440
                                                                                                                                                  f7441)
                                                                                                                                           (letrec ((g8254
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8255
                                                                                                                                                                 (letrec ((x8256
                                                                                                                                                                           (f7441)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7439
                                                                                                                                                                    k7440
                                                                                                                                                                    x8256))))
                                                                                                                                                         g8255))))
                                                                                                                                             g8254))))
                                                                                                                                 g8253)
                                                                                                                               (letrec ((g8257
                                                                                                                                         "error"))
                                                                                                                                 g8257)))))))))))))))
                                                                                               g8223))
                                                                                           x7414))
                                                                                         (x8221
                                                                                          (f7413
                                                                                           x7414)))
                                                                                  (x8222
                                                                                   j7411
                                                                                   k7412
                                                                                   x8221))))
                                                                        g8220))))
                                                            g8211))))
                                                g8210)))
                                           (zombies/c
                                            (lambda (j7443 k7444 f7445)
                                              (letrec ((g8258
                                                        (lambda (g7442)
                                                          (letrec ((g8259
                                                                    (letrec ((x7446
                                                                              ((lambda (g7450
                                                                                        g7451
                                                                                        g7452)
                                                                                 (letrec ((g8260
                                                                                           (letrec ((x-cnd8261
                                                                                                     ((lambda (v7449)
                                                                                                        (letrec ((g8262
                                                                                                                  (letrec ((x-cnd8263
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7449)))
                                                                                                                    (if x-cnd8263
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8264
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7449)))
                                                                                                                        (if x-cnd8264
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8265
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7449)))
                                                                                                                            (if x-cnd8265
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7449)))))))))
                                                                                                          g8262))
                                                                                                      g7452)))
                                                                                             (if x-cnd8261
                                                                                               g7452
                                                                                               (blame
                                                                                                g7450
                                                                                                '(lambda (v7449)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7449)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7449)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7449)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7449))))))))))
                                                                                   g8260))
                                                                               j7443
                                                                               k7444
                                                                               g7442)))
                                                                      (letrec ((g8266
                                                                                (letrec ((x8268
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8269
                                                                                                       (letrec ((x-cnd8270
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8270
                                                                                                           (letrec ((g8271
                                                                                                                     (lambda (j7454
                                                                                                                              k7455
                                                                                                                              f7456)
                                                                                                                       (letrec ((g8272
                                                                                                                                 (lambda (g7453)
                                                                                                                                   (letrec ((g8273
                                                                                                                                             (letrec ((x8274
                                                                                                                                                       (letrec ((x8275
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7454
                                                                                                                                                                  k7455
                                                                                                                                                                  g7453)))
                                                                                                                                                         (f7456
                                                                                                                                                          x8275))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7454
                                                                                                                                                k7455
                                                                                                                                                x8274))))
                                                                                                                                     g8273))))
                                                                                                                         g8272))))
                                                                                                             g8271)
                                                                                                           (letrec ((x-cnd8276
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8276
                                                                                                               (letrec ((g8277
                                                                                                                         (lambda (j7459
                                                                                                                                  k7460
                                                                                                                                  f7461)
                                                                                                                           (letrec ((g8278
                                                                                                                                     (lambda (g7457
                                                                                                                                              g7458)
                                                                                                                                       (letrec ((g8279
                                                                                                                                                 (letrec ((x8280
                                                                                                                                                           (letrec ((x8282
                                                                                                                                                                     (string?
                                                                                                                                                                      j7459
                                                                                                                                                                      k7460
                                                                                                                                                                      g7457))
                                                                                                                                                                    (x8281
                                                                                                                                                                     (image?
                                                                                                                                                                      j7459
                                                                                                                                                                      k7460
                                                                                                                                                                      g7458)))
                                                                                                                                                             (f7461
                                                                                                                                                              x8282
                                                                                                                                                              x8281))))
                                                                                                                                                   (image?
                                                                                                                                                    j7459
                                                                                                                                                    k7460
                                                                                                                                                    x8280))))
                                                                                                                                         g8279))))
                                                                                                                             g8278))))
                                                                                                                 g8277)
                                                                                                               (letrec ((x-cnd8283
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8283
                                                                                                                   (letrec ((g8284
                                                                                                                             (lambda (j7463
                                                                                                                                      k7464
                                                                                                                                      f7465)
                                                                                                                               (letrec ((g8285
                                                                                                                                         (lambda (g7462)
                                                                                                                                           (letrec ((g8286
                                                                                                                                                     (letrec ((x8287
                                                                                                                                                               (letrec ((x8288
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7463
                                                                                                                                                                          k7464
                                                                                                                                                                          g7462)))
                                                                                                                                                                 (f7465
                                                                                                                                                                  x8288))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7463
                                                                                                                                                        k7464
                                                                                                                                                        x8287))))
                                                                                                                                             g8286))))
                                                                                                                                 g8285))))
                                                                                                                     g8284)
                                                                                                                   (letrec ((x-cnd8289
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8289
                                                                                                                       (letrec ((g8290
                                                                                                                                 (lambda (j7467
                                                                                                                                          k7468
                                                                                                                                          f7469)
                                                                                                                                   (letrec ((g8291
                                                                                                                                             (lambda (g7466)
                                                                                                                                               (letrec ((g8292
                                                                                                                                                         (letrec ((x8293
                                                                                                                                                                   (letrec ((x8294
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7467
                                                                                                                                                                              k7468
                                                                                                                                                                              g7466)))
                                                                                                                                                                     (f7469
                                                                                                                                                                      x8294))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7467
                                                                                                                                                            k7468
                                                                                                                                                            x8293))))
                                                                                                                                                 g8292))))
                                                                                                                                     g8291))))
                                                                                                                         g8290)
                                                                                                                       (letrec ((g8295
                                                                                                                                 "error"))
                                                                                                                         g8295)))))))))))
                                                                                               g8269))
                                                                                           x7446))
                                                                                         (x8267
                                                                                          (f7445
                                                                                           x7446)))
                                                                                  (x8268
                                                                                   j7443
                                                                                   k7444
                                                                                   x8267))))
                                                                        g8266))))
                                                            g8259))))
                                                g8258)))
                                           (world/c
                                            (lambda (j7471 k7472 f7473)
                                              (letrec ((g8296
                                                        (lambda (g7470)
                                                          (letrec ((g8297
                                                                    (letrec ((x7474
                                                                              ((lambda (g7478
                                                                                        g7479
                                                                                        g7480)
                                                                                 (letrec ((g8298
                                                                                           (letrec ((x-cnd8299
                                                                                                     ((lambda (v7477)
                                                                                                        (letrec ((g8300
                                                                                                                  (letrec ((x-cnd8301
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7477)))
                                                                                                                    (if x-cnd8301
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8302
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7477)))
                                                                                                                        (if x-cnd8302
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8303
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7477)))
                                                                                                                            (if x-cnd8303
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7477)))))))))
                                                                                                          g8300))
                                                                                                      g7480)))
                                                                                             (if x-cnd8299
                                                                                               g7480
                                                                                               (blame
                                                                                                g7478
                                                                                                '(lambda (v7477)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7477)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7477)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7477)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7477))))))))))
                                                                                   g8298))
                                                                               j7471
                                                                               k7472
                                                                               g7470)))
                                                                      (letrec ((g8304
                                                                                (letrec ((x8306
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8307
                                                                                                       (letrec ((x-cnd8308
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8308
                                                                                                           (letrec ((g8309
                                                                                                                     (lambda (j7484
                                                                                                                              k7485
                                                                                                                              f7486)
                                                                                                                       (letrec ((g8310
                                                                                                                                 (lambda (g7481
                                                                                                                                          g7482
                                                                                                                                          g7483)
                                                                                                                                   (letrec ((g8311
                                                                                                                                             (letrec ((x8312
                                                                                                                                                       (letrec ((x8315
                                                                                                                                                                 (real?
                                                                                                                                                                  j7484
                                                                                                                                                                  k7485
                                                                                                                                                                  g7481))
                                                                                                                                                                (x8314
                                                                                                                                                                 (real?
                                                                                                                                                                  j7484
                                                                                                                                                                  k7485
                                                                                                                                                                  g7482))
                                                                                                                                                                (x8313
                                                                                                                                                                 (string?
                                                                                                                                                                  j7484
                                                                                                                                                                  k7485
                                                                                                                                                                  g7483)))
                                                                                                                                                         (f7486
                                                                                                                                                          x8315
                                                                                                                                                          x8314
                                                                                                                                                          x8313))))
                                                                                                                                               (world/c
                                                                                                                                                j7484
                                                                                                                                                k7485
                                                                                                                                                x8312))))
                                                                                                                                     g8311))))
                                                                                                                         g8310))))
                                                                                                             g8309)
                                                                                                           (letrec ((x-cnd8316
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8316
                                                                                                               (letrec ((g8317
                                                                                                                         (lambda (j7487
                                                                                                                                  k7488
                                                                                                                                  f7489)
                                                                                                                           (letrec ((g8318
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8319
                                                                                                                                                 (letrec ((x8320
                                                                                                                                                           (f7489)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7487
                                                                                                                                                    k7488
                                                                                                                                                    x8320))))
                                                                                                                                         g8319))))
                                                                                                                             g8318))))
                                                                                                                 g8317)
                                                                                                               (letrec ((x-cnd8321
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8321
                                                                                                                   (letrec ((g8322
                                                                                                                             (lambda (j7490
                                                                                                                                      k7491
                                                                                                                                      f7492)
                                                                                                                               (letrec ((g8323
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8324
                                                                                                                                                     (letrec ((x8325
                                                                                                                                                               (f7492)))
                                                                                                                                                       (image?
                                                                                                                                                        j7490
                                                                                                                                                        k7491
                                                                                                                                                        x8325))))
                                                                                                                                             g8324))))
                                                                                                                                 g8323))))
                                                                                                                     g8322)
                                                                                                                   (letrec ((x-cnd8326
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8326
                                                                                                                       (letrec ((g8327
                                                                                                                                 (lambda (j7493
                                                                                                                                          k7494
                                                                                                                                          f7495)
                                                                                                                                   (letrec ((g8328
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8329
                                                                                                                                                         (letrec ((x8330
                                                                                                                                                                   (f7495)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7493
                                                                                                                                                            k7494
                                                                                                                                                            x8330))))
                                                                                                                                                 g8329))))
                                                                                                                                     g8328))))
                                                                                                                         g8327)
                                                                                                                       (letrec ((g8331
                                                                                                                                 "error"))
                                                                                                                         g8331)))))))))))
                                                                                               g8307))
                                                                                           x7474))
                                                                                         (x8305
                                                                                          (f7473
                                                                                           x7474)))
                                                                                  (x8306
                                                                                   j7471
                                                                                   k7472
                                                                                   x8305))))
                                                                        g8304))))
                                                            g8297))))
                                                g8296)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8332
                                                        (letrec ((x8365 (msg))
                                                                 (x8333
                                                                  (letrec ((x-cnd8334
                                                                            (equal?
                                                                             msg
                                                                             'on-mouse)))
                                                                    (if x-cnd8334
                                                                      (letrec ((g8335
                                                                                (letrec ((x8340
                                                                                          (x
                                                                                           y
                                                                                           me))
                                                                                         (x8336
                                                                                          (letrec ((x8337
                                                                                                    (letrec ((x-cnd8338
                                                                                                              (equal?
                                                                                                               me
                                                                                                               "leave")))
                                                                                                      (if x-cnd8338
                                                                                                        (letrec ((x8339
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x8339))
                                                                                                        (new-posn
                                                                                                         x
                                                                                                         y)))))
                                                                                            (new-world
                                                                                             player
                                                                                             x8337
                                                                                             zombies))))
                                                                                  (λ x8340
                                                                                    x8336))))
                                                                        g8335)
                                                                      (letrec ((x-cnd8341
                                                                                (equal?
                                                                                 msg
                                                                                 'on-tick)))
                                                                        (if x-cnd8341
                                                                          (letrec ((g8342
                                                                                    (letrec ((x8343
                                                                                              (letrec ((x8350
                                                                                                        (letrec ((x8351
                                                                                                                  (player
                                                                                                                   'move-toward)))
                                                                                                          (x8351
                                                                                                           mouse)))
                                                                                                       (x8344
                                                                                                        (letrec ((x8347
                                                                                                                  (letrec ((x8348
                                                                                                                            (letrec ((x8349
                                                                                                                                      (zombies
                                                                                                                                       'eat-brains)))
                                                                                                                              (x8349))))
                                                                                                                    (x8348
                                                                                                                     'move-toward)))
                                                                                                                 (x8345
                                                                                                                  (letrec ((x8346
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8346))))
                                                                                                          (x8347
                                                                                                           x8345))))
                                                                                                (new-world
                                                                                                 x8350
                                                                                                 mouse
                                                                                                 x8344))))
                                                                                      (λ ()
                                                                                        x8343))))
                                                                            g8342)
                                                                          (letrec ((x-cnd8352
                                                                                    (equal?
                                                                                     msg
                                                                                     'to-draw)))
                                                                            (if x-cnd8352
                                                                              (letrec ((g8353
                                                                                        (letrec ((x8354
                                                                                                  (letrec ((x8357
                                                                                                            (player
                                                                                                             'draw-on))
                                                                                                           (x8355
                                                                                                            (letrec ((x8356
                                                                                                                      (zombies
                                                                                                                       'draw-on)))
                                                                                                              (x8356
                                                                                                               MT-SCENE))))
                                                                                                    (x8357
                                                                                                     x8355))))
                                                                                          (λ ()
                                                                                            x8354))))
                                                                                g8353)
                                                                              (letrec ((x-cnd8358
                                                                                        (equal?
                                                                                         msg
                                                                                         'stop-when)))
                                                                                (if x-cnd8358
                                                                                  (letrec ((g8359
                                                                                            (letrec ((x8360
                                                                                                      (letrec ((x8363
                                                                                                                (zombies
                                                                                                                 'touching?))
                                                                                                               (x8361
                                                                                                                (letrec ((x8362
                                                                                                                          (player
                                                                                                                           'posn)))
                                                                                                                  (x8362))))
                                                                                                        (x8363
                                                                                                         x8361))))
                                                                                              (λ ()
                                                                                                x8360))))
                                                                                    g8359)
                                                                                  (letrec ((g8364
                                                                                            "unknown message"))
                                                                                    g8364)))))))))))
                                                          (λ x8365 x8333))))
                                                g8332)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8366
                                                        (letrec ((x8382 (msg))
                                                                 (x8367
                                                                  (letrec ((x-cnd8368
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8368
                                                                      (letrec ((g8369
                                                                                (λ ()
                                                                                  p)))
                                                                        g8369)
                                                                      (letrec ((x-cnd8370
                                                                                (equal?
                                                                                 msg
                                                                                 'move-toward)))
                                                                        (if x-cnd8370
                                                                          (letrec ((g8371
                                                                                    (letrec ((x8375
                                                                                              (q))
                                                                                             (x8372
                                                                                              (letrec ((x8373
                                                                                                        (letrec ((x8374
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8374
                                                                                                           q
                                                                                                           PLAYER-SPEED))))
                                                                                                (new-player
                                                                                                 x8373))))
                                                                                      (λ x8375
                                                                                        x8372))))
                                                                            g8371)
                                                                          (letrec ((x-cnd8376
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8376
                                                                              (letrec ((g8377
                                                                                        (letrec ((x8380
                                                                                                  (scn))
                                                                                                 (x8378
                                                                                                  (letrec ((x8379
                                                                                                            (p
                                                                                                             'draw-on/image)))
                                                                                                    (x8379
                                                                                                     PLAYER-IMG
                                                                                                     scn))))
                                                                                          (λ x8380
                                                                                            x8378))))
                                                                                g8377)
                                                                              (letrec ((g8381
                                                                                        "unknown message"))
                                                                                g8381)))))))))
                                                          (λ x8382 x8367))))
                                                g8366)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8383
                                                        (letrec ((x8415 (msg))
                                                                 (x8384
                                                                  (letrec ((x-cnd8385
                                                                            (equal?
                                                                             msg
                                                                             'dead)))
                                                                    (if x-cnd8385
                                                                      (letrec ((g8386
                                                                                (λ ()
                                                                                  dead)))
                                                                        g8386)
                                                                      (letrec ((x-cnd8387
                                                                                (equal?
                                                                                 msg
                                                                                 'undead)))
                                                                        (if x-cnd8387
                                                                          (letrec ((g8388
                                                                                    (λ ()
                                                                                      undead)))
                                                                            g8388)
                                                                          (letrec ((x-cnd8389
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8389
                                                                              (letrec ((g8390
                                                                                        (letrec ((x8395
                                                                                                  (scn))
                                                                                                 (x8391
                                                                                                  (letrec ((x8394
                                                                                                            (undead
                                                                                                             'draw-on/color))
                                                                                                           (x8392
                                                                                                            (letrec ((x8393
                                                                                                                      (dead
                                                                                                                       'draw-on/color)))
                                                                                                              (x8393
                                                                                                               "black"
                                                                                                               scn))))
                                                                                                    (x8394
                                                                                                     "yellow"
                                                                                                     x8392))))
                                                                                          (λ x8395
                                                                                            x8391))))
                                                                                g8390)
                                                                              (letrec ((x-cnd8396
                                                                                        (equal?
                                                                                         msg
                                                                                         'touching?)))
                                                                                (if x-cnd8396
                                                                                  (letrec ((g8397
                                                                                            (letrec ((x8403
                                                                                                      (p))
                                                                                                     (x8398
                                                                                                      (letrec ((x8401
                                                                                                                (letrec ((x8402
                                                                                                                          (undead
                                                                                                                           'touching?)))
                                                                                                                  (x8402
                                                                                                                   p)))
                                                                                                               (x8399
                                                                                                                (letrec ((x8400
                                                                                                                          (dead
                                                                                                                           'touching?)))
                                                                                                                  (x8400
                                                                                                                   p))))
                                                                                                        (or x8401
                                                                                                            x8399))))
                                                                                              (λ x8403
                                                                                                x8398))))
                                                                                    g8397)
                                                                                  (letrec ((x-cnd8404
                                                                                            (equal?
                                                                                             msg
                                                                                             'move-toward)))
                                                                                    (if x-cnd8404
                                                                                      (letrec ((g8405
                                                                                                (letrec ((x8409
                                                                                                          (p))
                                                                                                         (x8406
                                                                                                          (letrec ((x8407
                                                                                                                    (letrec ((x8408
                                                                                                                              (undead
                                                                                                                               'move-toward)))
                                                                                                                      (x8408
                                                                                                                       p))))
                                                                                                            (new-horde
                                                                                                             x8407
                                                                                                             dead))))
                                                                                                  (λ x8409
                                                                                                    x8406))))
                                                                                        g8405)
                                                                                      (letrec ((x-cnd8410
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'eat-brains)))
                                                                                        (if x-cnd8410
                                                                                          (letrec ((g8411
                                                                                                    (letrec ((x8412
                                                                                                              (letrec ((x8413
                                                                                                                        (undead
                                                                                                                         'kill-all)))
                                                                                                                (x8413
                                                                                                                 dead))))
                                                                                                      (λ ()
                                                                                                        x8412))))
                                                                                            g8411)
                                                                                          (letrec ((g8414
                                                                                                    "unknown message"))
                                                                                            g8414)))))))))))))))
                                                          (λ x8415 x8384))))
                                                g8383)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8416
                                                        (letrec ((x8468 (msg))
                                                                 (x8417
                                                                  (letrec ((x-cnd8418
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8418
                                                                      (letrec ((g8419
                                                                                (letrec ((x8425
                                                                                          (p))
                                                                                         (x8420
                                                                                          (letrec ((x8423
                                                                                                    (letrec ((x8424
                                                                                                              (z
                                                                                                               'move-toward)))
                                                                                                      (x8424
                                                                                                       p)))
                                                                                                   (x8421
                                                                                                    (letrec ((x8422
                                                                                                              (r
                                                                                                               'move-toward)))
                                                                                                      (x8422
                                                                                                       p))))
                                                                                            (new-cons-zombies
                                                                                             x8423
                                                                                             x8421))))
                                                                                  (λ x8425
                                                                                    x8420))))
                                                                        g8419)
                                                                      (letrec ((x-cnd8426
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8426
                                                                          (letrec ((g8427
                                                                                    (letrec ((x8432
                                                                                              (c
                                                                                               s))
                                                                                             (x8428
                                                                                              (letrec ((x8431
                                                                                                        (z
                                                                                                         'draw-on/color))
                                                                                                       (x8429
                                                                                                        (letrec ((x8430
                                                                                                                  (r
                                                                                                                   'draw-on/color)))
                                                                                                          (x8430
                                                                                                           c
                                                                                                           s))))
                                                                                                (x8431
                                                                                                 c
                                                                                                 x8429))))
                                                                                      (λ x8432
                                                                                        x8428))))
                                                                            g8427)
                                                                          (letrec ((x-cnd8433
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8433
                                                                              (letrec ((g8434
                                                                                        (letrec ((x8440
                                                                                                  (p))
                                                                                                 (x8435
                                                                                                  (letrec ((x8438
                                                                                                            (letrec ((x8439
                                                                                                                      (z
                                                                                                                       'touching?)))
                                                                                                              (x8439
                                                                                                               p)))
                                                                                                           (x8436
                                                                                                            (letrec ((x8437
                                                                                                                      (r
                                                                                                                       'touching?)))
                                                                                                              (x8437
                                                                                                               p))))
                                                                                                    (or x8438
                                                                                                        x8436))))
                                                                                          (λ x8440
                                                                                            x8435))))
                                                                                g8434)
                                                                              (letrec ((x-cnd8441
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8441
                                                                                  (letrec ((g8442
                                                                                            (letrec ((x8466
                                                                                                      (dead))
                                                                                                     (x8443
                                                                                                      (letrec ((x8453
                                                                                                                (letrec ((x8457
                                                                                                                          (letrec ((x8462
                                                                                                                                    (letrec ((x8465
                                                                                                                                              (r
                                                                                                                                               'touching?))
                                                                                                                                             (x8463
                                                                                                                                              (letrec ((x8464
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8464))))
                                                                                                                                      (x8465
                                                                                                                                       x8463)))
                                                                                                                                   (x8458
                                                                                                                                    (letrec ((x8461
                                                                                                                                              (dead
                                                                                                                                               'touching?))
                                                                                                                                             (x8459
                                                                                                                                              (letrec ((x8460
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8460))))
                                                                                                                                      (x8461
                                                                                                                                       x8459))))
                                                                                                                            (or x8462
                                                                                                                                x8458)))
                                                                                                                         (x8454
                                                                                                                          (letrec ((x8456
                                                                                                                                    (r
                                                                                                                                     'kill-all))
                                                                                                                                   (x8455
                                                                                                                                    (new-cons-zombies
                                                                                                                                     z
                                                                                                                                     dead)))
                                                                                                                            (x8456
                                                                                                                             x8455))))
                                                                                                                  (x8457
                                                                                                                   x8454)))
                                                                                                               (x8444
                                                                                                                (letrec ((x8445
                                                                                                                          (letrec ((res
                                                                                                                                    (letrec ((x8446
                                                                                                                                              (r
                                                                                                                                               'kill-all)))
                                                                                                                                      (x8446
                                                                                                                                       dead))))
                                                                                                                            (letrec ((g8447
                                                                                                                                      (letrec ((x8450
                                                                                                                                                (letrec ((x8451
                                                                                                                                                          (letrec ((x8452
                                                                                                                                                                    (res
                                                                                                                                                                     'undead)))
                                                                                                                                                            (x8452))))
                                                                                                                                                  (new-cons-zombies
                                                                                                                                                   z
                                                                                                                                                   x8451)))
                                                                                                                                               (x8448
                                                                                                                                                (letrec ((x8449
                                                                                                                                                          (res
                                                                                                                                                           'dead)))
                                                                                                                                                  (x8449))))
                                                                                                                                        (new-horde
                                                                                                                                         x8450
                                                                                                                                         x8448))))
                                                                                                                              g8447))))
                                                                                                                  (else
                                                                                                                   x8445))))
                                                                                                        (cond
                                                                                                         x8453
                                                                                                         x8444))))
                                                                                              (λ x8466
                                                                                                x8443))))
                                                                                    g8442)
                                                                                  (letrec ((g8467
                                                                                            "unknown message"))
                                                                                    g8467)))))))))))
                                                          (λ x8468 x8417))))
                                                g8416)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8469
                                                        (letrec ((x8487 (msg))
                                                                 (x8470
                                                                  (letrec ((x-cnd8471
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8471
                                                                      (letrec ((g8472
                                                                                (letrec ((x8474
                                                                                          (p))
                                                                                         (x8473
                                                                                          (new-mt-zombies)))
                                                                                  (λ x8474
                                                                                    x8473))))
                                                                        g8472)
                                                                      (letrec ((x-cnd8475
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8475
                                                                          (letrec ((g8476
                                                                                    (letrec ((x8477
                                                                                              (c
                                                                                               s)))
                                                                                      (λ x8477
                                                                                        s))))
                                                                            g8476)
                                                                          (letrec ((x-cnd8478
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8478
                                                                              (letrec ((g8479
                                                                                        (letrec ((x8480
                                                                                                  (p)))
                                                                                          (λ x8480
                                                                                            #f))))
                                                                                g8479)
                                                                              (letrec ((x-cnd8481
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8481
                                                                                  (letrec ((g8482
                                                                                            (letrec ((x8485
                                                                                                      (dead))
                                                                                                     (x8483
                                                                                                      (letrec ((x8484
                                                                                                                (new-mt-zombies)))
                                                                                                        (new-horde
                                                                                                         x8484
                                                                                                         dead))))
                                                                                              (λ x8485
                                                                                                x8483))))
                                                                                    g8482)
                                                                                  (letrec ((g8486
                                                                                            "unknown message"))
                                                                                    g8486)))))))))))
                                                          (λ x8487 x8470))))
                                                g8469)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8488
                                                        (letrec ((x8511 (msg))
                                                                 (x8489
                                                                  (letrec ((x-cnd8490
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8490
                                                                      (letrec ((g8491
                                                                                (λ ()
                                                                                  p)))
                                                                        g8491)
                                                                      (letrec ((x-cnd8492
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8492
                                                                          (letrec ((g8493
                                                                                    (letrec ((x8497
                                                                                              (c
                                                                                               s))
                                                                                             (x8494
                                                                                              (letrec ((x8496
                                                                                                        (p
                                                                                                         'draw-on/image))
                                                                                                       (x8495
                                                                                                        (circle
                                                                                                         ZOMBIE-RADIUS
                                                                                                         "solid"
                                                                                                         c)))
                                                                                                (x8496
                                                                                                 x8495
                                                                                                 s))))
                                                                                      (λ x8497
                                                                                        x8494))))
                                                                            g8493)
                                                                          (letrec ((x-cnd8498
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8498
                                                                              (letrec ((g8499
                                                                                        (letrec ((x8503
                                                                                                  (q))
                                                                                                 (x8500
                                                                                                  (letrec ((x8501
                                                                                                            (letrec ((x8502
                                                                                                                      (p
                                                                                                                       'dist)))
                                                                                                              (x8502
                                                                                                               q))))
                                                                                                    (<=
                                                                                                     x8501
                                                                                                     ZOMBIE-RADIUS))))
                                                                                          (λ x8503
                                                                                            x8500))))
                                                                                g8499)
                                                                              (letrec ((x-cnd8504
                                                                                        (equal?
                                                                                         msg
                                                                                         'move-toward)))
                                                                                (if x-cnd8504
                                                                                  (letrec ((g8505
                                                                                            (letrec ((x8509
                                                                                                      (q))
                                                                                                     (x8506
                                                                                                      (letrec ((x8507
                                                                                                                (letrec ((x8508
                                                                                                                          (p
                                                                                                                           'move-toward/speed)))
                                                                                                                  (x8508
                                                                                                                   q
                                                                                                                   ZOMBIE-SPEED))))
                                                                                                        (new-zombie
                                                                                                         x8507))))
                                                                                              (λ x8509
                                                                                                x8506))))
                                                                                    g8505)
                                                                                  (letrec ((g8510
                                                                                            "unknown message"))
                                                                                    g8510)))))))))))
                                                          (λ x8511 x8489))))
                                                g8488)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8512
                                                        (letrec ((this
                                                                  (letrec ((x8576
                                                                            (msg))
                                                                           (x8513
                                                                            (letrec ((x-cnd8514
                                                                                      (equal?
                                                                                       msg
                                                                                       'x)))
                                                                              (if x-cnd8514
                                                                                (letrec ((g8515
                                                                                          (λ ()
                                                                                            x)))
                                                                                  g8515)
                                                                                (letrec ((x-cnd8516
                                                                                          (equal?
                                                                                           msg
                                                                                           'y)))
                                                                                  (if x-cnd8516
                                                                                    (letrec ((g8517
                                                                                              (λ ()
                                                                                                y)))
                                                                                      g8517)
                                                                                    (letrec ((x-cnd8518
                                                                                              (equal?
                                                                                               msg
                                                                                               'posn)))
                                                                                      (if x-cnd8518
                                                                                        (letrec ((g8519
                                                                                                  (λ ()
                                                                                                    this)))
                                                                                          g8519)
                                                                                        (letrec ((x-cnd8520
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'move-toward/speed)))
                                                                                          (if x-cnd8520
                                                                                            (letrec ((g8521
                                                                                                      (letrec ((x8551
                                                                                                                (p
                                                                                                                 speed))
                                                                                                               (x8522
                                                                                                                (letrec ((x8537
                                                                                                                          (letrec ((x8547
                                                                                                                                    (letrec ((x8548
                                                                                                                                              (letrec ((x8549
                                                                                                                                                        (letrec ((x8550
                                                                                                                                                                  (p
                                                                                                                                                                   'x)))
                                                                                                                                                          (x8550))))
                                                                                                                                                (-
                                                                                                                                                 x8549
                                                                                                                                                 x))))
                                                                                                                                      (δx
                                                                                                                                       x8548)))
                                                                                                                                   (x8543
                                                                                                                                    (letrec ((x8544
                                                                                                                                              (letrec ((x8545
                                                                                                                                                        (letrec ((x8546
                                                                                                                                                                  (p
                                                                                                                                                                   'y)))
                                                                                                                                                          (x8546))))
                                                                                                                                                (-
                                                                                                                                                 x8545
                                                                                                                                                 y))))
                                                                                                                                      (δy
                                                                                                                                       x8544)))
                                                                                                                                   (x8538
                                                                                                                                    (letrec ((x8539
                                                                                                                                              (letrec ((x8540
                                                                                                                                                        (letrec ((x8542
                                                                                                                                                                  (abs
                                                                                                                                                                   δx))
                                                                                                                                                                 (x8541
                                                                                                                                                                  (abs
                                                                                                                                                                   δy)))
                                                                                                                                                          (max
                                                                                                                                                           x8542
                                                                                                                                                           x8541))))
                                                                                                                                                (min
                                                                                                                                                 speed
                                                                                                                                                 x8540))))
                                                                                                                                      (move-distance
                                                                                                                                       x8539))))
                                                                                                                            (x8547
                                                                                                                             x8543
                                                                                                                             x8538)))
                                                                                                                         (x8523
                                                                                                                          (letrec ((x8529
                                                                                                                                    (letrec ((x8534
                                                                                                                                              (letrec ((x8536
                                                                                                                                                        (abs
                                                                                                                                                         δx))
                                                                                                                                                       (x8535
                                                                                                                                                        (abs
                                                                                                                                                         δy)))
                                                                                                                                                (<
                                                                                                                                                 x8536
                                                                                                                                                 x8535)))
                                                                                                                                             (x8530
                                                                                                                                              (letrec ((x8533
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8531
                                                                                                                                                        (letrec ((x-cnd8532
                                                                                                                                                                  (positive?
                                                                                                                                                                   δy)))
                                                                                                                                                          (if x-cnd8532
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8533
                                                                                                                                                 0
                                                                                                                                                 x8531))))
                                                                                                                                      (x8534
                                                                                                                                       x8530)))
                                                                                                                                   (x8524
                                                                                                                                    (letrec ((x8525
                                                                                                                                              (letrec ((x8528
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8526
                                                                                                                                                        (letrec ((x-cnd8527
                                                                                                                                                                  (positive?
                                                                                                                                                                   δx)))
                                                                                                                                                          (if x-cnd8527
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8528
                                                                                                                                                 x8526
                                                                                                                                                 0))))
                                                                                                                                      (else
                                                                                                                                       x8525))))
                                                                                                                            (cond
                                                                                                                             x8529
                                                                                                                             x8524))))
                                                                                                                  (let* x8537 x8523))))
                                                                                                        (λ x8551
                                                                                                          x8522))))
                                                                                              g8521)
                                                                                            (letrec ((x-cnd8552
                                                                                                      (equal?
                                                                                                       msg
                                                                                                       'move)))
                                                                                              (if x-cnd8552
                                                                                                (letrec ((g8553
                                                                                                          (letrec ((x8557
                                                                                                                    (δx
                                                                                                                     δy))
                                                                                                                   (x8554
                                                                                                                    (letrec ((x8556
                                                                                                                              (+
                                                                                                                               x
                                                                                                                               δx))
                                                                                                                             (x8555
                                                                                                                              (+
                                                                                                                               y
                                                                                                                               δy)))
                                                                                                                      (new-posn
                                                                                                                       x8556
                                                                                                                       x8555))))
                                                                                                            (λ x8557
                                                                                                              x8554))))
                                                                                                  g8553)
                                                                                                (letrec ((x-cnd8558
                                                                                                          (equal?
                                                                                                           msg
                                                                                                           'draw-on/image)))
                                                                                                  (if x-cnd8558
                                                                                                    (letrec ((g8559
                                                                                                              (letrec ((x8561
                                                                                                                        (img
                                                                                                                         scn))
                                                                                                                       (x8560
                                                                                                                        (place-image
                                                                                                                         img
                                                                                                                         x
                                                                                                                         y
                                                                                                                         scn)))
                                                                                                                (λ x8561
                                                                                                                  x8560))))
                                                                                                      g8559)
                                                                                                    (letrec ((x-cnd8562
                                                                                                              (equal?
                                                                                                               msg
                                                                                                               'dist)))
                                                                                                      (if x-cnd8562
                                                                                                        (letrec ((g8563
                                                                                                                  (letrec ((x8574
                                                                                                                            (p))
                                                                                                                           (x8564
                                                                                                                            (letrec ((x8565
                                                                                                                                      (letrec ((x8570
                                                                                                                                                (letrec ((x8571
                                                                                                                                                          (letrec ((x8572
                                                                                                                                                                    (letrec ((x8573
                                                                                                                                                                              (p
                                                                                                                                                                               'y)))
                                                                                                                                                                      (x8573))))
                                                                                                                                                            (-
                                                                                                                                                             x8572
                                                                                                                                                             y))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8571)))
                                                                                                                                               (x8566
                                                                                                                                                (letrec ((x8567
                                                                                                                                                          (letrec ((x8568
                                                                                                                                                                    (letrec ((x8569
                                                                                                                                                                              (p
                                                                                                                                                                               'x)))
                                                                                                                                                                      (x8569))))
                                                                                                                                                            (-
                                                                                                                                                             x8568
                                                                                                                                                             x))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8567))))
                                                                                                                                        (+
                                                                                                                                         x8570
                                                                                                                                         x8566))))
                                                                                                                              (sqrt
                                                                                                                               x8565))))
                                                                                                                    (λ x8574
                                                                                                                      x8564))))
                                                                                                          g8563)
                                                                                                        (letrec ((g8575
                                                                                                                  "unknown message"))
                                                                                                          g8575)))))))))))))))))
                                                                    (λ x8576
                                                                      x8513))))
                                                          (letrec ((g8577
                                                                    this))
                                                            g8577))))
                                                g8512)))
                                           (w0
                                            (letrec ((x8591
                                                      (letrec ((x8592
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8592)))
                                                     (x8590 (new-posn 0 0))
                                                     (x8578
                                                      (letrec ((x8583
                                                                (letrec ((x8588
                                                                          (letrec ((x8589
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8589)))
                                                                         (x8584
                                                                          (letrec ((x8586
                                                                                    (letrec ((x8587
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8587)))
                                                                                   (x8585
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8586
                                                                             x8585))))
                                                                  (new-cons-zombies
                                                                   x8588
                                                                   x8584)))
                                                               (x8579
                                                                (letrec ((x8581
                                                                          (letrec ((x8582
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8582)))
                                                                         (x8580
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8581
                                                                   x8580))))
                                                        (new-horde
                                                         x8583
                                                         x8579))))
                                              (new-world x8591 x8590 x8578))))
                                    (letrec ((g8593
                                              (letrec ((x8606
                                                        ((lambda (j7497
                                                                  k7498
                                                                  f7499)
                                                           (letrec ((g8607
                                                                     (lambda (g7496)
                                                                       (letrec ((g8608
                                                                                 (letrec ((x8609
                                                                                           (letrec ((x8610
                                                                                                     (any/c
                                                                                                      j7497
                                                                                                      k7498
                                                                                                      g7496)))
                                                                                             (f7499
                                                                                              x8610))))
                                                                                   (boolean?/c
                                                                                    j7497
                                                                                    k7498
                                                                                    x8609))))
                                                                         g8608))))
                                                             g8607))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8605 (input)))
                                                (x8606 x8605)))
                                             (g8594
                                              (letrec ((x8613
                                                        ((lambda (j7502
                                                                  k7503
                                                                  f7504)
                                                           (letrec ((g8614
                                                                     (lambda (g7500
                                                                              g7501)
                                                                       (letrec ((g8615
                                                                                 (letrec ((x8616
                                                                                           (letrec ((x8618
                                                                                                     (real?/c
                                                                                                      j7502
                                                                                                      k7503
                                                                                                      g7500))
                                                                                                    (x8617
                                                                                                     (real?/c
                                                                                                      j7502
                                                                                                      k7503
                                                                                                      g7501)))
                                                                                             (f7504
                                                                                              x8618
                                                                                              x8617))))
                                                                                   (image?
                                                                                    j7502
                                                                                    k7503
                                                                                    x8616))))
                                                                         g8615))))
                                                             g8614))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8612 (input))
                                                       (x8611 (input)))
                                                (x8613 x8612 x8611)))
                                             (g8595
                                              (letrec ((x8623
                                                        ((lambda (j7509
                                                                  k7510
                                                                  f7511)
                                                           (letrec ((g8624
                                                                     (lambda (g7505
                                                                              g7506
                                                                              g7507
                                                                              g7508)
                                                                       (letrec ((g8625
                                                                                 (letrec ((x8626
                                                                                           (letrec ((x8630
                                                                                                     (image?/c
                                                                                                      j7509
                                                                                                      k7510
                                                                                                      g7505))
                                                                                                    (x8629
                                                                                                     (real?/c
                                                                                                      j7509
                                                                                                      k7510
                                                                                                      g7506))
                                                                                                    (x8628
                                                                                                     (real?/c
                                                                                                      j7509
                                                                                                      k7510
                                                                                                      g7507))
                                                                                                    (x8627
                                                                                                     (image?
                                                                                                      j7509
                                                                                                      k7510
                                                                                                      g7508)))
                                                                                             (f7511
                                                                                              x8630
                                                                                              x8629
                                                                                              x8628
                                                                                              x8627))))
                                                                                   (image?
                                                                                    j7509
                                                                                    k7510
                                                                                    x8626))))
                                                                         g8625))))
                                                             g8624))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8622 (input))
                                                       (x8621 (input))
                                                       (x8620 (input))
                                                       (x8619 (input)))
                                                (x8623
                                                 x8622
                                                 x8621
                                                 x8620
                                                 x8619)))
                                             (g8596
                                              (letrec ((x8634
                                                        ((lambda (j7515
                                                                  k7516
                                                                  f7517)
                                                           (letrec ((g8635
                                                                     (lambda (g7512
                                                                              g7513
                                                                              g7514)
                                                                       (letrec ((g8636
                                                                                 (letrec ((x8637
                                                                                           (letrec ((x8640
                                                                                                     (real?/c
                                                                                                      j7515
                                                                                                      k7516
                                                                                                      g7512))
                                                                                                    (x8639
                                                                                                     (string?/c
                                                                                                      j7515
                                                                                                      k7516
                                                                                                      g7513))
                                                                                                    (x8638
                                                                                                     (string?/c
                                                                                                      j7515
                                                                                                      k7516
                                                                                                      g7514)))
                                                                                             (f7517
                                                                                              x8640
                                                                                              x8639
                                                                                              x8638))))
                                                                                   (image?
                                                                                    j7515
                                                                                    k7516
                                                                                    x8637))))
                                                                         g8636))))
                                                             g8635))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8633 (input))
                                                       (x8632 (input))
                                                       (x8631 (input)))
                                                (x8634 x8633 x8632 x8631)))
                                             (g8597
                                              (letrec ((x8644
                                                        ((lambda (j7521
                                                                  k7522
                                                                  f7523)
                                                           (letrec ((g8645
                                                                     (lambda (g7518
                                                                              g7519
                                                                              g7520)
                                                                       (letrec ((g8646
                                                                                 (letrec ((x8647
                                                                                           (letrec ((x8650
                                                                                                     (player/c
                                                                                                      j7521
                                                                                                      k7522
                                                                                                      g7518))
                                                                                                    (x8649
                                                                                                     (posn/c
                                                                                                      j7521
                                                                                                      k7522
                                                                                                      g7519))
                                                                                                    (x8648
                                                                                                     (horde/c
                                                                                                      j7521
                                                                                                      k7522
                                                                                                      g7520)))
                                                                                             (f7523
                                                                                              x8650
                                                                                              x8649
                                                                                              x8648))))
                                                                                   (world/c
                                                                                    j7521
                                                                                    k7522
                                                                                    x8647))))
                                                                         g8646))))
                                                             g8645))
                                                         'module
                                                         'importer
                                                         new-world))
                                                       (x8643 (input))
                                                       (x8642 (input))
                                                       (x8641 (input)))
                                                (x8644 x8643 x8642 x8641)))
                                             (g8598
                                              (letrec ((x8652
                                                        ((lambda (j7525
                                                                  k7526
                                                                  f7527)
                                                           (letrec ((g8653
                                                                     (lambda (g7524)
                                                                       (letrec ((g8654
                                                                                 (letrec ((x8655
                                                                                           (letrec ((x8656
                                                                                                     (posn/c
                                                                                                      j7525
                                                                                                      k7526
                                                                                                      g7524)))
                                                                                             (f7527
                                                                                              x8656))))
                                                                                   (player/c
                                                                                    j7525
                                                                                    k7526
                                                                                    x8655))))
                                                                         g8654))))
                                                             g8653))
                                                         'module
                                                         'importer
                                                         new-player))
                                                       (x8651 (input)))
                                                (x8652 x8651)))
                                             (g8599
                                              (letrec ((x8659
                                                        ((lambda (j7530
                                                                  k7531
                                                                  f7532)
                                                           (letrec ((g8660
                                                                     (lambda (g7528
                                                                              g7529)
                                                                       (letrec ((g8661
                                                                                 (letrec ((x8662
                                                                                           (letrec ((x8664
                                                                                                     (zombies/c
                                                                                                      j7530
                                                                                                      k7531
                                                                                                      g7528))
                                                                                                    (x8663
                                                                                                     (zombies/c
                                                                                                      j7530
                                                                                                      k7531
                                                                                                      g7529)))
                                                                                             (f7532
                                                                                              x8664
                                                                                              x8663))))
                                                                                   (horde/c
                                                                                    j7530
                                                                                    k7531
                                                                                    x8662))))
                                                                         g8661))))
                                                             g8660))
                                                         'module
                                                         'importer
                                                         new-horde))
                                                       (x8658 (input))
                                                       (x8657 (input)))
                                                (x8659 x8658 x8657)))
                                             (g8600
                                              (letrec ((x8667
                                                        ((lambda (j7535
                                                                  k7536
                                                                  f7537)
                                                           (letrec ((g8668
                                                                     (lambda (g7533
                                                                              g7534)
                                                                       (letrec ((g8669
                                                                                 (letrec ((x8670
                                                                                           (letrec ((x8672
                                                                                                     (zombie/c
                                                                                                      j7535
                                                                                                      k7536
                                                                                                      g7533))
                                                                                                    (x8671
                                                                                                     (zombies/c
                                                                                                      j7535
                                                                                                      k7536
                                                                                                      g7534)))
                                                                                             (f7537
                                                                                              x8672
                                                                                              x8671))))
                                                                                   (zombies/c
                                                                                    j7535
                                                                                    k7536
                                                                                    x8670))))
                                                                         g8669))))
                                                             g8668))
                                                         'module
                                                         'importer
                                                         new-cons-zombies))
                                                       (x8666 (input))
                                                       (x8665 (input)))
                                                (x8667 x8666 x8665)))
                                             (g8601
                                              ((lambda (j7538 k7539 f7540)
                                                 (letrec ((g8673
                                                           (lambda ()
                                                             (letrec ((g8674
                                                                       (letrec ((x8675
                                                                                 (f7540)))
                                                                         (zombies/c
                                                                          j7538
                                                                          k7539
                                                                          x8675))))
                                                               g8674))))
                                                   g8673))
                                               'module
                                               'importer
                                               new-mt-zombies))
                                             (g8602
                                              (letrec ((x8677
                                                        ((lambda (j7542
                                                                  k7543
                                                                  f7544)
                                                           (letrec ((g8678
                                                                     (lambda (g7541)
                                                                       (letrec ((g8679
                                                                                 (letrec ((x8680
                                                                                           (letrec ((x8681
                                                                                                     (posn/c
                                                                                                      j7542
                                                                                                      k7543
                                                                                                      g7541)))
                                                                                             (f7544
                                                                                              x8681))))
                                                                                   (zombie/c
                                                                                    j7542
                                                                                    k7543
                                                                                    x8680))))
                                                                         g8679))))
                                                             g8678))
                                                         'module
                                                         'importer
                                                         new-zombie))
                                                       (x8676 (input)))
                                                (x8677 x8676)))
                                             (g8603
                                              (letrec ((x8684
                                                        ((lambda (j7547
                                                                  k7548
                                                                  f7549)
                                                           (letrec ((g8685
                                                                     (lambda (g7545
                                                                              g7546)
                                                                       (letrec ((g8686
                                                                                 (letrec ((x8687
                                                                                           (letrec ((x8689
                                                                                                     (real?/c
                                                                                                      j7547
                                                                                                      k7548
                                                                                                      g7545))
                                                                                                    (x8688
                                                                                                     (real?/c
                                                                                                      j7547
                                                                                                      k7548
                                                                                                      g7546)))
                                                                                             (f7549
                                                                                              x8689
                                                                                              x8688))))
                                                                                   (posn/c
                                                                                    j7547
                                                                                    k7548
                                                                                    x8687))))
                                                                         g8686))))
                                                             g8685))
                                                         'module
                                                         'importer
                                                         new-posn))
                                                       (x8683 (input))
                                                       (x8682 (input)))
                                                (x8684 x8683 x8682)))
                                             (g8604
                                              (world/c 'module 'importer w0)))
                                      g8604))))
                          g7564))))
              g7562)))
    g7561))
