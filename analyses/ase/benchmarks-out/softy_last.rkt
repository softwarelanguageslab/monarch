(letrec ((any? (lambda (v) (letrec ((g7629 #t)) g7629)))
         (meta (lambda (v) (letrec ((g7630 v)) g7630)))
         (member
          (lambda (v lst)
            (letrec ((g7631
                      (letrec ((g7632
                                (letrec ((x-e7633 lst))
                                  (match
                                   x-e7633
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7634 (eq? v v1)))
                                       (if x-cnd7634 #t (member v vs)))))))))
                        g7632)))
              g7631)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7635 (lambda (v) (letrec ((g7636 v)) g7636)))) g7635)))
         (nonzero?
          (lambda (v)
            (letrec ((g7637 (letrec ((x7638 (= v 0))) (not x7638)))) g7637))))
  (letrec ((g7639
            (letrec ((g7640
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7641 '())
                                 (g7642
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7643
                                                        (lambda (k j lst)
                                                          (letrec ((g7644
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7645
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7645))
                                                                     lst)))
                                                            g7644))))
                                                g7643)))
                                           (real?/c
                                            (lambda (g7533 g7534 g7535)
                                              (letrec ((g7646
                                                        (letrec ((x-cnd7647
                                                                  (real?
                                                                   g7535)))
                                                          (if x-cnd7647
                                                            g7535
                                                            (blame
                                                             g7533
                                                             'real?)))))
                                                g7646)))
                                           (boolean?/c
                                            (lambda (g7536 g7537 g7538)
                                              (letrec ((g7648
                                                        (letrec ((x-cnd7649
                                                                  (boolean?
                                                                   g7538)))
                                                          (if x-cnd7649
                                                            g7538
                                                            (blame
                                                             g7536
                                                             'boolean?)))))
                                                g7648)))
                                           (number?/c
                                            (lambda (g7539 g7540 g7541)
                                              (letrec ((g7650
                                                        (letrec ((x-cnd7651
                                                                  (number?
                                                                   g7541)))
                                                          (if x-cnd7651
                                                            g7541
                                                            (blame
                                                             g7539
                                                             'number?)))))
                                                g7650)))
                                           (any/c
                                            (lambda (g7542 g7543 g7544)
                                              (letrec ((g7652
                                                        (letrec ((x-cnd7653
                                                                  ((lambda (v)
                                                                     (letrec ((g7654
                                                                               #t))
                                                                       g7654))
                                                                   g7544)))
                                                          (if x-cnd7653
                                                            g7544
                                                            (blame
                                                             g7542
                                                             '(lambda (v)
                                                                #t))))))
                                                g7652)))
                                           (any?/c
                                            (lambda (g7545 g7546 g7547)
                                              (letrec ((g7655
                                                        (letrec ((x-cnd7656
                                                                  ((lambda (v)
                                                                     (letrec ((g7657
                                                                               #t))
                                                                       g7657))
                                                                   g7547)))
                                                          (if x-cnd7656
                                                            g7547
                                                            (blame
                                                             g7545
                                                             '(lambda (v)
                                                                #t))))))
                                                g7655)))
                                           (cons?/c
                                            (lambda (g7548 g7549 g7550)
                                              (letrec ((g7658
                                                        (letrec ((x-cnd7659
                                                                  (pair?
                                                                   g7550)))
                                                          (if x-cnd7659
                                                            g7550
                                                            (blame
                                                             g7548
                                                             'pair?)))))
                                                g7658)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7551 g7552 g7553)
                                              (letrec ((g7660
                                                        (letrec ((x-cnd7661
                                                                  (pair?
                                                                   g7553)))
                                                          (if x-cnd7661
                                                            g7553
                                                            (blame
                                                             g7551
                                                             'pair?)))))
                                                g7660)))
                                           (integer?/c
                                            (lambda (g7554 g7555 g7556)
                                              (letrec ((g7662
                                                        (letrec ((x-cnd7663
                                                                  (integer?
                                                                   g7556)))
                                                          (if x-cnd7663
                                                            g7556
                                                            (blame
                                                             g7554
                                                             'integer?)))))
                                                g7662)))
                                           (symbol?/c
                                            (lambda (g7557 g7558 g7559)
                                              (letrec ((g7664
                                                        (letrec ((x-cnd7665
                                                                  (symbol?
                                                                   g7559)))
                                                          (if x-cnd7665
                                                            g7559
                                                            (blame
                                                             g7557
                                                             'symbol?)))))
                                                g7664)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7666
                                                        (lambda (k j v)
                                                          (letrec ((g7667
                                                                    (letrec ((x-cnd7668
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7668
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7667))))
                                                g7666)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7669
                                                        (lambda (k j v)
                                                          (letrec ((g7670
                                                                    (letrec ((x-cnd7671
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7671
                                                                        '()
                                                                        (letrec ((x7675
                                                                                  (letrec ((x7676
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7676)))
                                                                                 (x7672
                                                                                  (letrec ((x7674
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7673
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7674
                                                                                     k
                                                                                     j
                                                                                     x7673))))
                                                                          (orig-cons
                                                                           x7675
                                                                           x7672))))))
                                                            g7670))))
                                                g7669)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7677 #t)) g7677)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7678
                                                        (letrec ((x7679
                                                                  (= v 0)))
                                                          (not x7679))))
                                                g7678)))
                                           (nonzero?/c
                                            (lambda (g7560 g7561 g7562)
                                              (letrec ((g7680
                                                        (letrec ((x-cnd7681
                                                                  ((lambda (v)
                                                                     (letrec ((g7682
                                                                               (letrec ((x7683
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7683))))
                                                                       g7682))
                                                                   g7562)))
                                                          (if x-cnd7681
                                                            g7562
                                                            (blame
                                                             g7560
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7680)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7684 v)) g7684)))
                                           (+
                                            (letrec ((xj7563 'server)
                                                     (xk7564 'client))
                                              (letrec ((g7685
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g7687
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g7688
                                                                                 (letrec ((x7689
                                                                                           (letrec ((x7691
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x7690
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x7691
                                                                                              x7690))))
                                                                                   (number?/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x7689))))
                                                                         g7688))))
                                                             g7687))
                                                         xj7563
                                                         xk7564
                                                         (lambda (a b)
                                                           (letrec ((g7686
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7686)))))
                                                g7685)))
                                           (-
                                            (letrec ((xj7570 'server)
                                                     (xk7571 'client))
                                              (letrec ((g7692
                                                        ((lambda (j7574
                                                                  k7575
                                                                  f7576)
                                                           (letrec ((g7694
                                                                     (lambda (g7572
                                                                              g7573)
                                                                       (letrec ((g7695
                                                                                 (letrec ((x7696
                                                                                           (letrec ((x7698
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7572))
                                                                                                    (x7697
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7573)))
                                                                                             (f7576
                                                                                              x7698
                                                                                              x7697))))
                                                                                   (number?/c
                                                                                    j7574
                                                                                    k7575
                                                                                    x7696))))
                                                                         g7695))))
                                                             g7694))
                                                         xj7570
                                                         xk7571
                                                         (lambda (a b)
                                                           (letrec ((g7693
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7693)))))
                                                g7692)))
                                           (*
                                            (letrec ((xj7577 'server)
                                                     (xk7578 'client))
                                              (letrec ((g7699
                                                        ((lambda (j7581
                                                                  k7582
                                                                  f7583)
                                                           (letrec ((g7701
                                                                     (lambda (g7579
                                                                              g7580)
                                                                       (letrec ((g7702
                                                                                 (letrec ((x7703
                                                                                           (letrec ((x7705
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7579))
                                                                                                    (x7704
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7580)))
                                                                                             (f7583
                                                                                              x7705
                                                                                              x7704))))
                                                                                   (number?/c
                                                                                    j7581
                                                                                    k7582
                                                                                    x7703))))
                                                                         g7702))))
                                                             g7701))
                                                         xj7577
                                                         xk7578
                                                         (lambda (a b)
                                                           (letrec ((g7700
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7700)))))
                                                g7699)))
                                           (/
                                            (letrec ((xj7584 'server)
                                                     (xk7585 'client))
                                              (letrec ((g7706
                                                        ((lambda (j7588
                                                                  k7589
                                                                  f7590)
                                                           (letrec ((g7708
                                                                     (lambda (g7586
                                                                              g7587)
                                                                       (letrec ((g7709
                                                                                 (letrec ((x7710
                                                                                           (letrec ((x7712
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7586))
                                                                                                    (x7711
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7587)))
                                                                                             (f7590
                                                                                              x7712
                                                                                              x7711))))
                                                                                   (number?/c
                                                                                    j7588
                                                                                    k7589
                                                                                    x7710))))
                                                                         g7709))))
                                                             g7708))
                                                         xj7584
                                                         xk7585
                                                         (lambda (a b)
                                                           (letrec ((g7707
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7707)))))
                                                g7706)))
                                           (car
                                            (letrec ((xj7591 'server)
                                                     (xk7592 'client))
                                              (letrec ((g7713
                                                        ((lambda (j7594
                                                                  k7595
                                                                  f7596)
                                                           (letrec ((g7715
                                                                     (lambda (g7593)
                                                                       (letrec ((g7716
                                                                                 (letrec ((x7717
                                                                                           (letrec ((x7718
                                                                                                     (pair?/c
                                                                                                      j7594
                                                                                                      k7595
                                                                                                      g7593)))
                                                                                             (f7596
                                                                                              x7718))))
                                                                                   (any/c
                                                                                    j7594
                                                                                    k7595
                                                                                    x7717))))
                                                                         g7716))))
                                                             g7715))
                                                         xj7591
                                                         xk7592
                                                         (lambda (p)
                                                           (letrec ((g7714
                                                                     (orig-car
                                                                      p)))
                                                             g7714)))))
                                                g7713)))
                                           (cdr
                                            (letrec ((xj7597 'server)
                                                     (xk7598 'client))
                                              (letrec ((g7719
                                                        ((lambda (j7600
                                                                  k7601
                                                                  f7602)
                                                           (letrec ((g7721
                                                                     (lambda (g7599)
                                                                       (letrec ((g7722
                                                                                 (letrec ((x7723
                                                                                           (letrec ((x7724
                                                                                                     (pair?/c
                                                                                                      j7600
                                                                                                      k7601
                                                                                                      g7599)))
                                                                                             (f7602
                                                                                              x7724))))
                                                                                   (any/c
                                                                                    j7600
                                                                                    k7601
                                                                                    x7723))))
                                                                         g7722))))
                                                             g7721))
                                                         xj7597
                                                         xk7598
                                                         (lambda (p)
                                                           (letrec ((g7720
                                                                     (orig-cdr
                                                                      p)))
                                                             g7720)))))
                                                g7719)))
                                           (cons
                                            (letrec ((xj7603 'server)
                                                     (xk7604 'client))
                                              (letrec ((g7725
                                                        ((lambda (j7607
                                                                  k7608
                                                                  f7609)
                                                           (letrec ((g7727
                                                                     (lambda (g7605
                                                                              g7606)
                                                                       (letrec ((g7728
                                                                                 (letrec ((x7729
                                                                                           (letrec ((x7731
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7605))
                                                                                                    (x7730
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7606)))
                                                                                             (f7609
                                                                                              x7731
                                                                                              x7730))))
                                                                                   (pair?/c
                                                                                    j7607
                                                                                    k7608
                                                                                    x7729))))
                                                                         g7728))))
                                                             g7727))
                                                         xj7603
                                                         xk7604
                                                         (lambda (a b)
                                                           (letrec ((g7726
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7726)))))
                                                g7725)))
                                           (vector-ref
                                            (letrec ((xj7610 'server)
                                                     (xk7611 'client))
                                              (letrec ((g7732
                                                        ((lambda (j7613
                                                                  k7614
                                                                  f7615)
                                                           (letrec ((g7734
                                                                     (lambda (g7612)
                                                                       (letrec ((g7735
                                                                                 (letrec ((x7736
                                                                                           (letrec ((x7737
                                                                                                     (vector?/c
                                                                                                      j7613
                                                                                                      k7614
                                                                                                      g7612)))
                                                                                             (f7615
                                                                                              x7737))))
                                                                                   (integer?/c
                                                                                    j7613
                                                                                    k7614
                                                                                    x7736))))
                                                                         g7735))))
                                                             g7734))
                                                         xj7610
                                                         xk7611
                                                         (lambda (v i)
                                                           (letrec ((g7733
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7733)))))
                                                g7732)))
                                           (vector-set!
                                            (letrec ((xj7616 'server)
                                                     (xk7617 'client))
                                              (letrec ((g7738
                                                        ((lambda (j7620
                                                                  k7621
                                                                  f7622)
                                                           (letrec ((g7740
                                                                     (lambda (g7618
                                                                              g7619)
                                                                       (letrec ((g7741
                                                                                 (letrec ((x7742
                                                                                           (letrec ((x7744
                                                                                                     (vector?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7618))
                                                                                                    (x7743
                                                                                                     (integer?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7619)))
                                                                                             (f7622
                                                                                              x7744
                                                                                              x7743))))
                                                                                   (any/c
                                                                                    j7620
                                                                                    k7621
                                                                                    x7742))))
                                                                         g7741))))
                                                             g7740))
                                                         xj7616
                                                         xk7617
                                                         (lambda (vec i v)
                                                           (letrec ((g7739
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7739)))))
                                                g7738)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7745
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7745)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7746
                                                        (letrec ((x7747
                                                                  (letrec ((x7748
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7748))))
                                                          (cdr x7747))))
                                                g7746)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7749
                                                        (letrec ((x7752
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7752)))
                                                       (g7750
                                                        (letrec ((x7753
                                                                  (list? l)))
                                                          (assert x7753)))
                                                       (g7751
                                                        (letrec ((x-cnd7754
                                                                  (null? l)))
                                                          (if x-cnd7754
                                                            '()
                                                            (letrec ((x7757
                                                                      (letrec ((x7758
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7758)))
                                                                     (x7755
                                                                      (letrec ((x7756
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7756))))
                                                              (cons
                                                               x7757
                                                               x7755))))))
                                                g7751)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (car x)))
                                                          (cdr x7760))))
                                                g7759)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7761
                                                        (letrec ((x7762
                                                                  (letrec ((x7763
                                                                            (letrec ((x7764
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7764))))
                                                                    (cdr
                                                                     x7763))))
                                                          (car x7762))))
                                                g7761)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (letrec ((x7768
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7768))))
                                                                    (car
                                                                     x7767))))
                                                          (cdr x7766))))
                                                g7765)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7769
                                                        (letrec ((x7772
                                                                  (string?
                                                                   filename)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((x7773
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7774
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7775 res))
                                                            g7775))))
                                                g7771)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (letrec ((x7778
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7778))))
                                                          (car x7777))))
                                                g7776)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (letrec ((x7781
                                                                            (letrec ((x7782
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7782))))
                                                                    (car
                                                                     x7781))))
                                                          (cdr x7780))))
                                                g7779)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7783
                                                        (letrec ((x7785
                                                                  (list? l)))
                                                          (assert x7785)))
                                                       (g7784
                                                        (letrec ((x-cnd7786
                                                                  (null? l)))
                                                          (if x-cnd7786
                                                            #f
                                                            (letrec ((x-cnd7787
                                                                      (letrec ((x7788
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7788
                                                                         k))))
                                                              (if x-cnd7787
                                                                (car l)
                                                                (letrec ((x7789
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7789))))))))
                                                g7784)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7790
                                                        (letrec ((x7791
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7791))))
                                                g7790)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7792
                                                        (letrec ((x7794
                                                                  (list? l)))
                                                          (assert x7794)))
                                                       (g7793
                                                        (letrec ((x-cnd7795
                                                                  (null? l)))
                                                          (if x-cnd7795
                                                            ""
                                                            (letrec ((x7798
                                                                      (letrec ((x7799
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7799)))
                                                                     (x7796
                                                                      (letrec ((x7797
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7797))))
                                                              (string-append
                                                               x7798
                                                               x7796))))))
                                                g7793)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7800
                                                        (letrec ((x7803
                                                                  (char? c1)))
                                                          (assert x7803)))
                                                       (g7801
                                                        (letrec ((x7804
                                                                  (char? c2)))
                                                          (assert x7804)))
                                                       (g7802
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7805
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7805))))
                                                g7802)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7806
                                                        (letrec ((x7807
                                                                  (letrec ((x7808
                                                                            (letrec ((x7809
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7809))))
                                                                    (cdr
                                                                     x7808))))
                                                          (cdr x7807))))
                                                g7806)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7810
                                                        (letrec ((x7813
                                                                  (list? l)))
                                                          (assert x7813)))
                                                       (g7811
                                                        (letrec ((x7814
                                                                  (number?)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x-cnd7815
                                                                  (zero? k)))
                                                          (if x-cnd7815
                                                            x
                                                            (letrec ((x7817
                                                                      (cdr x))
                                                                     (x7816
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7817
                                                               x7816))))))
                                                g7812)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7818 '())) g7818)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7819
                                                        (letrec ((x-cnd7820
                                                                  (letrec ((x7821
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7821))))
                                                          (if x-cnd7820
                                                            (letrec ((x7822
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7822))
                                                            #f))))
                                                g7819)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7823
                                                        (letrec ((x7825
                                                                  (number? x)))
                                                          (assert x7825)))
                                                       (g7824
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g7826
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7827
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g7827)))))
                                                            g7826))))
                                                g7824)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7828
                                                        (letrec ((val7518
                                                                  (letrec ((x7829
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7829
                                                                     9))))
                                                          (letrec ((g7830
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x7831
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7831
                                                                                   10))))
                                                                        (letrec ((g7832
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x7833
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7833
                                                                                       32)))))
                                                                          g7832)))))
                                                            g7830))))
                                                g7828)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7835
                                                                  (letrec ((x7836
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7836))))
                                                          (cdr x7835))))
                                                g7834)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7837
                                                        (letrec ((x7839
                                                                  (number? x)))
                                                          (assert x7839)))
                                                       (g7838 (> x 0)))
                                                g7838)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7840 #f)) g7840)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7841
                                                        (letrec ((x7842
                                                                  (cdr x)))
                                                          (cdr x7842))))
                                                g7841)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7843
                                                        (letrec ((x7845
                                                                  (number? x)))
                                                          (assert x7845)))
                                                       (g7844
                                                        (letrec ((x-cnd7846
                                                                  (< x 0)))
                                                          (if x-cnd7846
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7844)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7847
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g7848
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd7849
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7849
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7850
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd7851
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7851
                                                                                                  (letrec ((x-cnd7852
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7852
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7853
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd7854
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7854
                                                                                                                (letrec ((x-cnd7855
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7855
                                                                                                                    (letrec ((x-cnd7856
                                                                                                                              (letrec ((x7858
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7857
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7858
                                                                                                                                 x7857))))
                                                                                                                      (if x-cnd7856
                                                                                                                        (letrec ((x7860
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7859
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7860
                                                                                                                           x7859))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7861
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd7862
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7862
                                                                                                                    (letrec ((x-cnd7863
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7863
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7864
                                                                                                                                    (letrec ((x-cnd7865
                                                                                                                                              (letrec ((x7866
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7866
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7865
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7867
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7868
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd7869
                                                                                                                                                                                      (letrec ((x7871
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7870
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7871
                                                                                                                                                                                         x7870))))
                                                                                                                                                                              (if x-cnd7869
                                                                                                                                                                                (letrec ((x7872
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7872))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7868))))
                                                                                                                                                      g7867))))
                                                                                                                                          (letrec ((g7873
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7873))
                                                                                                                                        #f))))
                                                                                                                            g7864))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7861)))))
                                                                                        g7853)))))
                                                                          g7850)))))
                                                            g7848))))
                                                g7847)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7874
                                                        (letrec ((x7875
                                                                  (letrec ((x7876
                                                                            (letrec ((x7877
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7877))))
                                                                    (car
                                                                     x7876))))
                                                          (cdr x7875))))
                                                g7874)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7878
                                                        (letrec ((x7879
                                                                  (letrec ((x7880
                                                                            (letrec ((x7881
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7881))))
                                                                    (car
                                                                     x7880))))
                                                          (car x7879))))
                                                g7878)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7882 (eq? x y)))
                                                g7882)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7883
                                                        (letrec ((x7885
                                                                  (number? x)))
                                                          (assert x7885)))
                                                       (g7884
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g7886
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7887
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g7887)))))
                                                            g7886))))
                                                g7884)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7888
                                                        (letrec ((x7891
                                                                  (string?
                                                                   filename)))
                                                          (assert x7891)))
                                                       (g7889
                                                        (letrec ((x7892
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7892)))
                                                       (g7890
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7893
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7894 res))
                                                            g7894))))
                                                g7890)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7895 (cons x '())))
                                                g7895)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7896
                                                        (letrec ((x7899
                                                                  (char? c1)))
                                                          (assert x7899)))
                                                       (g7897
                                                        (letrec ((x7900
                                                                  (char? c2)))
                                                          (assert x7900)))
                                                       (g7898
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7901
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7901))))
                                                g7898)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7902
                                                        (letrec ((x7903
                                                                  (letrec ((x7904
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7904))))
                                                          (cdr x7903))))
                                                g7902)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7905
                                                        (letrec ((x7906
                                                                  (letrec ((x7907
                                                                            (letrec ((x7908
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7908))))
                                                                    (car
                                                                     x7907))))
                                                          (cdr x7906))))
                                                g7905)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7911))))
                                                          (car x7910))))
                                                g7909)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7912
                                                        (letrec ((x7913
                                                                  (letrec ((x7914
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7914))))
                                                          (car x7913))))
                                                g7912)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7915
                                                        (letrec ((x7918
                                                                  (char? c1)))
                                                          (assert x7918)))
                                                       (g7916
                                                        (letrec ((x7919
                                                                  (char? c2)))
                                                          (assert x7919)))
                                                       (g7917
                                                        (letrec ((x7920
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7920))))
                                                g7917)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7922
                                                                  (letrec ((x7923
                                                                            (letrec ((x7924
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7924))))
                                                                    (car
                                                                     x7923))))
                                                          (car x7922))))
                                                g7921)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7925
                                                        (letrec ((x7927
                                                                  (number? x)))
                                                          (assert x7927)))
                                                       (g7926 (< x 0)))
                                                g7926)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7928 (memq e l)))
                                                g7928)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7929
                                                        (letrec ((x7930
                                                                  (letrec ((x7931
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7931))))
                                                          (car x7930))))
                                                g7929)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7932 '())) g7932)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7933
                                                        (letrec ((x7935
                                                                  (list? l)))
                                                          (assert x7935)))
                                                       (g7934
                                                        (letrec ((x-cnd7936
                                                                  (null? l)))
                                                          (if x-cnd7936
                                                            '()
                                                            (letrec ((x7939
                                                                      (letrec ((x7940
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7940)))
                                                                     (x7937
                                                                      (letrec ((x7938
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7938))))
                                                              (append
                                                               x7939
                                                               x7937))))))
                                                g7934)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7941
                                                        (letrec ((x7942
                                                                  (letrec ((x7943
                                                                            (letrec ((x7944
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7944))))
                                                                    (car
                                                                     x7943))))
                                                          (car x7942))))
                                                g7941)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (letrec ((x7947
                                                                            (letrec ((x7948
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7948))))
                                                                    (cdr
                                                                     x7947))))
                                                          (cdr x7946))))
                                                g7945)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7949
                                                        (letrec ((x7951
                                                                  (number? x)))
                                                          (assert x7951)))
                                                       (g7950
                                                        (letrec ((x7952
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7952))))
                                                g7950)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7953
                                                        (letrec ((x7954
                                                                  (letrec ((x7955
                                                                            (letrec ((x7956
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7956))))
                                                                    (car
                                                                     x7955))))
                                                          (car x7954))))
                                                g7953)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7957
                                                        (letrec ((x7960
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7960)))
                                                       (g7958
                                                        (letrec ((x7961
                                                                  (list?
                                                                   args)))
                                                          (assert x7961)))
                                                       (g7959
                                                        (letrec ((x-cnd7962
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7962
                                                            (letrec ((g7963
                                                                      (proc)))
                                                              g7963)
                                                            (letrec ((x-cnd7964
                                                                      (letrec ((x7965
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7965))))
                                                              (if x-cnd7964
                                                                (letrec ((g7966
                                                                          (letrec ((x7967
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7967))))
                                                                  g7966)
                                                                (letrec ((x-cnd7968
                                                                          (letrec ((x7969
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7969))))
                                                                  (if x-cnd7968
                                                                    (letrec ((g7970
                                                                              (letrec ((x7972
                                                                                        (car
                                                                                         args))
                                                                                       (x7971
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7972
                                                                                 x7971))))
                                                                      g7970)
                                                                    (letrec ((x-cnd7973
                                                                              (letrec ((x7974
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7974))))
                                                                      (if x-cnd7973
                                                                        (letrec ((g7975
                                                                                  (letrec ((x7978
                                                                                            (car
                                                                                             args))
                                                                                           (x7977
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7976
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7978
                                                                                     x7977
                                                                                     x7976))))
                                                                          g7975)
                                                                        (letrec ((x-cnd7979
                                                                                  (letrec ((x7980
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7980))))
                                                                          (if x-cnd7979
                                                                            (letrec ((g7981
                                                                                      (letrec ((x7985
                                                                                                (car
                                                                                                 args))
                                                                                               (x7984
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7983
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7982
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7985
                                                                                         x7984
                                                                                         x7983
                                                                                         x7982))))
                                                                              g7981)
                                                                            (letrec ((x-cnd7986
                                                                                      (letrec ((x7987
                                                                                                (letrec ((x7988
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7988))))
                                                                                        (null?
                                                                                         x7987))))
                                                                              (if x-cnd7986
                                                                                (letrec ((g7989
                                                                                          (letrec ((x7995
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7994
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7993
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7992
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7990
                                                                                                    (letrec ((x7991
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7991))))
                                                                                            (proc
                                                                                             x7995
                                                                                             x7994
                                                                                             x7993
                                                                                             x7992
                                                                                             x7990))))
                                                                                  g7989)
                                                                                (letrec ((x-cnd7996
                                                                                          (letrec ((x7997
                                                                                                    (letrec ((x7998
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7998))))
                                                                                            (null?
                                                                                             x7997))))
                                                                                  (if x-cnd7996
                                                                                    (letrec ((g7999
                                                                                              (letrec ((x8007
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8006
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8005
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8004
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8002
                                                                                                        (letrec ((x8003
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8003)))
                                                                                                       (x8000
                                                                                                        (letrec ((x8001
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8001))))
                                                                                                (proc
                                                                                                 x8007
                                                                                                 x8006
                                                                                                 x8005
                                                                                                 x8004
                                                                                                 x8002
                                                                                                 x8000))))
                                                                                      g7999)
                                                                                    (letrec ((x-cnd8008
                                                                                              (letrec ((x8009
                                                                                                        (letrec ((x8010
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8010))))
                                                                                                (null?
                                                                                                 x8009))))
                                                                                      (if x-cnd8008
                                                                                        (letrec ((g8011
                                                                                                  (letrec ((x8021
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8020
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8019
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8018
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8016
                                                                                                            (letrec ((x8017
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8017)))
                                                                                                           (x8014
                                                                                                            (letrec ((x8015
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8015)))
                                                                                                           (x8012
                                                                                                            (letrec ((x8013
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8013))))
                                                                                                    (proc
                                                                                                     x8021
                                                                                                     x8020
                                                                                                     x8019
                                                                                                     x8018
                                                                                                     x8016
                                                                                                     x8014
                                                                                                     x8012))))
                                                                                          g8011)
                                                                                        (letrec ((g8022
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8022)))))))))))))))))))
                                                g7959)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8023
                                                        (letrec ((x8025
                                                                  (list? l)))
                                                          (assert x8025)))
                                                       (g8024
                                                        (letrec ((x-cnd8026
                                                                  (null? l)))
                                                          (if x-cnd8026
                                                            #f
                                                            (letrec ((x-cnd8027
                                                                      (letrec ((x8028
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8028
                                                                         e))))
                                                              (if x-cnd8027
                                                                l
                                                                (letrec ((x8029
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8029))))))))
                                                g8024)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8030
                                                        (letrec ((x8031
                                                                  (letrec ((x8032
                                                                            (letrec ((x8033
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8033))))
                                                                    (cdr
                                                                     x8032))))
                                                          (cdr x8031))))
                                                g8030)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8034
                                                        (letrec ((x8035
                                                                  (letrec ((x8036
                                                                            (letrec ((x8037
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8037))))
                                                                    (cdr
                                                                     x8036))))
                                                          (car x8035))))
                                                g8034)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8038 (random 42)))
                                                g8038)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8039
                                                        (letrec ((x8041
                                                                  (number? x)))
                                                          (assert x8041)))
                                                       (g8040 (= x 0)))
                                                g8040)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8042
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8043
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8043))))
                                                g8042)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8044
                                                        (letrec ((x8045
                                                                  (cdr x)))
                                                          (car x8045))))
                                                g8044)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8046
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8047
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8047
                                                                      (letrec ((x8048
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8048))
                                                                      #f))))
                                                          (letrec ((g8049
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8049))))
                                                g8046)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8050
                                                        (letrec ((x8051
                                                                  (letrec ((x8052
                                                                            (letrec ((x8053
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8053))))
                                                                    (cdr
                                                                     x8052))))
                                                          (cdr x8051))))
                                                g8050)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8054
                                                        (letrec ((x-cnd8055
                                                                  (letrec ((x8056
                                                                            #\0))
                                                                    (char<=?
                                                                     x8056
                                                                     c))))
                                                          (if x-cnd8055
                                                            (letrec ((x8057
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8057))
                                                            #f))))
                                                g8054)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8058
                                                        (letrec ((x8060
                                                                  (list? l)))
                                                          (assert x8060)))
                                                       (g8059
                                                        (letrec ((x-cnd8061
                                                                  (null? l)))
                                                          (if x-cnd8061
                                                            #f
                                                            (letrec ((x-cnd8062
                                                                      (letrec ((x8063
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8063
                                                                         k))))
                                                              (if x-cnd8062
                                                                (car l)
                                                                (letrec ((x8064
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8064))))))))
                                                g8059)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8065 (if x #f #t)))
                                                g8065)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8066 (append l1 l2)))
                                                g8066)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8072
                                                                         e))))
                                                              (if x-cnd8071
                                                                l
                                                                (letrec ((x8073
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8073))))))))
                                                g8068)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8074
                                                        (letrec ((x8075
                                                                  (letrec ((x8076
                                                                            (letrec ((x8077
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8077))))
                                                                    (cdr
                                                                     x8076))))
                                                          (car x8075))))
                                                g8074)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8078
                                                        (letrec ((x8080
                                                                  (list? l)))
                                                          (assert x8080)))
                                                       (g8079
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8081
                                                                              (letrec ((x-cnd8082
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8082
                                                                                  0
                                                                                  (letrec ((x8083
                                                                                            (letrec ((x8084
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8084))))
                                                                                    (+
                                                                                     1
                                                                                     x8083))))))
                                                                      g8081))))
                                                          (letrec ((g8085
                                                                    (rec l)))
                                                            g8085))))
                                                g8079)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8086
                                                        (letrec ((x8089
                                                                  (char? c1)))
                                                          (assert x8089)))
                                                       (g8087
                                                        (letrec ((x8090
                                                                  (char? c2)))
                                                          (assert x8090)))
                                                       (g8088
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8091
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8091))))
                                                g8088)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8092
                                                        (letrec ((x8093
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8093))))
                                                g8092)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8094
                                                        (letrec ((x8095
                                                                  (letrec ((x8096
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8096))))
                                                          (cdr x8095))))
                                                g8094)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8097
                                                        (letrec ((x8099
                                                                  (list? l)))
                                                          (assert x8099)))
                                                       (g8098
                                                        (letrec ((x-cnd8100
                                                                  (null? l)))
                                                          (if x-cnd8100
                                                            #f
                                                            (letrec ((x-cnd8101
                                                                      (letrec ((x8102
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8102
                                                                         k))))
                                                              (if x-cnd8101
                                                                (car l)
                                                                (letrec ((x8103
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8103))))))))
                                                g8098)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8104
                                                        (letrec ((x8105
                                                                  (car x)))
                                                          (car x8105))))
                                                g8104)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8106
                                                        (letrec ((x8109
                                                                  (char? c1)))
                                                          (assert x8109)))
                                                       (g8107
                                                        (letrec ((x8110
                                                                  (char? c2)))
                                                          (assert x8110)))
                                                       (g8108
                                                        (letrec ((x8111
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8111))))
                                                g8108)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8112
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8113
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8113))))
                                                g8112)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8114
                                                        (letrec ((x8117
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8117)))
                                                       (g8115
                                                        (letrec ((x8118
                                                                  (list? l)))
                                                          (assert x8118)))
                                                       (g8116
                                                        (letrec ((x-cnd8119
                                                                  (null? l)))
                                                          (if x-cnd8119
                                                            #t
                                                            (letrec ((x-cnd8120
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8120
                                                                (letrec ((g8121
                                                                          (letrec ((x8123
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8123)))
                                                                         (g8122
                                                                          (letrec ((x8124
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8124))))
                                                                  g8122)
                                                                '()))))))
                                                g8116)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8125
                                                        (letrec ((x8127
                                                                  (number? x)))
                                                          (assert x8127)))
                                                       (g8126
                                                        (letrec ((x-cnd8128
                                                                  (< x 0)))
                                                          (if x-cnd8128
                                                            (- 0 x)
                                                            x))))
                                                g8126)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8129
                                                        (letrec ((x8132
                                                                  (char? c1)))
                                                          (assert x8132)))
                                                       (g8130
                                                        (letrec ((x8133
                                                                  (char? c2)))
                                                          (assert x8133)))
                                                       (g8131
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8134
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8134))))
                                                g8131)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8135
                                                        (letrec ((x8136
                                                                  (letrec ((x8137
                                                                            (letrec ((x8138
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8138))))
                                                                    (cdr
                                                                     x8137))))
                                                          (car x8136))))
                                                g8135)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8139 #f)) g8139)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8140
                                                        (letrec ((x8142
                                                                  (letrec ((x8143
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8143)))
                                                                 (x8141
                                                                  (gcd m n)))
                                                          (/ x8142 x8141))))
                                                g8140)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8144
                                                        (letrec ((x8146
                                                                  (number? x)))
                                                          (assert x8146)))
                                                       (g8145
                                                        (letrec ((x8147
                                                                  (<= x y)))
                                                          (not x8147))))
                                                g8145)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8148
                                                        (letrec ((x8152
                                                                  (list? l)))
                                                          (assert x8152)))
                                                       (g8149
                                                        (letrec ((x8153
                                                                  (number?
                                                                   index)))
                                                          (assert x8153)))
                                                       (g8150
                                                        (letrec ((x8154
                                                                  (letrec ((x8155
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8155))))
                                                          (assert x8154)))
                                                       (g8151
                                                        (letrec ((x-cnd8156
                                                                  (= index 0)))
                                                          (if x-cnd8156
                                                            (car l)
                                                            (letrec ((x8158
                                                                      (cdr l))
                                                                     (x8157
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8158
                                                               x8157))))))
                                                g8151)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8159
                                                        (letrec ((x-cnd8160
                                                                  (= b 0)))
                                                          (if x-cnd8160
                                                            a
                                                            (letrec ((x8161
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8161))))))
                                                g8159)))
                                           (Y
                                            (lambda (f)
                                              (letrec ((g8162
                                                        (letrec ((x8179 (y))
                                                                 (x8163
                                                                  (letrec ((x8164
                                                                            (letrec ((x8172
                                                                                      (letrec ((x8178
                                                                                                (x))
                                                                                               (x8173
                                                                                                (letrec ((x8174
                                                                                                          (letrec ((x8177
                                                                                                                    (z))
                                                                                                                   (x8175
                                                                                                                    (letrec ((x8176
                                                                                                                              (x
                                                                                                                               x)))
                                                                                                                      (x8176
                                                                                                                       z))))
                                                                                                            (λ x8177
                                                                                                              x8175))))
                                                                                                  (f
                                                                                                   x8174))))
                                                                                        (λ x8178
                                                                                          x8173)))
                                                                                     (x8165
                                                                                      (letrec ((x8171
                                                                                                (x))
                                                                                               (x8166
                                                                                                (letrec ((x8167
                                                                                                          (letrec ((x8170
                                                                                                                    (z))
                                                                                                                   (x8168
                                                                                                                    (letrec ((x8169
                                                                                                                              (x
                                                                                                                               x)))
                                                                                                                      (x8169
                                                                                                                       z))))
                                                                                                            (λ x8170
                                                                                                              x8168))))
                                                                                                  (f
                                                                                                   x8167))))
                                                                                        (λ x8171
                                                                                          x8166))))
                                                                              (x8172
                                                                               x8165))))
                                                                    (x8164
                                                                     y))))
                                                          (λ x8179 x8163))))
                                                g8162)))
                                           (last
                                            (lambda (l)
                                              (letrec ((g8180
                                                        (letrec ((x8181
                                                                  (letrec ((x8182
                                                                            (letrec ((x8189
                                                                                      (f))
                                                                                     (x8183
                                                                                      (letrec ((x8188
                                                                                                (x))
                                                                                               (x8184
                                                                                                (letrec ((x-cnd8185
                                                                                                          (letrec ((x8186
                                                                                                                    (cdr
                                                                                                                     x)))
                                                                                                            (empty?
                                                                                                             x8186))))
                                                                                                  (if x-cnd8185
                                                                                                    (car
                                                                                                     x)
                                                                                                    (letrec ((x8187
                                                                                                              (cdr
                                                                                                               x)))
                                                                                                      (f
                                                                                                       x8187))))))
                                                                                        (λ x8188
                                                                                          x8184))))
                                                                              (λ x8189
                                                                                x8183))))
                                                                    (Y
                                                                     x8182))))
                                                          (x8181 l))))
                                                g8180))))
                                    (letrec ((g8190
                                              (parallel
                                               (parallel
                                                (letrec ((x8192
                                                          (letrec ((xj7623
                                                                    (loc
                                                                     'module))
                                                                   (xk7624
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8193
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g8194
                                                                                   (lambda (g7625)
                                                                                     (letrec ((g8195
                                                                                               (letrec ((x8196
                                                                                                         (letrec ((x8197
                                                                                                                   (letrec ((x8198
                                                                                                                             (letrec ((x8199
                                                                                                                                       (listof
                                                                                                                                        any/c)))
                                                                                                                               (cons/c
                                                                                                                                any/c
                                                                                                                                x8199))))
                                                                                                                     (x8198
                                                                                                                      j7626
                                                                                                                      k7627
                                                                                                                      g7625))))
                                                                                                           (f7628
                                                                                                            x8197))))
                                                                                                 (any/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x8196))))
                                                                                       g8195))))
                                                                           g8194))
                                                                       xj7623
                                                                       xk7624
                                                                       last)))
                                                              g8193)))
                                                         (x8191 (input)))
                                                  (x8192 x8191))))))
                                      g8190))))
                          g7642))))
              g7640)))
    g7639))
