(letrec ((any? (lambda (v) (letrec ((g7636 #t)) g7636)))
         (meta (lambda (v) (letrec ((g7637 v)) g7637)))
         (member
          (lambda (v lst)
            (letrec ((g7638
                      (letrec ((g7639
                                (letrec ((x-e7640 lst))
                                  (match
                                   x-e7640
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7641 (eq? v v1)))
                                       (if x-cnd7641 #t (member v vs)))))))))
                        g7639)))
              g7638)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7642 (lambda (v) (letrec ((g7643 v)) g7643)))) g7642)))
         (nonzero?
          (lambda (v)
            (letrec ((g7644 (letrec ((x7645 (= v 0))) (not x7645)))) g7644))))
  (letrec ((g7646
            (letrec ((g7647
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7648 '())
                                 (g7649
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7650
                                                        (lambda (k j lst)
                                                          (letrec ((g7651
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7652
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7652))
                                                                     lst)))
                                                            g7651))))
                                                g7650)))
                                           (real?/c
                                            (lambda (g7533 g7534 g7535)
                                              (letrec ((g7653
                                                        (letrec ((x-cnd7654
                                                                  (real?
                                                                   g7535)))
                                                          (if x-cnd7654
                                                            g7535
                                                            (blame
                                                             g7533
                                                             'real?)))))
                                                g7653)))
                                           (boolean?/c
                                            (lambda (g7536 g7537 g7538)
                                              (letrec ((g7655
                                                        (letrec ((x-cnd7656
                                                                  (boolean?
                                                                   g7538)))
                                                          (if x-cnd7656
                                                            g7538
                                                            (blame
                                                             g7536
                                                             'boolean?)))))
                                                g7655)))
                                           (number?/c
                                            (lambda (g7539 g7540 g7541)
                                              (letrec ((g7657
                                                        (letrec ((x-cnd7658
                                                                  (number?
                                                                   g7541)))
                                                          (if x-cnd7658
                                                            g7541
                                                            (blame
                                                             g7539
                                                             'number?)))))
                                                g7657)))
                                           (any/c
                                            (lambda (g7542 g7543 g7544)
                                              (letrec ((g7659
                                                        (letrec ((x-cnd7660
                                                                  ((lambda (v)
                                                                     (letrec ((g7661
                                                                               #t))
                                                                       g7661))
                                                                   g7544)))
                                                          (if x-cnd7660
                                                            g7544
                                                            (blame
                                                             g7542
                                                             '(lambda (v)
                                                                #t))))))
                                                g7659)))
                                           (any?/c
                                            (lambda (g7545 g7546 g7547)
                                              (letrec ((g7662
                                                        (letrec ((x-cnd7663
                                                                  ((lambda (v)
                                                                     (letrec ((g7664
                                                                               #t))
                                                                       g7664))
                                                                   g7547)))
                                                          (if x-cnd7663
                                                            g7547
                                                            (blame
                                                             g7545
                                                             '(lambda (v)
                                                                #t))))))
                                                g7662)))
                                           (cons?/c
                                            (lambda (g7548 g7549 g7550)
                                              (letrec ((g7665
                                                        (letrec ((x-cnd7666
                                                                  (pair?
                                                                   g7550)))
                                                          (if x-cnd7666
                                                            g7550
                                                            (blame
                                                             g7548
                                                             'pair?)))))
                                                g7665)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7551 g7552 g7553)
                                              (letrec ((g7667
                                                        (letrec ((x-cnd7668
                                                                  (pair?
                                                                   g7553)))
                                                          (if x-cnd7668
                                                            g7553
                                                            (blame
                                                             g7551
                                                             'pair?)))))
                                                g7667)))
                                           (integer?/c
                                            (lambda (g7554 g7555 g7556)
                                              (letrec ((g7669
                                                        (letrec ((x-cnd7670
                                                                  (integer?
                                                                   g7556)))
                                                          (if x-cnd7670
                                                            g7556
                                                            (blame
                                                             g7554
                                                             'integer?)))))
                                                g7669)))
                                           (symbol?/c
                                            (lambda (g7557 g7558 g7559)
                                              (letrec ((g7671
                                                        (letrec ((x-cnd7672
                                                                  (symbol?
                                                                   g7559)))
                                                          (if x-cnd7672
                                                            g7559
                                                            (blame
                                                             g7557
                                                             'symbol?)))))
                                                g7671)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7673
                                                        (lambda (k j v)
                                                          (letrec ((g7674
                                                                    (letrec ((x-cnd7675
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7675
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7674))))
                                                g7673)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7676
                                                        (lambda (k j v)
                                                          (letrec ((g7677
                                                                    (letrec ((x-cnd7678
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7678
                                                                        '()
                                                                        (letrec ((x7682
                                                                                  (letrec ((x7683
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7683)))
                                                                                 (x7679
                                                                                  (letrec ((x7681
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7680
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7681
                                                                                     k
                                                                                     j
                                                                                     x7680))))
                                                                          (orig-cons
                                                                           x7682
                                                                           x7679))))))
                                                            g7677))))
                                                g7676)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7684 #t)) g7684)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7685
                                                        (letrec ((x7686
                                                                  (= v 0)))
                                                          (not x7686))))
                                                g7685)))
                                           (nonzero?/c
                                            (lambda (g7560 g7561 g7562)
                                              (letrec ((g7687
                                                        (letrec ((x-cnd7688
                                                                  ((lambda (v)
                                                                     (letrec ((g7689
                                                                               (letrec ((x7690
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7690))))
                                                                       g7689))
                                                                   g7562)))
                                                          (if x-cnd7688
                                                            g7562
                                                            (blame
                                                             g7560
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7687)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7691 v)) g7691)))
                                           (+
                                            (letrec ((xj7563 'server)
                                                     (xk7564 'client))
                                              (letrec ((g7692
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g7694
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g7695
                                                                                 (letrec ((x7696
                                                                                           (letrec ((x7698
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x7697
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x7698
                                                                                              x7697))))
                                                                                   (number?/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x7696))))
                                                                         g7695))))
                                                             g7694))
                                                         xj7563
                                                         xk7564
                                                         (lambda (a b)
                                                           (letrec ((g7693
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7693)))))
                                                g7692)))
                                           (-
                                            (letrec ((xj7570 'server)
                                                     (xk7571 'client))
                                              (letrec ((g7699
                                                        ((lambda (j7574
                                                                  k7575
                                                                  f7576)
                                                           (letrec ((g7701
                                                                     (lambda (g7572
                                                                              g7573)
                                                                       (letrec ((g7702
                                                                                 (letrec ((x7703
                                                                                           (letrec ((x7705
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7572))
                                                                                                    (x7704
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7573)))
                                                                                             (f7576
                                                                                              x7705
                                                                                              x7704))))
                                                                                   (number?/c
                                                                                    j7574
                                                                                    k7575
                                                                                    x7703))))
                                                                         g7702))))
                                                             g7701))
                                                         xj7570
                                                         xk7571
                                                         (lambda (a b)
                                                           (letrec ((g7700
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7700)))))
                                                g7699)))
                                           (*
                                            (letrec ((xj7577 'server)
                                                     (xk7578 'client))
                                              (letrec ((g7706
                                                        ((lambda (j7581
                                                                  k7582
                                                                  f7583)
                                                           (letrec ((g7708
                                                                     (lambda (g7579
                                                                              g7580)
                                                                       (letrec ((g7709
                                                                                 (letrec ((x7710
                                                                                           (letrec ((x7712
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7579))
                                                                                                    (x7711
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7580)))
                                                                                             (f7583
                                                                                              x7712
                                                                                              x7711))))
                                                                                   (number?/c
                                                                                    j7581
                                                                                    k7582
                                                                                    x7710))))
                                                                         g7709))))
                                                             g7708))
                                                         xj7577
                                                         xk7578
                                                         (lambda (a b)
                                                           (letrec ((g7707
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7707)))))
                                                g7706)))
                                           (/
                                            (letrec ((xj7584 'server)
                                                     (xk7585 'client))
                                              (letrec ((g7713
                                                        ((lambda (j7588
                                                                  k7589
                                                                  f7590)
                                                           (letrec ((g7715
                                                                     (lambda (g7586
                                                                              g7587)
                                                                       (letrec ((g7716
                                                                                 (letrec ((x7717
                                                                                           (letrec ((x7719
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7586))
                                                                                                    (x7718
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7587)))
                                                                                             (f7590
                                                                                              x7719
                                                                                              x7718))))
                                                                                   (number?/c
                                                                                    j7588
                                                                                    k7589
                                                                                    x7717))))
                                                                         g7716))))
                                                             g7715))
                                                         xj7584
                                                         xk7585
                                                         (lambda (a b)
                                                           (letrec ((g7714
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7714)))))
                                                g7713)))
                                           (car
                                            (letrec ((xj7591 'server)
                                                     (xk7592 'client))
                                              (letrec ((g7720
                                                        ((lambda (j7594
                                                                  k7595
                                                                  f7596)
                                                           (letrec ((g7722
                                                                     (lambda (g7593)
                                                                       (letrec ((g7723
                                                                                 (letrec ((x7724
                                                                                           (letrec ((x7725
                                                                                                     (pair?/c
                                                                                                      j7594
                                                                                                      k7595
                                                                                                      g7593)))
                                                                                             (f7596
                                                                                              x7725))))
                                                                                   (any/c
                                                                                    j7594
                                                                                    k7595
                                                                                    x7724))))
                                                                         g7723))))
                                                             g7722))
                                                         xj7591
                                                         xk7592
                                                         (lambda (p)
                                                           (letrec ((g7721
                                                                     (orig-car
                                                                      p)))
                                                             g7721)))))
                                                g7720)))
                                           (cdr
                                            (letrec ((xj7597 'server)
                                                     (xk7598 'client))
                                              (letrec ((g7726
                                                        ((lambda (j7600
                                                                  k7601
                                                                  f7602)
                                                           (letrec ((g7728
                                                                     (lambda (g7599)
                                                                       (letrec ((g7729
                                                                                 (letrec ((x7730
                                                                                           (letrec ((x7731
                                                                                                     (pair?/c
                                                                                                      j7600
                                                                                                      k7601
                                                                                                      g7599)))
                                                                                             (f7602
                                                                                              x7731))))
                                                                                   (any/c
                                                                                    j7600
                                                                                    k7601
                                                                                    x7730))))
                                                                         g7729))))
                                                             g7728))
                                                         xj7597
                                                         xk7598
                                                         (lambda (p)
                                                           (letrec ((g7727
                                                                     (orig-cdr
                                                                      p)))
                                                             g7727)))))
                                                g7726)))
                                           (cons
                                            (letrec ((xj7603 'server)
                                                     (xk7604 'client))
                                              (letrec ((g7732
                                                        ((lambda (j7607
                                                                  k7608
                                                                  f7609)
                                                           (letrec ((g7734
                                                                     (lambda (g7605
                                                                              g7606)
                                                                       (letrec ((g7735
                                                                                 (letrec ((x7736
                                                                                           (letrec ((x7738
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7605))
                                                                                                    (x7737
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7606)))
                                                                                             (f7609
                                                                                              x7738
                                                                                              x7737))))
                                                                                   (pair?/c
                                                                                    j7607
                                                                                    k7608
                                                                                    x7736))))
                                                                         g7735))))
                                                             g7734))
                                                         xj7603
                                                         xk7604
                                                         (lambda (a b)
                                                           (letrec ((g7733
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7733)))))
                                                g7732)))
                                           (vector-ref
                                            (letrec ((xj7610 'server)
                                                     (xk7611 'client))
                                              (letrec ((g7739
                                                        ((lambda (j7613
                                                                  k7614
                                                                  f7615)
                                                           (letrec ((g7741
                                                                     (lambda (g7612)
                                                                       (letrec ((g7742
                                                                                 (letrec ((x7743
                                                                                           (letrec ((x7744
                                                                                                     (vector?/c
                                                                                                      j7613
                                                                                                      k7614
                                                                                                      g7612)))
                                                                                             (f7615
                                                                                              x7744))))
                                                                                   (integer?/c
                                                                                    j7613
                                                                                    k7614
                                                                                    x7743))))
                                                                         g7742))))
                                                             g7741))
                                                         xj7610
                                                         xk7611
                                                         (lambda (v i)
                                                           (letrec ((g7740
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7740)))))
                                                g7739)))
                                           (vector-set!
                                            (letrec ((xj7616 'server)
                                                     (xk7617 'client))
                                              (letrec ((g7745
                                                        ((lambda (j7620
                                                                  k7621
                                                                  f7622)
                                                           (letrec ((g7747
                                                                     (lambda (g7618
                                                                              g7619)
                                                                       (letrec ((g7748
                                                                                 (letrec ((x7749
                                                                                           (letrec ((x7751
                                                                                                     (vector?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7618))
                                                                                                    (x7750
                                                                                                     (integer?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7619)))
                                                                                             (f7622
                                                                                              x7751
                                                                                              x7750))))
                                                                                   (any/c
                                                                                    j7620
                                                                                    k7621
                                                                                    x7749))))
                                                                         g7748))))
                                                             g7747))
                                                         xj7616
                                                         xk7617
                                                         (lambda (vec i v)
                                                           (letrec ((g7746
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7746)))))
                                                g7745)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7752
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7752)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7753
                                                        (letrec ((x7754
                                                                  (letrec ((x7755
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7755))))
                                                          (cdr x7754))))
                                                g7753)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7756
                                                        (letrec ((x7759
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7759)))
                                                       (g7757
                                                        (letrec ((x7760
                                                                  (list? l)))
                                                          (assert x7760)))
                                                       (g7758
                                                        (letrec ((x-cnd7761
                                                                  (null? l)))
                                                          (if x-cnd7761
                                                            '()
                                                            (letrec ((x7764
                                                                      (letrec ((x7765
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7765)))
                                                                     (x7762
                                                                      (letrec ((x7763
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7763))))
                                                              (cons
                                                               x7764
                                                               x7762))))))
                                                g7758)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (car x)))
                                                          (cdr x7767))))
                                                g7766)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7768
                                                        (letrec ((x7769
                                                                  (letrec ((x7770
                                                                            (letrec ((x7771
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7771))))
                                                                    (cdr
                                                                     x7770))))
                                                          (car x7769))))
                                                g7768)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7772
                                                        (letrec ((x7773
                                                                  (letrec ((x7774
                                                                            (letrec ((x7775
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7775))))
                                                                    (car
                                                                     x7774))))
                                                          (cdr x7773))))
                                                g7772)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7776
                                                        (letrec ((x7779
                                                                  (string?
                                                                   filename)))
                                                          (assert x7779)))
                                                       (g7777
                                                        (letrec ((x7780
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7780)))
                                                       (g7778
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7781
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7782 res))
                                                            g7782))))
                                                g7778)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7785))))
                                                          (car x7784))))
                                                g7783)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7786
                                                        (letrec ((x7787
                                                                  (letrec ((x7788
                                                                            (letrec ((x7789
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7789))))
                                                                    (car
                                                                     x7788))))
                                                          (cdr x7787))))
                                                g7786)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7790
                                                        (letrec ((x7792
                                                                  (list? l)))
                                                          (assert x7792)))
                                                       (g7791
                                                        (letrec ((x-cnd7793
                                                                  (null? l)))
                                                          (if x-cnd7793
                                                            #f
                                                            (letrec ((x-cnd7794
                                                                      (letrec ((x7795
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7795
                                                                         k))))
                                                              (if x-cnd7794
                                                                (car l)
                                                                (letrec ((x7796
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7796))))))))
                                                g7791)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7798
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7798))))
                                                g7797)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7799
                                                        (letrec ((x7801
                                                                  (list? l)))
                                                          (assert x7801)))
                                                       (g7800
                                                        (letrec ((x-cnd7802
                                                                  (null? l)))
                                                          (if x-cnd7802
                                                            ""
                                                            (letrec ((x7805
                                                                      (letrec ((x7806
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7806)))
                                                                     (x7803
                                                                      (letrec ((x7804
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7804))))
                                                              (string-append
                                                               x7805
                                                               x7803))))))
                                                g7800)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7807
                                                        (letrec ((x7810
                                                                  (char? c1)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((x7811
                                                                  (char? c2)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7812
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7812))))
                                                g7809)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7813
                                                        (letrec ((x7814
                                                                  (letrec ((x7815
                                                                            (letrec ((x7816
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7816))))
                                                                    (cdr
                                                                     x7815))))
                                                          (cdr x7814))))
                                                g7813)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7817
                                                        (letrec ((x7820
                                                                  (list? l)))
                                                          (assert x7820)))
                                                       (g7818
                                                        (letrec ((x7821
                                                                  (number?)))
                                                          (assert x7821)))
                                                       (g7819
                                                        (letrec ((x-cnd7822
                                                                  (zero? k)))
                                                          (if x-cnd7822
                                                            x
                                                            (letrec ((x7824
                                                                      (cdr x))
                                                                     (x7823
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7824
                                                               x7823))))))
                                                g7819)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7825 '())) g7825)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7826
                                                        (letrec ((x-cnd7827
                                                                  (letrec ((x7828
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7828))))
                                                          (if x-cnd7827
                                                            (letrec ((x7829
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7829))
                                                            #f))))
                                                g7826)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7830
                                                        (letrec ((x7832
                                                                  (number? x)))
                                                          (assert x7832)))
                                                       (g7831
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g7833
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7834
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g7834)))))
                                                            g7833))))
                                                g7831)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7835
                                                        (letrec ((val7518
                                                                  (letrec ((x7836
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7836
                                                                     9))))
                                                          (letrec ((g7837
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x7838
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7838
                                                                                   10))))
                                                                        (letrec ((g7839
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x7840
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7840
                                                                                       32)))))
                                                                          g7839)))))
                                                            g7837))))
                                                g7835)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7841
                                                        (letrec ((x7842
                                                                  (letrec ((x7843
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7843))))
                                                          (cdr x7842))))
                                                g7841)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7846
                                                                  (number? x)))
                                                          (assert x7846)))
                                                       (g7845 (> x 0)))
                                                g7845)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7847 #f)) g7847)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7848
                                                        (letrec ((x7849
                                                                  (cdr x)))
                                                          (cdr x7849))))
                                                g7848)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7850
                                                        (letrec ((x7852
                                                                  (number? x)))
                                                          (assert x7852)))
                                                       (g7851
                                                        (letrec ((x-cnd7853
                                                                  (< x 0)))
                                                          (if x-cnd7853
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7851)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7854
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g7855
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd7856
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7856
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7857
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd7858
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7858
                                                                                                  (letrec ((x-cnd7859
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7859
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7860
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd7861
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7861
                                                                                                                (letrec ((x-cnd7862
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7862
                                                                                                                    (letrec ((x-cnd7863
                                                                                                                              (letrec ((x7865
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7864
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7865
                                                                                                                                 x7864))))
                                                                                                                      (if x-cnd7863
                                                                                                                        (letrec ((x7867
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7866
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7867
                                                                                                                           x7866))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7868
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd7869
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7869
                                                                                                                    (letrec ((x-cnd7870
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7870
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7871
                                                                                                                                    (letrec ((x-cnd7872
                                                                                                                                              (letrec ((x7873
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7873
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7872
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7874
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7875
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd7876
                                                                                                                                                                                      (letrec ((x7878
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7877
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7878
                                                                                                                                                                                         x7877))))
                                                                                                                                                                              (if x-cnd7876
                                                                                                                                                                                (letrec ((x7879
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7879))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7875))))
                                                                                                                                                      g7874))))
                                                                                                                                          (letrec ((g7880
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7880))
                                                                                                                                        #f))))
                                                                                                                            g7871))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7868)))))
                                                                                        g7860)))))
                                                                          g7857)))))
                                                            g7855))))
                                                g7854)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7881
                                                        (letrec ((x7882
                                                                  (letrec ((x7883
                                                                            (letrec ((x7884
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7884))))
                                                                    (car
                                                                     x7883))))
                                                          (cdr x7882))))
                                                g7881)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7885
                                                        (letrec ((x7886
                                                                  (letrec ((x7887
                                                                            (letrec ((x7888
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7888))))
                                                                    (car
                                                                     x7887))))
                                                          (car x7886))))
                                                g7885)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7889 (eq? x y)))
                                                g7889)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7890
                                                        (letrec ((x7892
                                                                  (number? x)))
                                                          (assert x7892)))
                                                       (g7891
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g7893
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7894
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g7894)))))
                                                            g7893))))
                                                g7891)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7895
                                                        (letrec ((x7898
                                                                  (string?
                                                                   filename)))
                                                          (assert x7898)))
                                                       (g7896
                                                        (letrec ((x7899
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7899)))
                                                       (g7897
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7900
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7901 res))
                                                            g7901))))
                                                g7897)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7902 (cons x '())))
                                                g7902)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7903
                                                        (letrec ((x7906
                                                                  (char? c1)))
                                                          (assert x7906)))
                                                       (g7904
                                                        (letrec ((x7907
                                                                  (char? c2)))
                                                          (assert x7907)))
                                                       (g7905
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7908
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7908))))
                                                g7905)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7911))))
                                                          (cdr x7910))))
                                                g7909)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7912
                                                        (letrec ((x7913
                                                                  (letrec ((x7914
                                                                            (letrec ((x7915
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7915))))
                                                                    (car
                                                                     x7914))))
                                                          (cdr x7913))))
                                                g7912)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7916
                                                        (letrec ((x7917
                                                                  (letrec ((x7918
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7918))))
                                                          (car x7917))))
                                                g7916)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7919
                                                        (letrec ((x7920
                                                                  (letrec ((x7921
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7921))))
                                                          (car x7920))))
                                                g7919)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7922
                                                        (letrec ((x7925
                                                                  (char? c1)))
                                                          (assert x7925)))
                                                       (g7923
                                                        (letrec ((x7926
                                                                  (char? c2)))
                                                          (assert x7926)))
                                                       (g7924
                                                        (letrec ((x7927
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7927))))
                                                g7924)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7928
                                                        (letrec ((x7929
                                                                  (letrec ((x7930
                                                                            (letrec ((x7931
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7931))))
                                                                    (car
                                                                     x7930))))
                                                          (car x7929))))
                                                g7928)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7932
                                                        (letrec ((x7934
                                                                  (number? x)))
                                                          (assert x7934)))
                                                       (g7933 (< x 0)))
                                                g7933)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7935 (memq e l)))
                                                g7935)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7936
                                                        (letrec ((x7937
                                                                  (letrec ((x7938
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7938))))
                                                          (car x7937))))
                                                g7936)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7939 '())) g7939)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7940
                                                        (letrec ((x7942
                                                                  (list? l)))
                                                          (assert x7942)))
                                                       (g7941
                                                        (letrec ((x-cnd7943
                                                                  (null? l)))
                                                          (if x-cnd7943
                                                            '()
                                                            (letrec ((x7946
                                                                      (letrec ((x7947
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7947)))
                                                                     (x7944
                                                                      (letrec ((x7945
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7945))))
                                                              (append
                                                               x7946
                                                               x7944))))))
                                                g7941)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7948
                                                        (letrec ((x7949
                                                                  (letrec ((x7950
                                                                            (letrec ((x7951
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7951))))
                                                                    (car
                                                                     x7950))))
                                                          (car x7949))))
                                                g7948)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7952
                                                        (letrec ((x7953
                                                                  (letrec ((x7954
                                                                            (letrec ((x7955
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7955))))
                                                                    (cdr
                                                                     x7954))))
                                                          (cdr x7953))))
                                                g7952)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7956
                                                        (letrec ((x7958
                                                                  (number? x)))
                                                          (assert x7958)))
                                                       (g7957
                                                        (letrec ((x7959
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7959))))
                                                g7957)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7960
                                                        (letrec ((x7961
                                                                  (letrec ((x7962
                                                                            (letrec ((x7963
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7963))))
                                                                    (car
                                                                     x7962))))
                                                          (car x7961))))
                                                g7960)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7964
                                                        (letrec ((x7967
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7967)))
                                                       (g7965
                                                        (letrec ((x7968
                                                                  (list?
                                                                   args)))
                                                          (assert x7968)))
                                                       (g7966
                                                        (letrec ((x-cnd7969
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7969
                                                            (letrec ((g7970
                                                                      (proc)))
                                                              g7970)
                                                            (letrec ((x-cnd7971
                                                                      (letrec ((x7972
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7972))))
                                                              (if x-cnd7971
                                                                (letrec ((g7973
                                                                          (letrec ((x7974
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7974))))
                                                                  g7973)
                                                                (letrec ((x-cnd7975
                                                                          (letrec ((x7976
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7976))))
                                                                  (if x-cnd7975
                                                                    (letrec ((g7977
                                                                              (letrec ((x7979
                                                                                        (car
                                                                                         args))
                                                                                       (x7978
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7979
                                                                                 x7978))))
                                                                      g7977)
                                                                    (letrec ((x-cnd7980
                                                                              (letrec ((x7981
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7981))))
                                                                      (if x-cnd7980
                                                                        (letrec ((g7982
                                                                                  (letrec ((x7985
                                                                                            (car
                                                                                             args))
                                                                                           (x7984
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7983
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7985
                                                                                     x7984
                                                                                     x7983))))
                                                                          g7982)
                                                                        (letrec ((x-cnd7986
                                                                                  (letrec ((x7987
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7987))))
                                                                          (if x-cnd7986
                                                                            (letrec ((g7988
                                                                                      (letrec ((x7992
                                                                                                (car
                                                                                                 args))
                                                                                               (x7991
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7990
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7989
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7992
                                                                                         x7991
                                                                                         x7990
                                                                                         x7989))))
                                                                              g7988)
                                                                            (letrec ((x-cnd7993
                                                                                      (letrec ((x7994
                                                                                                (letrec ((x7995
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7995))))
                                                                                        (null?
                                                                                         x7994))))
                                                                              (if x-cnd7993
                                                                                (letrec ((g7996
                                                                                          (letrec ((x8002
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8001
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8000
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7999
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7997
                                                                                                    (letrec ((x7998
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7998))))
                                                                                            (proc
                                                                                             x8002
                                                                                             x8001
                                                                                             x8000
                                                                                             x7999
                                                                                             x7997))))
                                                                                  g7996)
                                                                                (letrec ((x-cnd8003
                                                                                          (letrec ((x8004
                                                                                                    (letrec ((x8005
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8005))))
                                                                                            (null?
                                                                                             x8004))))
                                                                                  (if x-cnd8003
                                                                                    (letrec ((g8006
                                                                                              (letrec ((x8014
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8013
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8012
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8011
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8009
                                                                                                        (letrec ((x8010
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8010)))
                                                                                                       (x8007
                                                                                                        (letrec ((x8008
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8008))))
                                                                                                (proc
                                                                                                 x8014
                                                                                                 x8013
                                                                                                 x8012
                                                                                                 x8011
                                                                                                 x8009
                                                                                                 x8007))))
                                                                                      g8006)
                                                                                    (letrec ((x-cnd8015
                                                                                              (letrec ((x8016
                                                                                                        (letrec ((x8017
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8017))))
                                                                                                (null?
                                                                                                 x8016))))
                                                                                      (if x-cnd8015
                                                                                        (letrec ((g8018
                                                                                                  (letrec ((x8028
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8027
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8026
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8025
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8023
                                                                                                            (letrec ((x8024
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8024)))
                                                                                                           (x8021
                                                                                                            (letrec ((x8022
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8022)))
                                                                                                           (x8019
                                                                                                            (letrec ((x8020
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8020))))
                                                                                                    (proc
                                                                                                     x8028
                                                                                                     x8027
                                                                                                     x8026
                                                                                                     x8025
                                                                                                     x8023
                                                                                                     x8021
                                                                                                     x8019))))
                                                                                          g8018)
                                                                                        (letrec ((g8029
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8029)))))))))))))))))))
                                                g7966)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8030
                                                        (letrec ((x8032
                                                                  (list? l)))
                                                          (assert x8032)))
                                                       (g8031
                                                        (letrec ((x-cnd8033
                                                                  (null? l)))
                                                          (if x-cnd8033
                                                            #f
                                                            (letrec ((x-cnd8034
                                                                      (letrec ((x8035
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8035
                                                                         e))))
                                                              (if x-cnd8034
                                                                l
                                                                (letrec ((x8036
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8036))))))))
                                                g8031)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8037
                                                        (letrec ((x8038
                                                                  (letrec ((x8039
                                                                            (letrec ((x8040
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8040))))
                                                                    (cdr
                                                                     x8039))))
                                                          (cdr x8038))))
                                                g8037)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8041
                                                        (letrec ((x8042
                                                                  (letrec ((x8043
                                                                            (letrec ((x8044
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8044))))
                                                                    (cdr
                                                                     x8043))))
                                                          (car x8042))))
                                                g8041)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8045 (random 42)))
                                                g8045)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8046
                                                        (letrec ((x8048
                                                                  (number? x)))
                                                          (assert x8048)))
                                                       (g8047 (= x 0)))
                                                g8047)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8049
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8050
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8050))))
                                                g8049)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8051
                                                        (letrec ((x8052
                                                                  (cdr x)))
                                                          (car x8052))))
                                                g8051)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8053
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8054
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8054
                                                                      (letrec ((x8055
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8055))
                                                                      #f))))
                                                          (letrec ((g8056
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8056))))
                                                g8053)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8057
                                                        (letrec ((x8058
                                                                  (letrec ((x8059
                                                                            (letrec ((x8060
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8060))))
                                                                    (cdr
                                                                     x8059))))
                                                          (cdr x8058))))
                                                g8057)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8061
                                                        (letrec ((x-cnd8062
                                                                  (letrec ((x8063
                                                                            #\0))
                                                                    (char<=?
                                                                     x8063
                                                                     c))))
                                                          (if x-cnd8062
                                                            (letrec ((x8064
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8064))
                                                            #f))))
                                                g8061)))
                                           (__toplevel_cons cons)
                                           (assv
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
                                                                        (eqv?
                                                                         x8070
                                                                         k))))
                                                              (if x-cnd8069
                                                                (car l)
                                                                (letrec ((x8071
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8071))))))))
                                                g8066)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8072 (if x #f #t)))
                                                g8072)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8073 (append l1 l2)))
                                                g8073)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8074
                                                        (letrec ((x8076
                                                                  (list? l)))
                                                          (assert x8076)))
                                                       (g8075
                                                        (letrec ((x-cnd8077
                                                                  (null? l)))
                                                          (if x-cnd8077
                                                            #f
                                                            (letrec ((x-cnd8078
                                                                      (letrec ((x8079
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8079
                                                                         e))))
                                                              (if x-cnd8078
                                                                l
                                                                (letrec ((x8080
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8080))))))))
                                                g8075)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8081
                                                        (letrec ((x8082
                                                                  (letrec ((x8083
                                                                            (letrec ((x8084
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8084))))
                                                                    (cdr
                                                                     x8083))))
                                                          (car x8082))))
                                                g8081)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8085
                                                        (letrec ((x8087
                                                                  (list? l)))
                                                          (assert x8087)))
                                                       (g8086
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8088
                                                                              (letrec ((x-cnd8089
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8089
                                                                                  0
                                                                                  (letrec ((x8090
                                                                                            (letrec ((x8091
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8091))))
                                                                                    (+
                                                                                     1
                                                                                     x8090))))))
                                                                      g8088))))
                                                          (letrec ((g8092
                                                                    (rec l)))
                                                            g8092))))
                                                g8086)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8093
                                                        (letrec ((x8096
                                                                  (char? c1)))
                                                          (assert x8096)))
                                                       (g8094
                                                        (letrec ((x8097
                                                                  (char? c2)))
                                                          (assert x8097)))
                                                       (g8095
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8098
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8098))))
                                                g8095)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8099
                                                        (letrec ((x8100
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8100))))
                                                g8099)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8101
                                                        (letrec ((x8102
                                                                  (letrec ((x8103
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8103))))
                                                          (cdr x8102))))
                                                g8101)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8104
                                                        (letrec ((x8106
                                                                  (list? l)))
                                                          (assert x8106)))
                                                       (g8105
                                                        (letrec ((x-cnd8107
                                                                  (null? l)))
                                                          (if x-cnd8107
                                                            #f
                                                            (letrec ((x-cnd8108
                                                                      (letrec ((x8109
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8109
                                                                         k))))
                                                              (if x-cnd8108
                                                                (car l)
                                                                (letrec ((x8110
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8110))))))))
                                                g8105)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8111
                                                        (letrec ((x8112
                                                                  (car x)))
                                                          (car x8112))))
                                                g8111)))
                                           (char>?
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
                                                        (letrec ((x8118
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8118))))
                                                g8115)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8119
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8120
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8120))))
                                                g8119)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8121
                                                        (letrec ((x8124
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8124)))
                                                       (g8122
                                                        (letrec ((x8125
                                                                  (list? l)))
                                                          (assert x8125)))
                                                       (g8123
                                                        (letrec ((x-cnd8126
                                                                  (null? l)))
                                                          (if x-cnd8126
                                                            #t
                                                            (letrec ((x-cnd8127
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8127
                                                                (letrec ((g8128
                                                                          (letrec ((x8130
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8130)))
                                                                         (g8129
                                                                          (letrec ((x8131
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8131))))
                                                                  g8129)
                                                                '()))))))
                                                g8123)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8132
                                                        (letrec ((x8134
                                                                  (number? x)))
                                                          (assert x8134)))
                                                       (g8133
                                                        (letrec ((x-cnd8135
                                                                  (< x 0)))
                                                          (if x-cnd8135
                                                            (- 0 x)
                                                            x))))
                                                g8133)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8136
                                                        (letrec ((x8139
                                                                  (char? c1)))
                                                          (assert x8139)))
                                                       (g8137
                                                        (letrec ((x8140
                                                                  (char? c2)))
                                                          (assert x8140)))
                                                       (g8138
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8141
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8141))))
                                                g8138)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (letrec ((x8145
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8145))))
                                                                    (cdr
                                                                     x8144))))
                                                          (car x8143))))
                                                g8142)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8146 #f)) g8146)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8147
                                                        (letrec ((x8149
                                                                  (letrec ((x8150
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8150)))
                                                                 (x8148
                                                                  (gcd m n)))
                                                          (/ x8149 x8148))))
                                                g8147)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8151
                                                        (letrec ((x8153
                                                                  (number? x)))
                                                          (assert x8153)))
                                                       (g8152
                                                        (letrec ((x8154
                                                                  (<= x y)))
                                                          (not x8154))))
                                                g8152)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8155
                                                        (letrec ((x8159
                                                                  (list? l)))
                                                          (assert x8159)))
                                                       (g8156
                                                        (letrec ((x8160
                                                                  (number?
                                                                   index)))
                                                          (assert x8160)))
                                                       (g8157
                                                        (letrec ((x8161
                                                                  (letrec ((x8162
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8162))))
                                                          (assert x8161)))
                                                       (g8158
                                                        (letrec ((x-cnd8163
                                                                  (= index 0)))
                                                          (if x-cnd8163
                                                            (car l)
                                                            (letrec ((x8165
                                                                      (cdr l))
                                                                     (x8164
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8165
                                                               x8164))))))
                                                g8158)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8166
                                                        (letrec ((x-cnd8167
                                                                  (= b 0)))
                                                          (if x-cnd8167
                                                            a
                                                            (letrec ((x8168
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8168))))))
                                                g8166)))
                                           (STATE/C
                                            (lambda (g7626 g7627 g7628)
                                              (letrec ((g8169
                                                        (letrec ((x-cnd8170
                                                                  ((lambda (v7625)
                                                                     (letrec ((g8171
                                                                               (letrec ((x-cnd8172
                                                                                         (eq?
                                                                                          'init
                                                                                          v7625)))
                                                                                 (if x-cnd8172
                                                                                   #t
                                                                                   (letrec ((x-cnd8173
                                                                                             (eq?
                                                                                              'opened
                                                                                              v7625)))
                                                                                     (if x-cnd8173
                                                                                       #t
                                                                                       (letrec ((x-cnd8174
                                                                                                 (eq?
                                                                                                  'closed
                                                                                                  v7625)))
                                                                                         (if x-cnd8174
                                                                                           #t
                                                                                           (eq?
                                                                                            'ignore
                                                                                            v7625)))))))))
                                                                       g8171))
                                                                   g7628)))
                                                          (if x-cnd8170
                                                            g7628
                                                            (blame
                                                             g7626
                                                             '(lambda (v7625)
                                                                (if (eq?
                                                                     'init
                                                                     v7625)
                                                                  #t
                                                                  (if (eq?
                                                                       'opened
                                                                       v7625)
                                                                    #t
                                                                    (if (eq?
                                                                         'closed
                                                                         v7625)
                                                                      #t
                                                                      (eq?
                                                                       'ignore
                                                                       v7625))))))))))
                                                g8169)))
                                           (loop
                                            (lambda ()
                                              (letrec ((g8175 (loop))) g8175)))
                                           (readit
                                            (lambda (st)
                                              (letrec ((g8176
                                                        (letrec ((x-cnd8177
                                                                  (equal?
                                                                   'opened
                                                                   st)))
                                                          (if x-cnd8177
                                                            'opened
                                                            'ignore))))
                                                g8176)))
                                           (read_
                                            (lambda (x st)
                                              (letrec ((g8178
                                                        (if x (readit st) st)))
                                                g8178)))
                                           (closeit
                                            (lambda (st)
                                              (letrec ((g8179
                                                        (letrec ((x-cnd8180
                                                                  (equal?
                                                                   'opened
                                                                   st)))
                                                          (if x-cnd8180
                                                            (letrec ((g8181
                                                                      'closed))
                                                              g8181)
                                                            (letrec ((x-cnd8182
                                                                      (equal?
                                                                       'ignore
                                                                       st)))
                                                              (if x-cnd8182
                                                                (letrec ((g8183
                                                                          'ignore))
                                                                  g8183)
                                                                (letrec ((g8184
                                                                          (loop))
                                                                         (g8185
                                                                          0))
                                                                  g8185)))))))
                                                g8179)))
                                           (close_
                                            (lambda (x st)
                                              (letrec ((g8186
                                                        (if x
                                                          (closeit st)
                                                          st)))
                                                g8186)))
                                           (f
                                            (lambda (x y st)
                                              (letrec ((g8187
                                                        (letrec ((x8189
                                                                  (close_
                                                                   x
                                                                   st)))
                                                          (close_ y x8189)))
                                                       (g8188
                                                        (letrec ((x8190
                                                                  (letrec ((x8191
                                                                            (read_
                                                                             x
                                                                             st)))
                                                                    (read_
                                                                     y
                                                                     x8191))))
                                                          (f x y x8190))))
                                                g8188)))
                                           (next
                                            (lambda (st)
                                              (letrec ((g8192
                                                        (letrec ((x-cnd8193
                                                                  (equal?
                                                                   'init
                                                                   st)))
                                                          (if x-cnd8193
                                                            'opened
                                                            'ignore))))
                                                g8192)))
                                           (g
                                            (lambda (b3 x st)
                                              (letrec ((g8194
                                                        (letrec ((x-cnd8195
                                                                  (> b3 0)))
                                                          (if x-cnd8195
                                                            (letrec ((x8196
                                                                      (next
                                                                       st)))
                                                              (f x #t x8196))
                                                            (f x #f st)))))
                                                g8194)))
                                           (main
                                            (lambda (b2 b3)
                                              (letrec ((g8197
                                                        (letrec ((x-cnd8199
                                                                  (> b2 0)))
                                                          (if x-cnd8199
                                                            (g b3 #t 'opened)
                                                            (g b3 #f 'init))))
                                                       (g8198 'unit))
                                                g8198))))
                                    (letrec ((g8200
                                              (parallel
                                               (parallel
                                                (letrec ((x8203
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8204
                                                                      ((lambda (j7633
                                                                                k7634
                                                                                f7635)
                                                                         (letrec ((g8205
                                                                                   (lambda (g7631
                                                                                            g7632)
                                                                                     (letrec ((g8206
                                                                                               (letrec ((x8207
                                                                                                         (letrec ((x8209
                                                                                                                   (integer?/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7631))
                                                                                                                  (x8208
                                                                                                                   (integer?/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7632)))
                                                                                                           (f7635
                                                                                                            x8209
                                                                                                            x8208))))
                                                                                                 (any/c
                                                                                                  j7633
                                                                                                  k7634
                                                                                                  x8207))))
                                                                                       g8206))))
                                                                           g8205))
                                                                       xj7629
                                                                       xk7630
                                                                       main)))
                                                              g8204)))
                                                         (x8202 (input))
                                                         (x8201 (input)))
                                                  (x8203 x8202 x8201))))))
                                      g8200))))
                          g7649))))
              g7647)))
    g7646))
