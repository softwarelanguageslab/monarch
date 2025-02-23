(letrec ((any? (lambda (v) (letrec ((g7630 #t)) g7630)))
         (meta (lambda (v) (letrec ((g7631 v)) g7631)))
         (member
          (lambda (v lst)
            (letrec ((g7632
                      (letrec ((g7633
                                (letrec ((x-e7634 lst))
                                  (match
                                   x-e7634
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7635 (eq? v v1)))
                                       (if x-cnd7635 #t (member v vs)))))))))
                        g7633)))
              g7632)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7636 (lambda (v) (letrec ((g7637 v)) g7637)))) g7636)))
         (nonzero?
          (lambda (v)
            (letrec ((g7638 (letrec ((x7639 (= v 0))) (not x7639)))) g7638))))
  (letrec ((g7640
            (letrec ((g7641
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7642 '())
                                 (g7643
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7644
                                                        (lambda (k j lst)
                                                          (letrec ((g7645
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7646
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7646))
                                                                     lst)))
                                                            g7645))))
                                                g7644)))
                                           (real?/c
                                            (lambda (g7533 g7534 g7535)
                                              (letrec ((g7647
                                                        (letrec ((x-cnd7648
                                                                  (real?
                                                                   g7535)))
                                                          (if x-cnd7648
                                                            g7535
                                                            (blame
                                                             g7533
                                                             'real?)))))
                                                g7647)))
                                           (boolean?/c
                                            (lambda (g7536 g7537 g7538)
                                              (letrec ((g7649
                                                        (letrec ((x-cnd7650
                                                                  (boolean?
                                                                   g7538)))
                                                          (if x-cnd7650
                                                            g7538
                                                            (blame
                                                             g7536
                                                             'boolean?)))))
                                                g7649)))
                                           (number?/c
                                            (lambda (g7539 g7540 g7541)
                                              (letrec ((g7651
                                                        (letrec ((x-cnd7652
                                                                  (number?
                                                                   g7541)))
                                                          (if x-cnd7652
                                                            g7541
                                                            (blame
                                                             g7539
                                                             'number?)))))
                                                g7651)))
                                           (any/c
                                            (lambda (g7542 g7543 g7544)
                                              (letrec ((g7653
                                                        (letrec ((x-cnd7654
                                                                  ((lambda (v)
                                                                     (letrec ((g7655
                                                                               #t))
                                                                       g7655))
                                                                   g7544)))
                                                          (if x-cnd7654
                                                            g7544
                                                            (blame
                                                             g7542
                                                             '(lambda (v)
                                                                #t))))))
                                                g7653)))
                                           (any?/c
                                            (lambda (g7545 g7546 g7547)
                                              (letrec ((g7656
                                                        (letrec ((x-cnd7657
                                                                  ((lambda (v)
                                                                     (letrec ((g7658
                                                                               #t))
                                                                       g7658))
                                                                   g7547)))
                                                          (if x-cnd7657
                                                            g7547
                                                            (blame
                                                             g7545
                                                             '(lambda (v)
                                                                #t))))))
                                                g7656)))
                                           (cons?/c
                                            (lambda (g7548 g7549 g7550)
                                              (letrec ((g7659
                                                        (letrec ((x-cnd7660
                                                                  (pair?
                                                                   g7550)))
                                                          (if x-cnd7660
                                                            g7550
                                                            (blame
                                                             g7548
                                                             'pair?)))))
                                                g7659)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7551 g7552 g7553)
                                              (letrec ((g7661
                                                        (letrec ((x-cnd7662
                                                                  (pair?
                                                                   g7553)))
                                                          (if x-cnd7662
                                                            g7553
                                                            (blame
                                                             g7551
                                                             'pair?)))))
                                                g7661)))
                                           (integer?/c
                                            (lambda (g7554 g7555 g7556)
                                              (letrec ((g7663
                                                        (letrec ((x-cnd7664
                                                                  (integer?
                                                                   g7556)))
                                                          (if x-cnd7664
                                                            g7556
                                                            (blame
                                                             g7554
                                                             'integer?)))))
                                                g7663)))
                                           (symbol?/c
                                            (lambda (g7557 g7558 g7559)
                                              (letrec ((g7665
                                                        (letrec ((x-cnd7666
                                                                  (symbol?
                                                                   g7559)))
                                                          (if x-cnd7666
                                                            g7559
                                                            (blame
                                                             g7557
                                                             'symbol?)))))
                                                g7665)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7667
                                                        (lambda (k j v)
                                                          (letrec ((g7668
                                                                    (letrec ((x-cnd7669
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7669
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7668))))
                                                g7667)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7670
                                                        (lambda (k j v)
                                                          (letrec ((g7671
                                                                    (letrec ((x-cnd7672
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7672
                                                                        '()
                                                                        (letrec ((x7676
                                                                                  (letrec ((x7677
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7677)))
                                                                                 (x7673
                                                                                  (letrec ((x7675
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7674
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7675
                                                                                     k
                                                                                     j
                                                                                     x7674))))
                                                                          (orig-cons
                                                                           x7676
                                                                           x7673))))))
                                                            g7671))))
                                                g7670)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7678 #t)) g7678)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7679
                                                        (letrec ((x7680
                                                                  (= v 0)))
                                                          (not x7680))))
                                                g7679)))
                                           (nonzero?/c
                                            (lambda (g7560 g7561 g7562)
                                              (letrec ((g7681
                                                        (letrec ((x-cnd7682
                                                                  ((lambda (v)
                                                                     (letrec ((g7683
                                                                               (letrec ((x7684
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7684))))
                                                                       g7683))
                                                                   g7562)))
                                                          (if x-cnd7682
                                                            g7562
                                                            (blame
                                                             g7560
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7681)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7685 v)) g7685)))
                                           (+
                                            (letrec ((xj7563 'server)
                                                     (xk7564 'client))
                                              (letrec ((g7686
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g7688
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g7689
                                                                                 (letrec ((x7690
                                                                                           (letrec ((x7692
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x7691
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x7692
                                                                                              x7691))))
                                                                                   (number?/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x7690))))
                                                                         g7689))))
                                                             g7688))
                                                         xj7563
                                                         xk7564
                                                         (lambda (a b)
                                                           (letrec ((g7687
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7687)))))
                                                g7686)))
                                           (-
                                            (letrec ((xj7570 'server)
                                                     (xk7571 'client))
                                              (letrec ((g7693
                                                        ((lambda (j7574
                                                                  k7575
                                                                  f7576)
                                                           (letrec ((g7695
                                                                     (lambda (g7572
                                                                              g7573)
                                                                       (letrec ((g7696
                                                                                 (letrec ((x7697
                                                                                           (letrec ((x7699
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7572))
                                                                                                    (x7698
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7573)))
                                                                                             (f7576
                                                                                              x7699
                                                                                              x7698))))
                                                                                   (number?/c
                                                                                    j7574
                                                                                    k7575
                                                                                    x7697))))
                                                                         g7696))))
                                                             g7695))
                                                         xj7570
                                                         xk7571
                                                         (lambda (a b)
                                                           (letrec ((g7694
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7694)))))
                                                g7693)))
                                           (*
                                            (letrec ((xj7577 'server)
                                                     (xk7578 'client))
                                              (letrec ((g7700
                                                        ((lambda (j7581
                                                                  k7582
                                                                  f7583)
                                                           (letrec ((g7702
                                                                     (lambda (g7579
                                                                              g7580)
                                                                       (letrec ((g7703
                                                                                 (letrec ((x7704
                                                                                           (letrec ((x7706
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7579))
                                                                                                    (x7705
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7580)))
                                                                                             (f7583
                                                                                              x7706
                                                                                              x7705))))
                                                                                   (number?/c
                                                                                    j7581
                                                                                    k7582
                                                                                    x7704))))
                                                                         g7703))))
                                                             g7702))
                                                         xj7577
                                                         xk7578
                                                         (lambda (a b)
                                                           (letrec ((g7701
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7701)))))
                                                g7700)))
                                           (/
                                            (letrec ((xj7584 'server)
                                                     (xk7585 'client))
                                              (letrec ((g7707
                                                        ((lambda (j7588
                                                                  k7589
                                                                  f7590)
                                                           (letrec ((g7709
                                                                     (lambda (g7586
                                                                              g7587)
                                                                       (letrec ((g7710
                                                                                 (letrec ((x7711
                                                                                           (letrec ((x7713
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7586))
                                                                                                    (x7712
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7587)))
                                                                                             (f7590
                                                                                              x7713
                                                                                              x7712))))
                                                                                   (number?/c
                                                                                    j7588
                                                                                    k7589
                                                                                    x7711))))
                                                                         g7710))))
                                                             g7709))
                                                         xj7584
                                                         xk7585
                                                         (lambda (a b)
                                                           (letrec ((g7708
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7708)))))
                                                g7707)))
                                           (car
                                            (letrec ((xj7591 'server)
                                                     (xk7592 'client))
                                              (letrec ((g7714
                                                        ((lambda (j7594
                                                                  k7595
                                                                  f7596)
                                                           (letrec ((g7716
                                                                     (lambda (g7593)
                                                                       (letrec ((g7717
                                                                                 (letrec ((x7718
                                                                                           (letrec ((x7719
                                                                                                     (pair?/c
                                                                                                      j7594
                                                                                                      k7595
                                                                                                      g7593)))
                                                                                             (f7596
                                                                                              x7719))))
                                                                                   (any/c
                                                                                    j7594
                                                                                    k7595
                                                                                    x7718))))
                                                                         g7717))))
                                                             g7716))
                                                         xj7591
                                                         xk7592
                                                         (lambda (p)
                                                           (letrec ((g7715
                                                                     (orig-car
                                                                      p)))
                                                             g7715)))))
                                                g7714)))
                                           (cdr
                                            (letrec ((xj7597 'server)
                                                     (xk7598 'client))
                                              (letrec ((g7720
                                                        ((lambda (j7600
                                                                  k7601
                                                                  f7602)
                                                           (letrec ((g7722
                                                                     (lambda (g7599)
                                                                       (letrec ((g7723
                                                                                 (letrec ((x7724
                                                                                           (letrec ((x7725
                                                                                                     (pair?/c
                                                                                                      j7600
                                                                                                      k7601
                                                                                                      g7599)))
                                                                                             (f7602
                                                                                              x7725))))
                                                                                   (any/c
                                                                                    j7600
                                                                                    k7601
                                                                                    x7724))))
                                                                         g7723))))
                                                             g7722))
                                                         xj7597
                                                         xk7598
                                                         (lambda (p)
                                                           (letrec ((g7721
                                                                     (orig-cdr
                                                                      p)))
                                                             g7721)))))
                                                g7720)))
                                           (cons
                                            (letrec ((xj7603 'server)
                                                     (xk7604 'client))
                                              (letrec ((g7726
                                                        ((lambda (j7607
                                                                  k7608
                                                                  f7609)
                                                           (letrec ((g7728
                                                                     (lambda (g7605
                                                                              g7606)
                                                                       (letrec ((g7729
                                                                                 (letrec ((x7730
                                                                                           (letrec ((x7732
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7605))
                                                                                                    (x7731
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7606)))
                                                                                             (f7609
                                                                                              x7732
                                                                                              x7731))))
                                                                                   (pair?/c
                                                                                    j7607
                                                                                    k7608
                                                                                    x7730))))
                                                                         g7729))))
                                                             g7728))
                                                         xj7603
                                                         xk7604
                                                         (lambda (a b)
                                                           (letrec ((g7727
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7727)))))
                                                g7726)))
                                           (vector-ref
                                            (letrec ((xj7610 'server)
                                                     (xk7611 'client))
                                              (letrec ((g7733
                                                        ((lambda (j7613
                                                                  k7614
                                                                  f7615)
                                                           (letrec ((g7735
                                                                     (lambda (g7612)
                                                                       (letrec ((g7736
                                                                                 (letrec ((x7737
                                                                                           (letrec ((x7738
                                                                                                     (vector?/c
                                                                                                      j7613
                                                                                                      k7614
                                                                                                      g7612)))
                                                                                             (f7615
                                                                                              x7738))))
                                                                                   (integer?/c
                                                                                    j7613
                                                                                    k7614
                                                                                    x7737))))
                                                                         g7736))))
                                                             g7735))
                                                         xj7610
                                                         xk7611
                                                         (lambda (v i)
                                                           (letrec ((g7734
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7734)))))
                                                g7733)))
                                           (vector-set!
                                            (letrec ((xj7616 'server)
                                                     (xk7617 'client))
                                              (letrec ((g7739
                                                        ((lambda (j7620
                                                                  k7621
                                                                  f7622)
                                                           (letrec ((g7741
                                                                     (lambda (g7618
                                                                              g7619)
                                                                       (letrec ((g7742
                                                                                 (letrec ((x7743
                                                                                           (letrec ((x7745
                                                                                                     (vector?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7618))
                                                                                                    (x7744
                                                                                                     (integer?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7619)))
                                                                                             (f7622
                                                                                              x7745
                                                                                              x7744))))
                                                                                   (any/c
                                                                                    j7620
                                                                                    k7621
                                                                                    x7743))))
                                                                         g7742))))
                                                             g7741))
                                                         xj7616
                                                         xk7617
                                                         (lambda (vec i v)
                                                           (letrec ((g7740
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7740)))))
                                                g7739)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7746
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7746)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7747
                                                        (letrec ((x7748
                                                                  (letrec ((x7749
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7749))))
                                                          (cdr x7748))))
                                                g7747)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7750
                                                        (letrec ((x7753
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7753)))
                                                       (g7751
                                                        (letrec ((x7754
                                                                  (list? l)))
                                                          (assert x7754)))
                                                       (g7752
                                                        (letrec ((x-cnd7755
                                                                  (null? l)))
                                                          (if x-cnd7755
                                                            '()
                                                            (letrec ((x7758
                                                                      (letrec ((x7759
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7759)))
                                                                     (x7756
                                                                      (letrec ((x7757
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7757))))
                                                              (cons
                                                               x7758
                                                               x7756))))))
                                                g7752)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7760
                                                        (letrec ((x7761
                                                                  (car x)))
                                                          (cdr x7761))))
                                                g7760)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7765))))
                                                                    (cdr
                                                                     x7764))))
                                                          (car x7763))))
                                                g7762)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7768
                                                                            (letrec ((x7769
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7769))))
                                                                    (car
                                                                     x7768))))
                                                          (cdr x7767))))
                                                g7766)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7770
                                                        (letrec ((x7773
                                                                  (string?
                                                                   filename)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((x7774
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7774)))
                                                       (g7772
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7775
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7776 res))
                                                            g7776))))
                                                g7772)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7777
                                                        (letrec ((x7778
                                                                  (letrec ((x7779
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7779))))
                                                          (car x7778))))
                                                g7777)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7780
                                                        (letrec ((x7781
                                                                  (letrec ((x7782
                                                                            (letrec ((x7783
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7783))))
                                                                    (car
                                                                     x7782))))
                                                          (cdr x7781))))
                                                g7780)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7784
                                                        (letrec ((x7786
                                                                  (list? l)))
                                                          (assert x7786)))
                                                       (g7785
                                                        (letrec ((x-cnd7787
                                                                  (null? l)))
                                                          (if x-cnd7787
                                                            #f
                                                            (letrec ((x-cnd7788
                                                                      (letrec ((x7789
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7789
                                                                         k))))
                                                              (if x-cnd7788
                                                                (car l)
                                                                (letrec ((x7790
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7790))))))))
                                                g7785)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7792))))
                                                g7791)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7793
                                                        (letrec ((x7795
                                                                  (list? l)))
                                                          (assert x7795)))
                                                       (g7794
                                                        (letrec ((x-cnd7796
                                                                  (null? l)))
                                                          (if x-cnd7796
                                                            ""
                                                            (letrec ((x7799
                                                                      (letrec ((x7800
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7800)))
                                                                     (x7797
                                                                      (letrec ((x7798
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7798))))
                                                              (string-append
                                                               x7799
                                                               x7797))))))
                                                g7794)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7801
                                                        (letrec ((x7804
                                                                  (char? c1)))
                                                          (assert x7804)))
                                                       (g7802
                                                        (letrec ((x7805
                                                                  (char? c2)))
                                                          (assert x7805)))
                                                       (g7803
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7806
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7806))))
                                                g7803)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7807
                                                        (letrec ((x7808
                                                                  (letrec ((x7809
                                                                            (letrec ((x7810
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7810))))
                                                                    (cdr
                                                                     x7809))))
                                                          (cdr x7808))))
                                                g7807)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7811
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7812
                                                        (letrec ((x7815
                                                                  (number?)))
                                                          (assert x7815)))
                                                       (g7813
                                                        (letrec ((x-cnd7816
                                                                  (zero? k)))
                                                          (if x-cnd7816
                                                            x
                                                            (letrec ((x7818
                                                                      (cdr x))
                                                                     (x7817
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7818
                                                               x7817))))))
                                                g7813)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7819 '())) g7819)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7820
                                                        (letrec ((x-cnd7821
                                                                  (letrec ((x7822
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7822))))
                                                          (if x-cnd7821
                                                            (letrec ((x7823
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7823))
                                                            #f))))
                                                g7820)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7824
                                                        (letrec ((x7826
                                                                  (number? x)))
                                                          (assert x7826)))
                                                       (g7825
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g7827
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7828
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g7828)))))
                                                            g7827))))
                                                g7825)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7829
                                                        (letrec ((val7518
                                                                  (letrec ((x7830
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7830
                                                                     9))))
                                                          (letrec ((g7831
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x7832
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7832
                                                                                   10))))
                                                                        (letrec ((g7833
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x7834
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7834
                                                                                       32)))))
                                                                          g7833)))))
                                                            g7831))))
                                                g7829)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7836
                                                                  (letrec ((x7837
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7837))))
                                                          (cdr x7836))))
                                                g7835)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7840
                                                                  (number? x)))
                                                          (assert x7840)))
                                                       (g7839 (> x 0)))
                                                g7839)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7841 #f)) g7841)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7842
                                                        (letrec ((x7843
                                                                  (cdr x)))
                                                          (cdr x7843))))
                                                g7842)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7846
                                                                  (number? x)))
                                                          (assert x7846)))
                                                       (g7845
                                                        (letrec ((x-cnd7847
                                                                  (< x 0)))
                                                          (if x-cnd7847
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7845)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7848
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g7849
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd7850
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7850
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7851
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd7852
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7852
                                                                                                  (letrec ((x-cnd7853
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7853
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7854
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd7855
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7855
                                                                                                                (letrec ((x-cnd7856
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7856
                                                                                                                    (letrec ((x-cnd7857
                                                                                                                              (letrec ((x7859
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7858
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7859
                                                                                                                                 x7858))))
                                                                                                                      (if x-cnd7857
                                                                                                                        (letrec ((x7861
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7860
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7861
                                                                                                                           x7860))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7862
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd7863
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7863
                                                                                                                    (letrec ((x-cnd7864
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7864
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7865
                                                                                                                                    (letrec ((x-cnd7866
                                                                                                                                              (letrec ((x7867
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7867
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7866
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7868
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7869
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd7870
                                                                                                                                                                                      (letrec ((x7872
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7871
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7872
                                                                                                                                                                                         x7871))))
                                                                                                                                                                              (if x-cnd7870
                                                                                                                                                                                (letrec ((x7873
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7873))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7869))))
                                                                                                                                                      g7868))))
                                                                                                                                          (letrec ((g7874
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7874))
                                                                                                                                        #f))))
                                                                                                                            g7865))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7862)))))
                                                                                        g7854)))))
                                                                          g7851)))))
                                                            g7849))))
                                                g7848)))
                                           (cdaaar
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
                                                          (cdr x7876))))
                                                g7875)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7879
                                                        (letrec ((x7880
                                                                  (letrec ((x7881
                                                                            (letrec ((x7882
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7882))))
                                                                    (car
                                                                     x7881))))
                                                          (car x7880))))
                                                g7879)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7883 (eq? x y)))
                                                g7883)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7884
                                                        (letrec ((x7886
                                                                  (number? x)))
                                                          (assert x7886)))
                                                       (g7885
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g7887
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7888
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g7888)))))
                                                            g7887))))
                                                g7885)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7889
                                                        (letrec ((x7892
                                                                  (string?
                                                                   filename)))
                                                          (assert x7892)))
                                                       (g7890
                                                        (letrec ((x7893
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7893)))
                                                       (g7891
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7894
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7895 res))
                                                            g7895))))
                                                g7891)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7896 (cons x '())))
                                                g7896)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7897
                                                        (letrec ((x7900
                                                                  (char? c1)))
                                                          (assert x7900)))
                                                       (g7898
                                                        (letrec ((x7901
                                                                  (char? c2)))
                                                          (assert x7901)))
                                                       (g7899
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7902
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7902))))
                                                g7899)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7903
                                                        (letrec ((x7904
                                                                  (letrec ((x7905
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7905))))
                                                          (cdr x7904))))
                                                g7903)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7906
                                                        (letrec ((x7907
                                                                  (letrec ((x7908
                                                                            (letrec ((x7909
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7909))))
                                                                    (car
                                                                     x7908))))
                                                          (cdr x7907))))
                                                g7906)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7910
                                                        (letrec ((x7911
                                                                  (letrec ((x7912
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7912))))
                                                          (car x7911))))
                                                g7910)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7915))))
                                                          (car x7914))))
                                                g7913)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7916
                                                        (letrec ((x7919
                                                                  (char? c1)))
                                                          (assert x7919)))
                                                       (g7917
                                                        (letrec ((x7920
                                                                  (char? c2)))
                                                          (assert x7920)))
                                                       (g7918
                                                        (letrec ((x7921
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7921))))
                                                g7918)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7922
                                                        (letrec ((x7923
                                                                  (letrec ((x7924
                                                                            (letrec ((x7925
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7925))))
                                                                    (car
                                                                     x7924))))
                                                          (car x7923))))
                                                g7922)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7926
                                                        (letrec ((x7928
                                                                  (number? x)))
                                                          (assert x7928)))
                                                       (g7927 (< x 0)))
                                                g7927)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7929 (memq e l)))
                                                g7929)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7930
                                                        (letrec ((x7931
                                                                  (letrec ((x7932
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7932))))
                                                          (car x7931))))
                                                g7930)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7933 '())) g7933)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7934
                                                        (letrec ((x7936
                                                                  (list? l)))
                                                          (assert x7936)))
                                                       (g7935
                                                        (letrec ((x-cnd7937
                                                                  (null? l)))
                                                          (if x-cnd7937
                                                            '()
                                                            (letrec ((x7940
                                                                      (letrec ((x7941
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7941)))
                                                                     (x7938
                                                                      (letrec ((x7939
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7939))))
                                                              (append
                                                               x7940
                                                               x7938))))))
                                                g7935)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7942
                                                        (letrec ((x7943
                                                                  (letrec ((x7944
                                                                            (letrec ((x7945
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7945))))
                                                                    (car
                                                                     x7944))))
                                                          (car x7943))))
                                                g7942)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7946
                                                        (letrec ((x7947
                                                                  (letrec ((x7948
                                                                            (letrec ((x7949
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7949))))
                                                                    (cdr
                                                                     x7948))))
                                                          (cdr x7947))))
                                                g7946)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7950
                                                        (letrec ((x7952
                                                                  (number? x)))
                                                          (assert x7952)))
                                                       (g7951
                                                        (letrec ((x7953
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7953))))
                                                g7951)))
                                           (caadar
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
                                                          (car x7955))))
                                                g7954)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7958
                                                        (letrec ((x7961
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7961)))
                                                       (g7959
                                                        (letrec ((x7962
                                                                  (list?
                                                                   args)))
                                                          (assert x7962)))
                                                       (g7960
                                                        (letrec ((x-cnd7963
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7963
                                                            (letrec ((g7964
                                                                      (proc)))
                                                              g7964)
                                                            (letrec ((x-cnd7965
                                                                      (letrec ((x7966
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7966))))
                                                              (if x-cnd7965
                                                                (letrec ((g7967
                                                                          (letrec ((x7968
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7968))))
                                                                  g7967)
                                                                (letrec ((x-cnd7969
                                                                          (letrec ((x7970
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7970))))
                                                                  (if x-cnd7969
                                                                    (letrec ((g7971
                                                                              (letrec ((x7973
                                                                                        (car
                                                                                         args))
                                                                                       (x7972
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7973
                                                                                 x7972))))
                                                                      g7971)
                                                                    (letrec ((x-cnd7974
                                                                              (letrec ((x7975
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7975))))
                                                                      (if x-cnd7974
                                                                        (letrec ((g7976
                                                                                  (letrec ((x7979
                                                                                            (car
                                                                                             args))
                                                                                           (x7978
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7977
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7979
                                                                                     x7978
                                                                                     x7977))))
                                                                          g7976)
                                                                        (letrec ((x-cnd7980
                                                                                  (letrec ((x7981
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7981))))
                                                                          (if x-cnd7980
                                                                            (letrec ((g7982
                                                                                      (letrec ((x7986
                                                                                                (car
                                                                                                 args))
                                                                                               (x7985
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7984
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7983
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7986
                                                                                         x7985
                                                                                         x7984
                                                                                         x7983))))
                                                                              g7982)
                                                                            (letrec ((x-cnd7987
                                                                                      (letrec ((x7988
                                                                                                (letrec ((x7989
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7989))))
                                                                                        (null?
                                                                                         x7988))))
                                                                              (if x-cnd7987
                                                                                (letrec ((g7990
                                                                                          (letrec ((x7996
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7995
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7994
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7993
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7991
                                                                                                    (letrec ((x7992
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7992))))
                                                                                            (proc
                                                                                             x7996
                                                                                             x7995
                                                                                             x7994
                                                                                             x7993
                                                                                             x7991))))
                                                                                  g7990)
                                                                                (letrec ((x-cnd7997
                                                                                          (letrec ((x7998
                                                                                                    (letrec ((x7999
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7999))))
                                                                                            (null?
                                                                                             x7998))))
                                                                                  (if x-cnd7997
                                                                                    (letrec ((g8000
                                                                                              (letrec ((x8008
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8007
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8006
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8005
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8003
                                                                                                        (letrec ((x8004
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8004)))
                                                                                                       (x8001
                                                                                                        (letrec ((x8002
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8002))))
                                                                                                (proc
                                                                                                 x8008
                                                                                                 x8007
                                                                                                 x8006
                                                                                                 x8005
                                                                                                 x8003
                                                                                                 x8001))))
                                                                                      g8000)
                                                                                    (letrec ((x-cnd8009
                                                                                              (letrec ((x8010
                                                                                                        (letrec ((x8011
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8011))))
                                                                                                (null?
                                                                                                 x8010))))
                                                                                      (if x-cnd8009
                                                                                        (letrec ((g8012
                                                                                                  (letrec ((x8022
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8021
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8020
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8019
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8017
                                                                                                            (letrec ((x8018
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8018)))
                                                                                                           (x8015
                                                                                                            (letrec ((x8016
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8016)))
                                                                                                           (x8013
                                                                                                            (letrec ((x8014
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8014))))
                                                                                                    (proc
                                                                                                     x8022
                                                                                                     x8021
                                                                                                     x8020
                                                                                                     x8019
                                                                                                     x8017
                                                                                                     x8015
                                                                                                     x8013))))
                                                                                          g8012)
                                                                                        (letrec ((g8023
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8023)))))))))))))))))))
                                                g7960)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8024
                                                        (letrec ((x8026
                                                                  (list? l)))
                                                          (assert x8026)))
                                                       (g8025
                                                        (letrec ((x-cnd8027
                                                                  (null? l)))
                                                          (if x-cnd8027
                                                            #f
                                                            (letrec ((x-cnd8028
                                                                      (letrec ((x8029
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8029
                                                                         e))))
                                                              (if x-cnd8028
                                                                l
                                                                (letrec ((x8030
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8030))))))))
                                                g8025)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8031
                                                        (letrec ((x8032
                                                                  (letrec ((x8033
                                                                            (letrec ((x8034
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8034))))
                                                                    (cdr
                                                                     x8033))))
                                                          (cdr x8032))))
                                                g8031)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8035
                                                        (letrec ((x8036
                                                                  (letrec ((x8037
                                                                            (letrec ((x8038
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8038))))
                                                                    (cdr
                                                                     x8037))))
                                                          (car x8036))))
                                                g8035)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8039 (random 42)))
                                                g8039)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8040
                                                        (letrec ((x8042
                                                                  (number? x)))
                                                          (assert x8042)))
                                                       (g8041 (= x 0)))
                                                g8041)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8043
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8044
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8044))))
                                                g8043)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8045
                                                        (letrec ((x8046
                                                                  (cdr x)))
                                                          (car x8046))))
                                                g8045)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8047
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8048
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8048
                                                                      (letrec ((x8049
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8049))
                                                                      #f))))
                                                          (letrec ((g8050
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8050))))
                                                g8047)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8051
                                                        (letrec ((x8052
                                                                  (letrec ((x8053
                                                                            (letrec ((x8054
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8054))))
                                                                    (cdr
                                                                     x8053))))
                                                          (cdr x8052))))
                                                g8051)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8055
                                                        (letrec ((x-cnd8056
                                                                  (letrec ((x8057
                                                                            #\0))
                                                                    (char<=?
                                                                     x8057
                                                                     c))))
                                                          (if x-cnd8056
                                                            (letrec ((x8058
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8058))
                                                            #f))))
                                                g8055)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8059
                                                        (letrec ((x8061
                                                                  (list? l)))
                                                          (assert x8061)))
                                                       (g8060
                                                        (letrec ((x-cnd8062
                                                                  (null? l)))
                                                          (if x-cnd8062
                                                            #f
                                                            (letrec ((x-cnd8063
                                                                      (letrec ((x8064
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8064
                                                                         k))))
                                                              (if x-cnd8063
                                                                (car l)
                                                                (letrec ((x8065
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8065))))))))
                                                g8060)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8066 (if x #f #t)))
                                                g8066)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8067 (append l1 l2)))
                                                g8067)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8068
                                                        (letrec ((x8070
                                                                  (list? l)))
                                                          (assert x8070)))
                                                       (g8069
                                                        (letrec ((x-cnd8071
                                                                  (null? l)))
                                                          (if x-cnd8071
                                                            #f
                                                            (letrec ((x-cnd8072
                                                                      (letrec ((x8073
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8073
                                                                         e))))
                                                              (if x-cnd8072
                                                                l
                                                                (letrec ((x8074
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8074))))))))
                                                g8069)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8075
                                                        (letrec ((x8076
                                                                  (letrec ((x8077
                                                                            (letrec ((x8078
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8078))))
                                                                    (cdr
                                                                     x8077))))
                                                          (car x8076))))
                                                g8075)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8079
                                                        (letrec ((x8081
                                                                  (list? l)))
                                                          (assert x8081)))
                                                       (g8080
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8082
                                                                              (letrec ((x-cnd8083
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8083
                                                                                  0
                                                                                  (letrec ((x8084
                                                                                            (letrec ((x8085
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8085))))
                                                                                    (+
                                                                                     1
                                                                                     x8084))))))
                                                                      g8082))))
                                                          (letrec ((g8086
                                                                    (rec l)))
                                                            g8086))))
                                                g8080)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8087
                                                        (letrec ((x8090
                                                                  (char? c1)))
                                                          (assert x8090)))
                                                       (g8088
                                                        (letrec ((x8091
                                                                  (char? c2)))
                                                          (assert x8091)))
                                                       (g8089
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8092
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8092))))
                                                g8089)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8093
                                                        (letrec ((x8094
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8094))))
                                                g8093)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8095
                                                        (letrec ((x8096
                                                                  (letrec ((x8097
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8097))))
                                                          (cdr x8096))))
                                                g8095)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8098
                                                        (letrec ((x8100
                                                                  (list? l)))
                                                          (assert x8100)))
                                                       (g8099
                                                        (letrec ((x-cnd8101
                                                                  (null? l)))
                                                          (if x-cnd8101
                                                            #f
                                                            (letrec ((x-cnd8102
                                                                      (letrec ((x8103
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8103
                                                                         k))))
                                                              (if x-cnd8102
                                                                (car l)
                                                                (letrec ((x8104
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8104))))))))
                                                g8099)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8105
                                                        (letrec ((x8106
                                                                  (car x)))
                                                          (car x8106))))
                                                g8105)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8107
                                                        (letrec ((x8110
                                                                  (char? c1)))
                                                          (assert x8110)))
                                                       (g8108
                                                        (letrec ((x8111
                                                                  (char? c2)))
                                                          (assert x8111)))
                                                       (g8109
                                                        (letrec ((x8112
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8112))))
                                                g8109)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8113
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8114
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8114))))
                                                g8113)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8115
                                                        (letrec ((x8118
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8118)))
                                                       (g8116
                                                        (letrec ((x8119
                                                                  (list? l)))
                                                          (assert x8119)))
                                                       (g8117
                                                        (letrec ((x-cnd8120
                                                                  (null? l)))
                                                          (if x-cnd8120
                                                            #t
                                                            (letrec ((x-cnd8121
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8121
                                                                (letrec ((g8122
                                                                          (letrec ((x8124
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8124)))
                                                                         (g8123
                                                                          (letrec ((x8125
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8125))))
                                                                  g8123)
                                                                '()))))))
                                                g8117)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8126
                                                        (letrec ((x8128
                                                                  (number? x)))
                                                          (assert x8128)))
                                                       (g8127
                                                        (letrec ((x-cnd8129
                                                                  (< x 0)))
                                                          (if x-cnd8129
                                                            (- 0 x)
                                                            x))))
                                                g8127)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8130
                                                        (letrec ((x8133
                                                                  (char? c1)))
                                                          (assert x8133)))
                                                       (g8131
                                                        (letrec ((x8134
                                                                  (char? c2)))
                                                          (assert x8134)))
                                                       (g8132
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8135
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8135))))
                                                g8132)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8136
                                                        (letrec ((x8137
                                                                  (letrec ((x8138
                                                                            (letrec ((x8139
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8139))))
                                                                    (cdr
                                                                     x8138))))
                                                          (car x8137))))
                                                g8136)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8140 #f)) g8140)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8141
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8144)))
                                                                 (x8142
                                                                  (gcd m n)))
                                                          (/ x8143 x8142))))
                                                g8141)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8145
                                                        (letrec ((x8147
                                                                  (number? x)))
                                                          (assert x8147)))
                                                       (g8146
                                                        (letrec ((x8148
                                                                  (<= x y)))
                                                          (not x8148))))
                                                g8146)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8149
                                                        (letrec ((x8153
                                                                  (list? l)))
                                                          (assert x8153)))
                                                       (g8150
                                                        (letrec ((x8154
                                                                  (number?
                                                                   index)))
                                                          (assert x8154)))
                                                       (g8151
                                                        (letrec ((x8155
                                                                  (letrec ((x8156
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8156))))
                                                          (assert x8155)))
                                                       (g8152
                                                        (letrec ((x-cnd8157
                                                                  (= index 0)))
                                                          (if x-cnd8157
                                                            (car l)
                                                            (letrec ((x8159
                                                                      (cdr l))
                                                                     (x8158
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8159
                                                               x8158))))))
                                                g8152)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8160
                                                        (letrec ((x-cnd8161
                                                                  (= b 0)))
                                                          (if x-cnd8161
                                                            a
                                                            (letrec ((x8162
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8162))))))
                                                g8160)))
                                           (append
                                            (lambda (xs ys)
                                              (letrec ((g8163
                                                        (letrec ((x-cnd8164
                                                                  (empty? xs)))
                                                          (if x-cnd8164
                                                            ys
                                                            (letrec ((x8167
                                                                      (car xs))
                                                                     (x8165
                                                                      (letrec ((x8166
                                                                                (cdr
                                                                                 xs)))
                                                                        (append
                                                                         x8166
                                                                         ys))))
                                                              (cons
                                                               x8167
                                                               x8165))))))
                                                g8163))))
                                    (letrec ((g8168
                                              (parallel
                                               (parallel
                                                (letrec ((x8171
                                                          (letrec ((xj7623
                                                                    (loc
                                                                     'module))
                                                                   (xk7624
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8172
                                                                      ((lambda (j7627
                                                                                k7628
                                                                                f7629)
                                                                         (letrec ((g8173
                                                                                   (lambda (g7625
                                                                                            g7626)
                                                                                     (letrec ((g8174
                                                                                               (letrec ((x8180
                                                                                                         (listof
                                                                                                          any/c))
                                                                                                        (x8175
                                                                                                         (letrec ((x8178
                                                                                                                   (letrec ((x8179
                                                                                                                             (listof
                                                                                                                              any/c)))
                                                                                                                     (x8179
                                                                                                                      j7627
                                                                                                                      k7628
                                                                                                                      g7625)))
                                                                                                                  (x8176
                                                                                                                   (letrec ((x8177
                                                                                                                             (listof
                                                                                                                              any/c)))
                                                                                                                     (x8177
                                                                                                                      j7627
                                                                                                                      k7628
                                                                                                                      g7626))))
                                                                                                           (f7629
                                                                                                            x8178
                                                                                                            x8176))))
                                                                                                 (x8180
                                                                                                  j7627
                                                                                                  k7628
                                                                                                  x8175))))
                                                                                       g8174))))
                                                                           g8173))
                                                                       xj7623
                                                                       xk7624
                                                                       append)))
                                                              g8172)))
                                                         (x8170 (input))
                                                         (x8169 (input)))
                                                  (x8171 x8170 x8169))))))
                                      g8168))))
                          g7643))))
              g7641)))
    g7640))
