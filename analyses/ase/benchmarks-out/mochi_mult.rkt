(letrec ((any? (lambda (v) (letrec ((g7638 #t)) g7638)))
         (meta (lambda (v) (letrec ((g7639 v)) g7639)))
         (member
          (lambda (v lst)
            (letrec ((g7640
                      (letrec ((g7641
                                (letrec ((x-e7642 lst))
                                  (match
                                   x-e7642
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7643 (eq? v v1)))
                                       (if x-cnd7643 #t (member v vs)))))))))
                        g7641)))
              g7640)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7644 (lambda (v) (letrec ((g7645 v)) g7645)))) g7644)))
         (nonzero?
          (lambda (v)
            (letrec ((g7646 (letrec ((x7647 (= v 0))) (not x7647)))) g7646))))
  (letrec ((g7648
            (letrec ((g7649
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7650 '())
                                 (g7651
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7652
                                                        (lambda (k j lst)
                                                          (letrec ((g7653
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7654
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7654))
                                                                     lst)))
                                                            g7653))))
                                                g7652)))
                                           (real?/c
                                            (lambda (g7534 g7535 g7536)
                                              (letrec ((g7655
                                                        (letrec ((x-cnd7656
                                                                  (real?
                                                                   g7536)))
                                                          (if x-cnd7656
                                                            g7536
                                                            (blame
                                                             g7534
                                                             'real?)))))
                                                g7655)))
                                           (boolean?/c
                                            (lambda (g7537 g7538 g7539)
                                              (letrec ((g7657
                                                        (letrec ((x-cnd7658
                                                                  (boolean?
                                                                   g7539)))
                                                          (if x-cnd7658
                                                            g7539
                                                            (blame
                                                             g7537
                                                             'boolean?)))))
                                                g7657)))
                                           (number?/c
                                            (lambda (g7540 g7541 g7542)
                                              (letrec ((g7659
                                                        (letrec ((x-cnd7660
                                                                  (number?
                                                                   g7542)))
                                                          (if x-cnd7660
                                                            g7542
                                                            (blame
                                                             g7540
                                                             'number?)))))
                                                g7659)))
                                           (any/c
                                            (lambda (g7543 g7544 g7545)
                                              (letrec ((g7661
                                                        (letrec ((x-cnd7662
                                                                  ((lambda (v)
                                                                     (letrec ((g7663
                                                                               #t))
                                                                       g7663))
                                                                   g7545)))
                                                          (if x-cnd7662
                                                            g7545
                                                            (blame
                                                             g7543
                                                             '(lambda (v)
                                                                #t))))))
                                                g7661)))
                                           (any?/c
                                            (lambda (g7546 g7547 g7548)
                                              (letrec ((g7664
                                                        (letrec ((x-cnd7665
                                                                  ((lambda (v)
                                                                     (letrec ((g7666
                                                                               #t))
                                                                       g7666))
                                                                   g7548)))
                                                          (if x-cnd7665
                                                            g7548
                                                            (blame
                                                             g7546
                                                             '(lambda (v)
                                                                #t))))))
                                                g7664)))
                                           (cons?/c
                                            (lambda (g7549 g7550 g7551)
                                              (letrec ((g7667
                                                        (letrec ((x-cnd7668
                                                                  (pair?
                                                                   g7551)))
                                                          (if x-cnd7668
                                                            g7551
                                                            (blame
                                                             g7549
                                                             'pair?)))))
                                                g7667)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7552 g7553 g7554)
                                              (letrec ((g7669
                                                        (letrec ((x-cnd7670
                                                                  (pair?
                                                                   g7554)))
                                                          (if x-cnd7670
                                                            g7554
                                                            (blame
                                                             g7552
                                                             'pair?)))))
                                                g7669)))
                                           (integer?/c
                                            (lambda (g7555 g7556 g7557)
                                              (letrec ((g7671
                                                        (letrec ((x-cnd7672
                                                                  (integer?
                                                                   g7557)))
                                                          (if x-cnd7672
                                                            g7557
                                                            (blame
                                                             g7555
                                                             'integer?)))))
                                                g7671)))
                                           (symbol?/c
                                            (lambda (g7558 g7559 g7560)
                                              (letrec ((g7673
                                                        (letrec ((x-cnd7674
                                                                  (symbol?
                                                                   g7560)))
                                                          (if x-cnd7674
                                                            g7560
                                                            (blame
                                                             g7558
                                                             'symbol?)))))
                                                g7673)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7675
                                                        (lambda (k j v)
                                                          (letrec ((g7676
                                                                    (letrec ((x-cnd7677
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7677
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7676))))
                                                g7675)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7678
                                                        (lambda (k j v)
                                                          (letrec ((g7679
                                                                    (letrec ((x-cnd7680
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7680
                                                                        '()
                                                                        (letrec ((x7684
                                                                                  (letrec ((x7685
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7685)))
                                                                                 (x7681
                                                                                  (letrec ((x7683
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7682
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7683
                                                                                     k
                                                                                     j
                                                                                     x7682))))
                                                                          (orig-cons
                                                                           x7684
                                                                           x7681))))))
                                                            g7679))))
                                                g7678)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7686 #t)) g7686)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7687
                                                        (letrec ((x7688
                                                                  (= v 0)))
                                                          (not x7688))))
                                                g7687)))
                                           (nonzero?/c
                                            (lambda (g7561 g7562 g7563)
                                              (letrec ((g7689
                                                        (letrec ((x-cnd7690
                                                                  ((lambda (v)
                                                                     (letrec ((g7691
                                                                               (letrec ((x7692
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7692))))
                                                                       g7691))
                                                                   g7563)))
                                                          (if x-cnd7690
                                                            g7563
                                                            (blame
                                                             g7561
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7689)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7693 v)) g7693)))
                                           (+
                                            (letrec ((xj7564 'server)
                                                     (xk7565 'client))
                                              (letrec ((g7694
                                                        ((lambda (j7568
                                                                  k7569
                                                                  f7570)
                                                           (letrec ((g7696
                                                                     (lambda (g7566
                                                                              g7567)
                                                                       (letrec ((g7697
                                                                                 (letrec ((x7698
                                                                                           (letrec ((x7700
                                                                                                     (number?/c
                                                                                                      j7568
                                                                                                      k7569
                                                                                                      g7566))
                                                                                                    (x7699
                                                                                                     (number?/c
                                                                                                      j7568
                                                                                                      k7569
                                                                                                      g7567)))
                                                                                             (f7570
                                                                                              x7700
                                                                                              x7699))))
                                                                                   (number?/c
                                                                                    j7568
                                                                                    k7569
                                                                                    x7698))))
                                                                         g7697))))
                                                             g7696))
                                                         xj7564
                                                         xk7565
                                                         (lambda (a b)
                                                           (letrec ((g7695
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7695)))))
                                                g7694)))
                                           (-
                                            (letrec ((xj7571 'server)
                                                     (xk7572 'client))
                                              (letrec ((g7701
                                                        ((lambda (j7575
                                                                  k7576
                                                                  f7577)
                                                           (letrec ((g7703
                                                                     (lambda (g7573
                                                                              g7574)
                                                                       (letrec ((g7704
                                                                                 (letrec ((x7705
                                                                                           (letrec ((x7707
                                                                                                     (number?/c
                                                                                                      j7575
                                                                                                      k7576
                                                                                                      g7573))
                                                                                                    (x7706
                                                                                                     (number?/c
                                                                                                      j7575
                                                                                                      k7576
                                                                                                      g7574)))
                                                                                             (f7577
                                                                                              x7707
                                                                                              x7706))))
                                                                                   (number?/c
                                                                                    j7575
                                                                                    k7576
                                                                                    x7705))))
                                                                         g7704))))
                                                             g7703))
                                                         xj7571
                                                         xk7572
                                                         (lambda (a b)
                                                           (letrec ((g7702
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7702)))))
                                                g7701)))
                                           (*
                                            (letrec ((xj7578 'server)
                                                     (xk7579 'client))
                                              (letrec ((g7708
                                                        ((lambda (j7582
                                                                  k7583
                                                                  f7584)
                                                           (letrec ((g7710
                                                                     (lambda (g7580
                                                                              g7581)
                                                                       (letrec ((g7711
                                                                                 (letrec ((x7712
                                                                                           (letrec ((x7714
                                                                                                     (number?/c
                                                                                                      j7582
                                                                                                      k7583
                                                                                                      g7580))
                                                                                                    (x7713
                                                                                                     (number?/c
                                                                                                      j7582
                                                                                                      k7583
                                                                                                      g7581)))
                                                                                             (f7584
                                                                                              x7714
                                                                                              x7713))))
                                                                                   (number?/c
                                                                                    j7582
                                                                                    k7583
                                                                                    x7712))))
                                                                         g7711))))
                                                             g7710))
                                                         xj7578
                                                         xk7579
                                                         (lambda (a b)
                                                           (letrec ((g7709
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7709)))))
                                                g7708)))
                                           (/
                                            (letrec ((xj7585 'server)
                                                     (xk7586 'client))
                                              (letrec ((g7715
                                                        ((lambda (j7589
                                                                  k7590
                                                                  f7591)
                                                           (letrec ((g7717
                                                                     (lambda (g7587
                                                                              g7588)
                                                                       (letrec ((g7718
                                                                                 (letrec ((x7719
                                                                                           (letrec ((x7721
                                                                                                     (number?/c
                                                                                                      j7589
                                                                                                      k7590
                                                                                                      g7587))
                                                                                                    (x7720
                                                                                                     (number?/c
                                                                                                      j7589
                                                                                                      k7590
                                                                                                      g7588)))
                                                                                             (f7591
                                                                                              x7721
                                                                                              x7720))))
                                                                                   (number?/c
                                                                                    j7589
                                                                                    k7590
                                                                                    x7719))))
                                                                         g7718))))
                                                             g7717))
                                                         xj7585
                                                         xk7586
                                                         (lambda (a b)
                                                           (letrec ((g7716
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7716)))))
                                                g7715)))
                                           (car
                                            (letrec ((xj7592 'server)
                                                     (xk7593 'client))
                                              (letrec ((g7722
                                                        ((lambda (j7595
                                                                  k7596
                                                                  f7597)
                                                           (letrec ((g7724
                                                                     (lambda (g7594)
                                                                       (letrec ((g7725
                                                                                 (letrec ((x7726
                                                                                           (letrec ((x7727
                                                                                                     (pair?/c
                                                                                                      j7595
                                                                                                      k7596
                                                                                                      g7594)))
                                                                                             (f7597
                                                                                              x7727))))
                                                                                   (any/c
                                                                                    j7595
                                                                                    k7596
                                                                                    x7726))))
                                                                         g7725))))
                                                             g7724))
                                                         xj7592
                                                         xk7593
                                                         (lambda (p)
                                                           (letrec ((g7723
                                                                     (orig-car
                                                                      p)))
                                                             g7723)))))
                                                g7722)))
                                           (cdr
                                            (letrec ((xj7598 'server)
                                                     (xk7599 'client))
                                              (letrec ((g7728
                                                        ((lambda (j7601
                                                                  k7602
                                                                  f7603)
                                                           (letrec ((g7730
                                                                     (lambda (g7600)
                                                                       (letrec ((g7731
                                                                                 (letrec ((x7732
                                                                                           (letrec ((x7733
                                                                                                     (pair?/c
                                                                                                      j7601
                                                                                                      k7602
                                                                                                      g7600)))
                                                                                             (f7603
                                                                                              x7733))))
                                                                                   (any/c
                                                                                    j7601
                                                                                    k7602
                                                                                    x7732))))
                                                                         g7731))))
                                                             g7730))
                                                         xj7598
                                                         xk7599
                                                         (lambda (p)
                                                           (letrec ((g7729
                                                                     (orig-cdr
                                                                      p)))
                                                             g7729)))))
                                                g7728)))
                                           (cons
                                            (letrec ((xj7604 'server)
                                                     (xk7605 'client))
                                              (letrec ((g7734
                                                        ((lambda (j7608
                                                                  k7609
                                                                  f7610)
                                                           (letrec ((g7736
                                                                     (lambda (g7606
                                                                              g7607)
                                                                       (letrec ((g7737
                                                                                 (letrec ((x7738
                                                                                           (letrec ((x7740
                                                                                                     (any/c
                                                                                                      j7608
                                                                                                      k7609
                                                                                                      g7606))
                                                                                                    (x7739
                                                                                                     (any/c
                                                                                                      j7608
                                                                                                      k7609
                                                                                                      g7607)))
                                                                                             (f7610
                                                                                              x7740
                                                                                              x7739))))
                                                                                   (pair?/c
                                                                                    j7608
                                                                                    k7609
                                                                                    x7738))))
                                                                         g7737))))
                                                             g7736))
                                                         xj7604
                                                         xk7605
                                                         (lambda (a b)
                                                           (letrec ((g7735
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7735)))))
                                                g7734)))
                                           (vector-ref
                                            (letrec ((xj7611 'server)
                                                     (xk7612 'client))
                                              (letrec ((g7741
                                                        ((lambda (j7614
                                                                  k7615
                                                                  f7616)
                                                           (letrec ((g7743
                                                                     (lambda (g7613)
                                                                       (letrec ((g7744
                                                                                 (letrec ((x7745
                                                                                           (letrec ((x7746
                                                                                                     (vector?/c
                                                                                                      j7614
                                                                                                      k7615
                                                                                                      g7613)))
                                                                                             (f7616
                                                                                              x7746))))
                                                                                   (integer?/c
                                                                                    j7614
                                                                                    k7615
                                                                                    x7745))))
                                                                         g7744))))
                                                             g7743))
                                                         xj7611
                                                         xk7612
                                                         (lambda (v i)
                                                           (letrec ((g7742
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7742)))))
                                                g7741)))
                                           (vector-set!
                                            (letrec ((xj7617 'server)
                                                     (xk7618 'client))
                                              (letrec ((g7747
                                                        ((lambda (j7621
                                                                  k7622
                                                                  f7623)
                                                           (letrec ((g7749
                                                                     (lambda (g7619
                                                                              g7620)
                                                                       (letrec ((g7750
                                                                                 (letrec ((x7751
                                                                                           (letrec ((x7753
                                                                                                     (vector?/c
                                                                                                      j7621
                                                                                                      k7622
                                                                                                      g7619))
                                                                                                    (x7752
                                                                                                     (integer?/c
                                                                                                      j7621
                                                                                                      k7622
                                                                                                      g7620)))
                                                                                             (f7623
                                                                                              x7753
                                                                                              x7752))))
                                                                                   (any/c
                                                                                    j7621
                                                                                    k7622
                                                                                    x7751))))
                                                                         g7750))))
                                                             g7749))
                                                         xj7617
                                                         xk7618
                                                         (lambda (vec i v)
                                                           (letrec ((g7748
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7748)))))
                                                g7747)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7754
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7754)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (letrec ((x7757
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7757))))
                                                          (cdr x7756))))
                                                g7755)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7758
                                                        (letrec ((x7761
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7761)))
                                                       (g7759
                                                        (letrec ((x7762
                                                                  (list? l)))
                                                          (assert x7762)))
                                                       (g7760
                                                        (letrec ((x-cnd7763
                                                                  (null? l)))
                                                          (if x-cnd7763
                                                            '()
                                                            (letrec ((x7766
                                                                      (letrec ((x7767
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7767)))
                                                                     (x7764
                                                                      (letrec ((x7765
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7765))))
                                                              (cons
                                                               x7766
                                                               x7764))))))
                                                g7760)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (car x)))
                                                          (cdr x7769))))
                                                g7768)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (letrec ((x7773
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7773))))
                                                                    (cdr
                                                                     x7772))))
                                                          (car x7771))))
                                                g7770)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (letrec ((x7777
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7777))))
                                                                    (car
                                                                     x7776))))
                                                          (cdr x7775))))
                                                g7774)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7778
                                                        (letrec ((x7781
                                                                  (string?
                                                                   filename)))
                                                          (assert x7781)))
                                                       (g7779
                                                        (letrec ((x7782
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7782)))
                                                       (g7780
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7783
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7784 res))
                                                            g7784))))
                                                g7780)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7785
                                                        (letrec ((x7786
                                                                  (letrec ((x7787
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7787))))
                                                          (car x7786))))
                                                g7785)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (letrec ((x7790
                                                                            (letrec ((x7791
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7791))))
                                                                    (car
                                                                     x7790))))
                                                          (cdr x7789))))
                                                g7788)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7792
                                                        (letrec ((x7794
                                                                  (list? l)))
                                                          (assert x7794)))
                                                       (g7793
                                                        (letrec ((x-cnd7795
                                                                  (null? l)))
                                                          (if x-cnd7795
                                                            #f
                                                            (letrec ((x-cnd7796
                                                                      (letrec ((x7797
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7797
                                                                         k))))
                                                              (if x-cnd7796
                                                                (car l)
                                                                (letrec ((x7798
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7798))))))))
                                                g7793)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7799
                                                        (letrec ((x7800
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7800))))
                                                g7799)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7801
                                                        (letrec ((x7803
                                                                  (list? l)))
                                                          (assert x7803)))
                                                       (g7802
                                                        (letrec ((x-cnd7804
                                                                  (null? l)))
                                                          (if x-cnd7804
                                                            ""
                                                            (letrec ((x7807
                                                                      (letrec ((x7808
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7808)))
                                                                     (x7805
                                                                      (letrec ((x7806
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7806))))
                                                              (string-append
                                                               x7807
                                                               x7805))))))
                                                g7802)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7809
                                                        (letrec ((x7812
                                                                  (char? c1)))
                                                          (assert x7812)))
                                                       (g7810
                                                        (letrec ((x7813
                                                                  (char? c2)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7814
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7814))))
                                                g7811)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7815
                                                        (letrec ((x7816
                                                                  (letrec ((x7817
                                                                            (letrec ((x7818
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7818))))
                                                                    (cdr
                                                                     x7817))))
                                                          (cdr x7816))))
                                                g7815)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7819
                                                        (letrec ((x7822
                                                                  (list? l)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((x7823
                                                                  (number?)))
                                                          (assert x7823)))
                                                       (g7821
                                                        (letrec ((x-cnd7824
                                                                  (zero? k)))
                                                          (if x-cnd7824
                                                            x
                                                            (letrec ((x7826
                                                                      (cdr x))
                                                                     (x7825
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7826
                                                               x7825))))))
                                                g7821)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7827 '())) g7827)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7828
                                                        (letrec ((x-cnd7829
                                                                  (letrec ((x7830
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7830))))
                                                          (if x-cnd7829
                                                            (letrec ((x7831
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7831))
                                                            #f))))
                                                g7828)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7832
                                                        (letrec ((x7834
                                                                  (number? x)))
                                                          (assert x7834)))
                                                       (g7833
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g7835
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7836
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g7836)))))
                                                            g7835))))
                                                g7833)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7837
                                                        (letrec ((val7518
                                                                  (letrec ((x7838
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7838
                                                                     9))))
                                                          (letrec ((g7839
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x7840
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7840
                                                                                   10))))
                                                                        (letrec ((g7841
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x7842
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7842
                                                                                       32)))))
                                                                          g7841)))))
                                                            g7839))))
                                                g7837)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7843
                                                        (letrec ((x7844
                                                                  (letrec ((x7845
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7845))))
                                                          (cdr x7844))))
                                                g7843)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7846
                                                        (letrec ((x7848
                                                                  (number? x)))
                                                          (assert x7848)))
                                                       (g7847 (> x 0)))
                                                g7847)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7849 #f)) g7849)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7850
                                                        (letrec ((x7851
                                                                  (cdr x)))
                                                          (cdr x7851))))
                                                g7850)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7852
                                                        (letrec ((x7854
                                                                  (number? x)))
                                                          (assert x7854)))
                                                       (g7853
                                                        (letrec ((x-cnd7855
                                                                  (< x 0)))
                                                          (if x-cnd7855
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7853)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7856
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g7857
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd7858
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7858
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7859
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd7860
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7860
                                                                                                  (letrec ((x-cnd7861
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7861
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7862
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd7863
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7863
                                                                                                                (letrec ((x-cnd7864
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7864
                                                                                                                    (letrec ((x-cnd7865
                                                                                                                              (letrec ((x7867
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7866
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7867
                                                                                                                                 x7866))))
                                                                                                                      (if x-cnd7865
                                                                                                                        (letrec ((x7869
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7868
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7869
                                                                                                                           x7868))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7870
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd7871
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7871
                                                                                                                    (letrec ((x-cnd7872
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7872
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7873
                                                                                                                                    (letrec ((x-cnd7874
                                                                                                                                              (letrec ((x7875
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7875
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7874
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7876
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7877
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd7878
                                                                                                                                                                                      (letrec ((x7880
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7879
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7880
                                                                                                                                                                                         x7879))))
                                                                                                                                                                              (if x-cnd7878
                                                                                                                                                                                (letrec ((x7881
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7881))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7877))))
                                                                                                                                                      g7876))))
                                                                                                                                          (letrec ((g7882
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7882))
                                                                                                                                        #f))))
                                                                                                                            g7873))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7870)))))
                                                                                        g7862)))))
                                                                          g7859)))))
                                                            g7857))))
                                                g7856)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7884
                                                                  (letrec ((x7885
                                                                            (letrec ((x7886
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7886))))
                                                                    (car
                                                                     x7885))))
                                                          (cdr x7884))))
                                                g7883)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7887
                                                        (letrec ((x7888
                                                                  (letrec ((x7889
                                                                            (letrec ((x7890
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7890))))
                                                                    (car
                                                                     x7889))))
                                                          (car x7888))))
                                                g7887)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7891 (eq? x y)))
                                                g7891)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7892
                                                        (letrec ((x7894
                                                                  (number? x)))
                                                          (assert x7894)))
                                                       (g7893
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g7895
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7896
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g7896)))))
                                                            g7895))))
                                                g7893)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7897
                                                        (letrec ((x7900
                                                                  (string?
                                                                   filename)))
                                                          (assert x7900)))
                                                       (g7898
                                                        (letrec ((x7901
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7901)))
                                                       (g7899
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7902
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7903 res))
                                                            g7903))))
                                                g7899)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7904 (cons x '())))
                                                g7904)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7905
                                                        (letrec ((x7908
                                                                  (char? c1)))
                                                          (assert x7908)))
                                                       (g7906
                                                        (letrec ((x7909
                                                                  (char? c2)))
                                                          (assert x7909)))
                                                       (g7907
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7910
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7910))))
                                                g7907)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7911
                                                        (letrec ((x7912
                                                                  (letrec ((x7913
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7913))))
                                                          (cdr x7912))))
                                                g7911)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7914
                                                        (letrec ((x7915
                                                                  (letrec ((x7916
                                                                            (letrec ((x7917
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7917))))
                                                                    (car
                                                                     x7916))))
                                                          (cdr x7915))))
                                                g7914)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7918
                                                        (letrec ((x7919
                                                                  (letrec ((x7920
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7920))))
                                                          (car x7919))))
                                                g7918)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7922
                                                                  (letrec ((x7923
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7923))))
                                                          (car x7922))))
                                                g7921)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7924
                                                        (letrec ((x7927
                                                                  (char? c1)))
                                                          (assert x7927)))
                                                       (g7925
                                                        (letrec ((x7928
                                                                  (char? c2)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x7929
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7929))))
                                                g7926)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7930
                                                        (letrec ((x7931
                                                                  (letrec ((x7932
                                                                            (letrec ((x7933
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7933))))
                                                                    (car
                                                                     x7932))))
                                                          (car x7931))))
                                                g7930)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7934
                                                        (letrec ((x7936
                                                                  (number? x)))
                                                          (assert x7936)))
                                                       (g7935 (< x 0)))
                                                g7935)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7937 (memq e l)))
                                                g7937)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7938
                                                        (letrec ((x7939
                                                                  (letrec ((x7940
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7940))))
                                                          (car x7939))))
                                                g7938)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7941 '())) g7941)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7942
                                                        (letrec ((x7944
                                                                  (list? l)))
                                                          (assert x7944)))
                                                       (g7943
                                                        (letrec ((x-cnd7945
                                                                  (null? l)))
                                                          (if x-cnd7945
                                                            '()
                                                            (letrec ((x7948
                                                                      (letrec ((x7949
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7949)))
                                                                     (x7946
                                                                      (letrec ((x7947
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7947))))
                                                              (append
                                                               x7948
                                                               x7946))))))
                                                g7943)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7952
                                                                            (letrec ((x7953
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7953))))
                                                                    (car
                                                                     x7952))))
                                                          (car x7951))))
                                                g7950)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7954
                                                        (letrec ((x7955
                                                                  (letrec ((x7956
                                                                            (letrec ((x7957
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7957))))
                                                                    (cdr
                                                                     x7956))))
                                                          (cdr x7955))))
                                                g7954)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7958
                                                        (letrec ((x7960
                                                                  (number? x)))
                                                          (assert x7960)))
                                                       (g7959
                                                        (letrec ((x7961
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7961))))
                                                g7959)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7962
                                                        (letrec ((x7963
                                                                  (letrec ((x7964
                                                                            (letrec ((x7965
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7965))))
                                                                    (car
                                                                     x7964))))
                                                          (car x7963))))
                                                g7962)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7966
                                                        (letrec ((x7969
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7969)))
                                                       (g7967
                                                        (letrec ((x7970
                                                                  (list?
                                                                   args)))
                                                          (assert x7970)))
                                                       (g7968
                                                        (letrec ((x-cnd7971
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7971
                                                            (letrec ((g7972
                                                                      (proc)))
                                                              g7972)
                                                            (letrec ((x-cnd7973
                                                                      (letrec ((x7974
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7974))))
                                                              (if x-cnd7973
                                                                (letrec ((g7975
                                                                          (letrec ((x7976
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7976))))
                                                                  g7975)
                                                                (letrec ((x-cnd7977
                                                                          (letrec ((x7978
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7978))))
                                                                  (if x-cnd7977
                                                                    (letrec ((g7979
                                                                              (letrec ((x7981
                                                                                        (car
                                                                                         args))
                                                                                       (x7980
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7981
                                                                                 x7980))))
                                                                      g7979)
                                                                    (letrec ((x-cnd7982
                                                                              (letrec ((x7983
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7983))))
                                                                      (if x-cnd7982
                                                                        (letrec ((g7984
                                                                                  (letrec ((x7987
                                                                                            (car
                                                                                             args))
                                                                                           (x7986
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7985
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7987
                                                                                     x7986
                                                                                     x7985))))
                                                                          g7984)
                                                                        (letrec ((x-cnd7988
                                                                                  (letrec ((x7989
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7989))))
                                                                          (if x-cnd7988
                                                                            (letrec ((g7990
                                                                                      (letrec ((x7994
                                                                                                (car
                                                                                                 args))
                                                                                               (x7993
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7992
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7991
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7994
                                                                                         x7993
                                                                                         x7992
                                                                                         x7991))))
                                                                              g7990)
                                                                            (letrec ((x-cnd7995
                                                                                      (letrec ((x7996
                                                                                                (letrec ((x7997
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7997))))
                                                                                        (null?
                                                                                         x7996))))
                                                                              (if x-cnd7995
                                                                                (letrec ((g7998
                                                                                          (letrec ((x8004
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8003
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8002
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8001
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7999
                                                                                                    (letrec ((x8000
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8000))))
                                                                                            (proc
                                                                                             x8004
                                                                                             x8003
                                                                                             x8002
                                                                                             x8001
                                                                                             x7999))))
                                                                                  g7998)
                                                                                (letrec ((x-cnd8005
                                                                                          (letrec ((x8006
                                                                                                    (letrec ((x8007
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8007))))
                                                                                            (null?
                                                                                             x8006))))
                                                                                  (if x-cnd8005
                                                                                    (letrec ((g8008
                                                                                              (letrec ((x8016
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8015
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8014
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8013
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8011
                                                                                                        (letrec ((x8012
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8012)))
                                                                                                       (x8009
                                                                                                        (letrec ((x8010
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8010))))
                                                                                                (proc
                                                                                                 x8016
                                                                                                 x8015
                                                                                                 x8014
                                                                                                 x8013
                                                                                                 x8011
                                                                                                 x8009))))
                                                                                      g8008)
                                                                                    (letrec ((x-cnd8017
                                                                                              (letrec ((x8018
                                                                                                        (letrec ((x8019
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8019))))
                                                                                                (null?
                                                                                                 x8018))))
                                                                                      (if x-cnd8017
                                                                                        (letrec ((g8020
                                                                                                  (letrec ((x8030
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8029
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8028
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8027
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8025
                                                                                                            (letrec ((x8026
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8026)))
                                                                                                           (x8023
                                                                                                            (letrec ((x8024
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8024)))
                                                                                                           (x8021
                                                                                                            (letrec ((x8022
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8022))))
                                                                                                    (proc
                                                                                                     x8030
                                                                                                     x8029
                                                                                                     x8028
                                                                                                     x8027
                                                                                                     x8025
                                                                                                     x8023
                                                                                                     x8021))))
                                                                                          g8020)
                                                                                        (letrec ((g8031
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8031)))))))))))))))))))
                                                g7968)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8032
                                                        (letrec ((x8034
                                                                  (list? l)))
                                                          (assert x8034)))
                                                       (g8033
                                                        (letrec ((x-cnd8035
                                                                  (null? l)))
                                                          (if x-cnd8035
                                                            #f
                                                            (letrec ((x-cnd8036
                                                                      (letrec ((x8037
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8037
                                                                         e))))
                                                              (if x-cnd8036
                                                                l
                                                                (letrec ((x8038
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8038))))))))
                                                g8033)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8039
                                                        (letrec ((x8040
                                                                  (letrec ((x8041
                                                                            (letrec ((x8042
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8042))))
                                                                    (cdr
                                                                     x8041))))
                                                          (cdr x8040))))
                                                g8039)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8043
                                                        (letrec ((x8044
                                                                  (letrec ((x8045
                                                                            (letrec ((x8046
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8046))))
                                                                    (cdr
                                                                     x8045))))
                                                          (car x8044))))
                                                g8043)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8047 (random 42)))
                                                g8047)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8048
                                                        (letrec ((x8050
                                                                  (number? x)))
                                                          (assert x8050)))
                                                       (g8049 (= x 0)))
                                                g8049)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8051
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8052
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8052))))
                                                g8051)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8053
                                                        (letrec ((x8054
                                                                  (cdr x)))
                                                          (car x8054))))
                                                g8053)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8055
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8056
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8056
                                                                      (letrec ((x8057
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8057))
                                                                      #f))))
                                                          (letrec ((g8058
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8058))))
                                                g8055)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8059
                                                        (letrec ((x8060
                                                                  (letrec ((x8061
                                                                            (letrec ((x8062
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8062))))
                                                                    (cdr
                                                                     x8061))))
                                                          (cdr x8060))))
                                                g8059)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8063
                                                        (letrec ((x-cnd8064
                                                                  (letrec ((x8065
                                                                            #\0))
                                                                    (char<=?
                                                                     x8065
                                                                     c))))
                                                          (if x-cnd8064
                                                            (letrec ((x8066
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8066))
                                                            #f))))
                                                g8063)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8067
                                                        (letrec ((x8069
                                                                  (list? l)))
                                                          (assert x8069)))
                                                       (g8068
                                                        (letrec ((x-cnd8070
                                                                  (null? l)))
                                                          (if x-cnd8070
                                                            #f
                                                            (letrec ((x-cnd8071
                                                                      (letrec ((x8072
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8072
                                                                         k))))
                                                              (if x-cnd8071
                                                                (car l)
                                                                (letrec ((x8073
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8073))))))))
                                                g8068)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8074 (if x #f #t)))
                                                g8074)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8075 (append l1 l2)))
                                                g8075)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8076
                                                        (letrec ((x8078
                                                                  (list? l)))
                                                          (assert x8078)))
                                                       (g8077
                                                        (letrec ((x-cnd8079
                                                                  (null? l)))
                                                          (if x-cnd8079
                                                            #f
                                                            (letrec ((x-cnd8080
                                                                      (letrec ((x8081
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8081
                                                                         e))))
                                                              (if x-cnd8080
                                                                l
                                                                (letrec ((x8082
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8082))))))))
                                                g8077)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8083
                                                        (letrec ((x8084
                                                                  (letrec ((x8085
                                                                            (letrec ((x8086
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8086))))
                                                                    (cdr
                                                                     x8085))))
                                                          (car x8084))))
                                                g8083)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8087
                                                        (letrec ((x8089
                                                                  (list? l)))
                                                          (assert x8089)))
                                                       (g8088
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8090
                                                                              (letrec ((x-cnd8091
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8091
                                                                                  0
                                                                                  (letrec ((x8092
                                                                                            (letrec ((x8093
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8093))))
                                                                                    (+
                                                                                     1
                                                                                     x8092))))))
                                                                      g8090))))
                                                          (letrec ((g8094
                                                                    (rec l)))
                                                            g8094))))
                                                g8088)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8095
                                                        (letrec ((x8098
                                                                  (char? c1)))
                                                          (assert x8098)))
                                                       (g8096
                                                        (letrec ((x8099
                                                                  (char? c2)))
                                                          (assert x8099)))
                                                       (g8097
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8100
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8100))))
                                                g8097)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8101
                                                        (letrec ((x8102
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8102))))
                                                g8101)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (letrec ((x8105
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8105))))
                                                          (cdr x8104))))
                                                g8103)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8106
                                                        (letrec ((x8108
                                                                  (list? l)))
                                                          (assert x8108)))
                                                       (g8107
                                                        (letrec ((x-cnd8109
                                                                  (null? l)))
                                                          (if x-cnd8109
                                                            #f
                                                            (letrec ((x-cnd8110
                                                                      (letrec ((x8111
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8111
                                                                         k))))
                                                              (if x-cnd8110
                                                                (car l)
                                                                (letrec ((x8112
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8112))))))))
                                                g8107)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8113
                                                        (letrec ((x8114
                                                                  (car x)))
                                                          (car x8114))))
                                                g8113)))
                                           (char>?
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
                                                        (letrec ((x8120
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8120))))
                                                g8117)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8121
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8122
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8122))))
                                                g8121)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8123
                                                        (letrec ((x8126
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8126)))
                                                       (g8124
                                                        (letrec ((x8127
                                                                  (list? l)))
                                                          (assert x8127)))
                                                       (g8125
                                                        (letrec ((x-cnd8128
                                                                  (null? l)))
                                                          (if x-cnd8128
                                                            #t
                                                            (letrec ((x-cnd8129
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8129
                                                                (letrec ((g8130
                                                                          (letrec ((x8132
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8132)))
                                                                         (g8131
                                                                          (letrec ((x8133
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8133))))
                                                                  g8131)
                                                                '()))))))
                                                g8125)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8134
                                                        (letrec ((x8136
                                                                  (number? x)))
                                                          (assert x8136)))
                                                       (g8135
                                                        (letrec ((x-cnd8137
                                                                  (< x 0)))
                                                          (if x-cnd8137
                                                            (- 0 x)
                                                            x))))
                                                g8135)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8138
                                                        (letrec ((x8141
                                                                  (char? c1)))
                                                          (assert x8141)))
                                                       (g8139
                                                        (letrec ((x8142
                                                                  (char? c2)))
                                                          (assert x8142)))
                                                       (g8140
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8143
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8143))))
                                                g8140)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8144
                                                        (letrec ((x8145
                                                                  (letrec ((x8146
                                                                            (letrec ((x8147
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8147))))
                                                                    (cdr
                                                                     x8146))))
                                                          (car x8145))))
                                                g8144)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8148 #f)) g8148)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8149
                                                        (letrec ((x8151
                                                                  (letrec ((x8152
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8152)))
                                                                 (x8150
                                                                  (gcd m n)))
                                                          (/ x8151 x8150))))
                                                g8149)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8153
                                                        (letrec ((x8155
                                                                  (number? x)))
                                                          (assert x8155)))
                                                       (g8154
                                                        (letrec ((x8156
                                                                  (<= x y)))
                                                          (not x8156))))
                                                g8154)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8157
                                                        (letrec ((x8161
                                                                  (list? l)))
                                                          (assert x8161)))
                                                       (g8158
                                                        (letrec ((x8162
                                                                  (number?
                                                                   index)))
                                                          (assert x8162)))
                                                       (g8159
                                                        (letrec ((x8163
                                                                  (letrec ((x8164
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8164))))
                                                          (assert x8163)))
                                                       (g8160
                                                        (letrec ((x-cnd8165
                                                                  (= index 0)))
                                                          (if x-cnd8165
                                                            (car l)
                                                            (letrec ((x8167
                                                                      (cdr l))
                                                                     (x8166
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8167
                                                               x8166))))))
                                                g8160)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8168
                                                        (letrec ((x-cnd8169
                                                                  (= b 0)))
                                                          (if x-cnd8169
                                                            a
                                                            (letrec ((x8170
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8170))))))
                                                g8168)))
                                           (mult
                                            (lambda (n m)
                                              (letrec ((g8171
                                                        (letrec ((x-cnd8172
                                                                  (letrec ((val7533
                                                                            (<=
                                                                             n
                                                                             0)))
                                                                    (letrec ((g8173
                                                                              (if val7533
                                                                                val7533
                                                                                (<=
                                                                                 m
                                                                                 0))))
                                                                      g8173))))
                                                          (if x-cnd8172
                                                            0
                                                            (letrec ((x8174
                                                                      (letrec ((x8175
                                                                                (-
                                                                                 m
                                                                                 1)))
                                                                        (mult
                                                                         n
                                                                         x8175))))
                                                              (+ n x8174))))))
                                                g8171)))
                                           (sqr
                                            (lambda (n)
                                              (letrec ((g8176 (mult n n)))
                                                g8176))))
                                    (letrec ((g8177
                                              (parallel
                                               (parallel
                                                (letrec ((x8180
                                                          (letrec ((xj7624
                                                                    (loc
                                                                     'module))
                                                                   (xk7625
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8181
                                                                      ((lambda (j7628
                                                                                k7629
                                                                                f7630)
                                                                         (letrec ((g8182
                                                                                   (lambda (g7626
                                                                                            g7627)
                                                                                     (letrec ((g8183
                                                                                               (letrec ((x8187
                                                                                                         (letrec ((x8188
                                                                                                                   (>=/c
                                                                                                                    0)))
                                                                                                           (and/c
                                                                                                            integer?/c
                                                                                                            x8188)))
                                                                                                        (x8184
                                                                                                         (letrec ((x8186
                                                                                                                   (integer?/c
                                                                                                                    j7628
                                                                                                                    k7629
                                                                                                                    g7626))
                                                                                                                  (x8185
                                                                                                                   (integer?/c
                                                                                                                    j7628
                                                                                                                    k7629
                                                                                                                    g7627)))
                                                                                                           (f7630
                                                                                                            x8186
                                                                                                            x8185))))
                                                                                                 (x8187
                                                                                                  j7628
                                                                                                  k7629
                                                                                                  x8184))))
                                                                                       g8183))))
                                                                           g8182))
                                                                       xj7624
                                                                       xk7625
                                                                       mult)))
                                                              g8181)))
                                                         (x8179 (input))
                                                         (x8178 (input)))
                                                  (x8180 x8179 x8178))
                                                (letrec ((xj7631 (loc 'module))
                                                         (xk7632
                                                          (loc 'importer)))
                                                  (letrec ((g8189
                                                            ((lambda (j7634
                                                                      k7635
                                                                      f7636)
                                                               (letrec ((g8190
                                                                         (lambda (g7633)
                                                                           (letrec ((g8191
                                                                                     (letrec ((x7637
                                                                                               (integer?/c
                                                                                                j7634
                                                                                                k7635
                                                                                                g7633)))
                                                                                       (letrec ((g8192
                                                                                                 (letrec ((x8194
                                                                                                           ((lambda (n)
                                                                                                              (letrec ((g8195
                                                                                                                        (letrec ((x8196
                                                                                                                                  (>=/c
                                                                                                                                   n)))
                                                                                                                          (and/c
                                                                                                                           integer?/c
                                                                                                                           x8196))))
                                                                                                                g8195))
                                                                                                            x7637))
                                                                                                          (x8193
                                                                                                           (f7636
                                                                                                            x7637)))
                                                                                                   (x8194
                                                                                                    j7634
                                                                                                    k7635
                                                                                                    x8193))))
                                                                                         g8192))))
                                                                             g8191))))
                                                                 g8190))
                                                             xj7631
                                                             xk7632
                                                             sqr)))
                                                    g8189))))))
                                      g8177))))
                          g7651))))
              g7649)))
    g7648))
