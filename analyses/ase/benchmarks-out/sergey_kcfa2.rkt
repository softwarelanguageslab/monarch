(letrec ((any? (lambda (v) (letrec ((g7623 #t)) g7623)))
         (meta (lambda (v) (letrec ((g7624 v)) g7624)))
         (member
          (lambda (v lst)
            (letrec ((g7625
                      (letrec ((g7626
                                (letrec ((x-e7627 lst))
                                  (match
                                   x-e7627
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7628 (eq? v v1)))
                                       (if x-cnd7628 #t (member v vs)))))))))
                        g7626)))
              g7625)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7629 (lambda (v) (letrec ((g7630 v)) g7630)))) g7629)))
         (nonzero?
          (lambda (v)
            (letrec ((g7631 (letrec ((x7632 (= v 0))) (not x7632)))) g7631))))
  (letrec ((g7633
            (letrec ((g7634
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7635 '())
                                 (g7636
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7637
                                                        (lambda (k j lst)
                                                          (letrec ((g7638
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7639
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7639))
                                                                     lst)))
                                                            g7638))))
                                                g7637)))
                                           (real?/c
                                            (lambda (g7533 g7534 g7535)
                                              (letrec ((g7640
                                                        (letrec ((x-cnd7641
                                                                  (real?
                                                                   g7535)))
                                                          (if x-cnd7641
                                                            g7535
                                                            (blame
                                                             g7533
                                                             'real?)))))
                                                g7640)))
                                           (boolean?/c
                                            (lambda (g7536 g7537 g7538)
                                              (letrec ((g7642
                                                        (letrec ((x-cnd7643
                                                                  (boolean?
                                                                   g7538)))
                                                          (if x-cnd7643
                                                            g7538
                                                            (blame
                                                             g7536
                                                             'boolean?)))))
                                                g7642)))
                                           (number?/c
                                            (lambda (g7539 g7540 g7541)
                                              (letrec ((g7644
                                                        (letrec ((x-cnd7645
                                                                  (number?
                                                                   g7541)))
                                                          (if x-cnd7645
                                                            g7541
                                                            (blame
                                                             g7539
                                                             'number?)))))
                                                g7644)))
                                           (any/c
                                            (lambda (g7542 g7543 g7544)
                                              (letrec ((g7646
                                                        (letrec ((x-cnd7647
                                                                  ((lambda (v)
                                                                     (letrec ((g7648
                                                                               #t))
                                                                       g7648))
                                                                   g7544)))
                                                          (if x-cnd7647
                                                            g7544
                                                            (blame
                                                             g7542
                                                             '(lambda (v)
                                                                #t))))))
                                                g7646)))
                                           (any?/c
                                            (lambda (g7545 g7546 g7547)
                                              (letrec ((g7649
                                                        (letrec ((x-cnd7650
                                                                  ((lambda (v)
                                                                     (letrec ((g7651
                                                                               #t))
                                                                       g7651))
                                                                   g7547)))
                                                          (if x-cnd7650
                                                            g7547
                                                            (blame
                                                             g7545
                                                             '(lambda (v)
                                                                #t))))))
                                                g7649)))
                                           (cons?/c
                                            (lambda (g7548 g7549 g7550)
                                              (letrec ((g7652
                                                        (letrec ((x-cnd7653
                                                                  (pair?
                                                                   g7550)))
                                                          (if x-cnd7653
                                                            g7550
                                                            (blame
                                                             g7548
                                                             'pair?)))))
                                                g7652)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7551 g7552 g7553)
                                              (letrec ((g7654
                                                        (letrec ((x-cnd7655
                                                                  (pair?
                                                                   g7553)))
                                                          (if x-cnd7655
                                                            g7553
                                                            (blame
                                                             g7551
                                                             'pair?)))))
                                                g7654)))
                                           (integer?/c
                                            (lambda (g7554 g7555 g7556)
                                              (letrec ((g7656
                                                        (letrec ((x-cnd7657
                                                                  (integer?
                                                                   g7556)))
                                                          (if x-cnd7657
                                                            g7556
                                                            (blame
                                                             g7554
                                                             'integer?)))))
                                                g7656)))
                                           (symbol?/c
                                            (lambda (g7557 g7558 g7559)
                                              (letrec ((g7658
                                                        (letrec ((x-cnd7659
                                                                  (symbol?
                                                                   g7559)))
                                                          (if x-cnd7659
                                                            g7559
                                                            (blame
                                                             g7557
                                                             'symbol?)))))
                                                g7658)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7660
                                                        (lambda (k j v)
                                                          (letrec ((g7661
                                                                    (letrec ((x-cnd7662
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7662
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7661))))
                                                g7660)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7663
                                                        (lambda (k j v)
                                                          (letrec ((g7664
                                                                    (letrec ((x-cnd7665
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7665
                                                                        '()
                                                                        (letrec ((x7669
                                                                                  (letrec ((x7670
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7670)))
                                                                                 (x7666
                                                                                  (letrec ((x7668
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7667
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7668
                                                                                     k
                                                                                     j
                                                                                     x7667))))
                                                                          (orig-cons
                                                                           x7669
                                                                           x7666))))))
                                                            g7664))))
                                                g7663)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7671 #t)) g7671)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7672
                                                        (letrec ((x7673
                                                                  (= v 0)))
                                                          (not x7673))))
                                                g7672)))
                                           (nonzero?/c
                                            (lambda (g7560 g7561 g7562)
                                              (letrec ((g7674
                                                        (letrec ((x-cnd7675
                                                                  ((lambda (v)
                                                                     (letrec ((g7676
                                                                               (letrec ((x7677
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7677))))
                                                                       g7676))
                                                                   g7562)))
                                                          (if x-cnd7675
                                                            g7562
                                                            (blame
                                                             g7560
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7674)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7678 v)) g7678)))
                                           (+
                                            (letrec ((xj7563 'server)
                                                     (xk7564 'client))
                                              (letrec ((g7679
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g7681
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g7682
                                                                                 (letrec ((x7683
                                                                                           (letrec ((x7685
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x7684
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x7685
                                                                                              x7684))))
                                                                                   (number?/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x7683))))
                                                                         g7682))))
                                                             g7681))
                                                         xj7563
                                                         xk7564
                                                         (lambda (a b)
                                                           (letrec ((g7680
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7680)))))
                                                g7679)))
                                           (-
                                            (letrec ((xj7570 'server)
                                                     (xk7571 'client))
                                              (letrec ((g7686
                                                        ((lambda (j7574
                                                                  k7575
                                                                  f7576)
                                                           (letrec ((g7688
                                                                     (lambda (g7572
                                                                              g7573)
                                                                       (letrec ((g7689
                                                                                 (letrec ((x7690
                                                                                           (letrec ((x7692
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7572))
                                                                                                    (x7691
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7573)))
                                                                                             (f7576
                                                                                              x7692
                                                                                              x7691))))
                                                                                   (number?/c
                                                                                    j7574
                                                                                    k7575
                                                                                    x7690))))
                                                                         g7689))))
                                                             g7688))
                                                         xj7570
                                                         xk7571
                                                         (lambda (a b)
                                                           (letrec ((g7687
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7687)))))
                                                g7686)))
                                           (*
                                            (letrec ((xj7577 'server)
                                                     (xk7578 'client))
                                              (letrec ((g7693
                                                        ((lambda (j7581
                                                                  k7582
                                                                  f7583)
                                                           (letrec ((g7695
                                                                     (lambda (g7579
                                                                              g7580)
                                                                       (letrec ((g7696
                                                                                 (letrec ((x7697
                                                                                           (letrec ((x7699
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7579))
                                                                                                    (x7698
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7580)))
                                                                                             (f7583
                                                                                              x7699
                                                                                              x7698))))
                                                                                   (number?/c
                                                                                    j7581
                                                                                    k7582
                                                                                    x7697))))
                                                                         g7696))))
                                                             g7695))
                                                         xj7577
                                                         xk7578
                                                         (lambda (a b)
                                                           (letrec ((g7694
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7694)))))
                                                g7693)))
                                           (/
                                            (letrec ((xj7584 'server)
                                                     (xk7585 'client))
                                              (letrec ((g7700
                                                        ((lambda (j7588
                                                                  k7589
                                                                  f7590)
                                                           (letrec ((g7702
                                                                     (lambda (g7586
                                                                              g7587)
                                                                       (letrec ((g7703
                                                                                 (letrec ((x7704
                                                                                           (letrec ((x7706
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7586))
                                                                                                    (x7705
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7587)))
                                                                                             (f7590
                                                                                              x7706
                                                                                              x7705))))
                                                                                   (number?/c
                                                                                    j7588
                                                                                    k7589
                                                                                    x7704))))
                                                                         g7703))))
                                                             g7702))
                                                         xj7584
                                                         xk7585
                                                         (lambda (a b)
                                                           (letrec ((g7701
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7701)))))
                                                g7700)))
                                           (car
                                            (letrec ((xj7591 'server)
                                                     (xk7592 'client))
                                              (letrec ((g7707
                                                        ((lambda (j7594
                                                                  k7595
                                                                  f7596)
                                                           (letrec ((g7709
                                                                     (lambda (g7593)
                                                                       (letrec ((g7710
                                                                                 (letrec ((x7711
                                                                                           (letrec ((x7712
                                                                                                     (pair?/c
                                                                                                      j7594
                                                                                                      k7595
                                                                                                      g7593)))
                                                                                             (f7596
                                                                                              x7712))))
                                                                                   (any/c
                                                                                    j7594
                                                                                    k7595
                                                                                    x7711))))
                                                                         g7710))))
                                                             g7709))
                                                         xj7591
                                                         xk7592
                                                         (lambda (p)
                                                           (letrec ((g7708
                                                                     (orig-car
                                                                      p)))
                                                             g7708)))))
                                                g7707)))
                                           (cdr
                                            (letrec ((xj7597 'server)
                                                     (xk7598 'client))
                                              (letrec ((g7713
                                                        ((lambda (j7600
                                                                  k7601
                                                                  f7602)
                                                           (letrec ((g7715
                                                                     (lambda (g7599)
                                                                       (letrec ((g7716
                                                                                 (letrec ((x7717
                                                                                           (letrec ((x7718
                                                                                                     (pair?/c
                                                                                                      j7600
                                                                                                      k7601
                                                                                                      g7599)))
                                                                                             (f7602
                                                                                              x7718))))
                                                                                   (any/c
                                                                                    j7600
                                                                                    k7601
                                                                                    x7717))))
                                                                         g7716))))
                                                             g7715))
                                                         xj7597
                                                         xk7598
                                                         (lambda (p)
                                                           (letrec ((g7714
                                                                     (orig-cdr
                                                                      p)))
                                                             g7714)))))
                                                g7713)))
                                           (cons
                                            (letrec ((xj7603 'server)
                                                     (xk7604 'client))
                                              (letrec ((g7719
                                                        ((lambda (j7607
                                                                  k7608
                                                                  f7609)
                                                           (letrec ((g7721
                                                                     (lambda (g7605
                                                                              g7606)
                                                                       (letrec ((g7722
                                                                                 (letrec ((x7723
                                                                                           (letrec ((x7725
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7605))
                                                                                                    (x7724
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7606)))
                                                                                             (f7609
                                                                                              x7725
                                                                                              x7724))))
                                                                                   (pair?/c
                                                                                    j7607
                                                                                    k7608
                                                                                    x7723))))
                                                                         g7722))))
                                                             g7721))
                                                         xj7603
                                                         xk7604
                                                         (lambda (a b)
                                                           (letrec ((g7720
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7720)))))
                                                g7719)))
                                           (vector-ref
                                            (letrec ((xj7610 'server)
                                                     (xk7611 'client))
                                              (letrec ((g7726
                                                        ((lambda (j7613
                                                                  k7614
                                                                  f7615)
                                                           (letrec ((g7728
                                                                     (lambda (g7612)
                                                                       (letrec ((g7729
                                                                                 (letrec ((x7730
                                                                                           (letrec ((x7731
                                                                                                     (vector?/c
                                                                                                      j7613
                                                                                                      k7614
                                                                                                      g7612)))
                                                                                             (f7615
                                                                                              x7731))))
                                                                                   (integer?/c
                                                                                    j7613
                                                                                    k7614
                                                                                    x7730))))
                                                                         g7729))))
                                                             g7728))
                                                         xj7610
                                                         xk7611
                                                         (lambda (v i)
                                                           (letrec ((g7727
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7727)))))
                                                g7726)))
                                           (vector-set!
                                            (letrec ((xj7616 'server)
                                                     (xk7617 'client))
                                              (letrec ((g7732
                                                        ((lambda (j7620
                                                                  k7621
                                                                  f7622)
                                                           (letrec ((g7734
                                                                     (lambda (g7618
                                                                              g7619)
                                                                       (letrec ((g7735
                                                                                 (letrec ((x7736
                                                                                           (letrec ((x7738
                                                                                                     (vector?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7618))
                                                                                                    (x7737
                                                                                                     (integer?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7619)))
                                                                                             (f7622
                                                                                              x7738
                                                                                              x7737))))
                                                                                   (any/c
                                                                                    j7620
                                                                                    k7621
                                                                                    x7736))))
                                                                         g7735))))
                                                             g7734))
                                                         xj7616
                                                         xk7617
                                                         (lambda (vec i v)
                                                           (letrec ((g7733
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7733)))))
                                                g7732)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7739
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7739)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7741
                                                                  (letrec ((x7742
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7742))))
                                                          (cdr x7741))))
                                                g7740)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7743
                                                        (letrec ((x7746
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7746)))
                                                       (g7744
                                                        (letrec ((x7747
                                                                  (list? l)))
                                                          (assert x7747)))
                                                       (g7745
                                                        (letrec ((x-cnd7748
                                                                  (null? l)))
                                                          (if x-cnd7748
                                                            '()
                                                            (letrec ((x7751
                                                                      (letrec ((x7752
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7752)))
                                                                     (x7749
                                                                      (letrec ((x7750
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7750))))
                                                              (cons
                                                               x7751
                                                               x7749))))))
                                                g7745)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7753
                                                        (letrec ((x7754
                                                                  (car x)))
                                                          (cdr x7754))))
                                                g7753)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (letrec ((x7757
                                                                            (letrec ((x7758
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7758))))
                                                                    (cdr
                                                                     x7757))))
                                                          (car x7756))))
                                                g7755)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (letrec ((x7762
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7762))))
                                                                    (car
                                                                     x7761))))
                                                          (cdr x7760))))
                                                g7759)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7763
                                                        (letrec ((x7766
                                                                  (string?
                                                                   filename)))
                                                          (assert x7766)))
                                                       (g7764
                                                        (letrec ((x7767
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7767)))
                                                       (g7765
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7768
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7769 res))
                                                            g7769))))
                                                g7765)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7770
                                                        (letrec ((x7771
                                                                  (letrec ((x7772
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7772))))
                                                          (car x7771))))
                                                g7770)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (letrec ((x7776
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7776))))
                                                                    (car
                                                                     x7775))))
                                                          (cdr x7774))))
                                                g7773)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7777
                                                        (letrec ((x7779
                                                                  (list? l)))
                                                          (assert x7779)))
                                                       (g7778
                                                        (letrec ((x-cnd7780
                                                                  (null? l)))
                                                          (if x-cnd7780
                                                            #f
                                                            (letrec ((x-cnd7781
                                                                      (letrec ((x7782
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7782
                                                                         k))))
                                                              (if x-cnd7781
                                                                (car l)
                                                                (letrec ((x7783
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7783))))))))
                                                g7778)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7784
                                                        (letrec ((x7785
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7785))))
                                                g7784)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7786
                                                        (letrec ((x7788
                                                                  (list? l)))
                                                          (assert x7788)))
                                                       (g7787
                                                        (letrec ((x-cnd7789
                                                                  (null? l)))
                                                          (if x-cnd7789
                                                            ""
                                                            (letrec ((x7792
                                                                      (letrec ((x7793
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7793)))
                                                                     (x7790
                                                                      (letrec ((x7791
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7791))))
                                                              (string-append
                                                               x7792
                                                               x7790))))))
                                                g7787)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7794
                                                        (letrec ((x7797
                                                                  (char? c1)))
                                                          (assert x7797)))
                                                       (g7795
                                                        (letrec ((x7798
                                                                  (char? c2)))
                                                          (assert x7798)))
                                                       (g7796
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7799
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7799))))
                                                g7796)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7800
                                                        (letrec ((x7801
                                                                  (letrec ((x7802
                                                                            (letrec ((x7803
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7803))))
                                                                    (cdr
                                                                     x7802))))
                                                          (cdr x7801))))
                                                g7800)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7804
                                                        (letrec ((x7807
                                                                  (list? l)))
                                                          (assert x7807)))
                                                       (g7805
                                                        (letrec ((x7808
                                                                  (number?)))
                                                          (assert x7808)))
                                                       (g7806
                                                        (letrec ((x-cnd7809
                                                                  (zero? k)))
                                                          (if x-cnd7809
                                                            x
                                                            (letrec ((x7811
                                                                      (cdr x))
                                                                     (x7810
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7811
                                                               x7810))))))
                                                g7806)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7812 '())) g7812)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7813
                                                        (letrec ((x-cnd7814
                                                                  (letrec ((x7815
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7815))))
                                                          (if x-cnd7814
                                                            (letrec ((x7816
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7816))
                                                            #f))))
                                                g7813)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7817
                                                        (letrec ((x7819
                                                                  (number? x)))
                                                          (assert x7819)))
                                                       (g7818
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g7820
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7821
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g7821)))))
                                                            g7820))))
                                                g7818)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7822
                                                        (letrec ((val7518
                                                                  (letrec ((x7823
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7823
                                                                     9))))
                                                          (letrec ((g7824
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x7825
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7825
                                                                                   10))))
                                                                        (letrec ((g7826
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x7827
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7827
                                                                                       32)))))
                                                                          g7826)))))
                                                            g7824))))
                                                g7822)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7828
                                                        (letrec ((x7829
                                                                  (letrec ((x7830
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7830))))
                                                          (cdr x7829))))
                                                g7828)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7831
                                                        (letrec ((x7833
                                                                  (number? x)))
                                                          (assert x7833)))
                                                       (g7832 (> x 0)))
                                                g7832)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7834 #f)) g7834)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7836
                                                                  (cdr x)))
                                                          (cdr x7836))))
                                                g7835)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7837
                                                        (letrec ((x7839
                                                                  (number? x)))
                                                          (assert x7839)))
                                                       (g7838
                                                        (letrec ((x-cnd7840
                                                                  (< x 0)))
                                                          (if x-cnd7840
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7838)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7841
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g7842
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd7843
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7843
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7844
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd7845
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7845
                                                                                                  (letrec ((x-cnd7846
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7846
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7847
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd7848
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7848
                                                                                                                (letrec ((x-cnd7849
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7849
                                                                                                                    (letrec ((x-cnd7850
                                                                                                                              (letrec ((x7852
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7851
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7852
                                                                                                                                 x7851))))
                                                                                                                      (if x-cnd7850
                                                                                                                        (letrec ((x7854
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7853
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7854
                                                                                                                           x7853))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7855
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd7856
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7856
                                                                                                                    (letrec ((x-cnd7857
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7857
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7858
                                                                                                                                    (letrec ((x-cnd7859
                                                                                                                                              (letrec ((x7860
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7860
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7859
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7861
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7862
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd7863
                                                                                                                                                                                      (letrec ((x7865
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7864
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7865
                                                                                                                                                                                         x7864))))
                                                                                                                                                                              (if x-cnd7863
                                                                                                                                                                                (letrec ((x7866
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7866))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7862))))
                                                                                                                                                      g7861))))
                                                                                                                                          (letrec ((g7867
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7867))
                                                                                                                                        #f))))
                                                                                                                            g7858))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7855)))))
                                                                                        g7847)))))
                                                                          g7844)))))
                                                            g7842))))
                                                g7841)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7868
                                                        (letrec ((x7869
                                                                  (letrec ((x7870
                                                                            (letrec ((x7871
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7871))))
                                                                    (car
                                                                     x7870))))
                                                          (cdr x7869))))
                                                g7868)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7872
                                                        (letrec ((x7873
                                                                  (letrec ((x7874
                                                                            (letrec ((x7875
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7875))))
                                                                    (car
                                                                     x7874))))
                                                          (car x7873))))
                                                g7872)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7876 (eq? x y)))
                                                g7876)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7877
                                                        (letrec ((x7879
                                                                  (number? x)))
                                                          (assert x7879)))
                                                       (g7878
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g7880
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7881
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g7881)))))
                                                            g7880))))
                                                g7878)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7882
                                                        (letrec ((x7885
                                                                  (string?
                                                                   filename)))
                                                          (assert x7885)))
                                                       (g7883
                                                        (letrec ((x7886
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7886)))
                                                       (g7884
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7887
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7888 res))
                                                            g7888))))
                                                g7884)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7889 (cons x '())))
                                                g7889)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7890
                                                        (letrec ((x7893
                                                                  (char? c1)))
                                                          (assert x7893)))
                                                       (g7891
                                                        (letrec ((x7894
                                                                  (char? c2)))
                                                          (assert x7894)))
                                                       (g7892
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7895
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7895))))
                                                g7892)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7896
                                                        (letrec ((x7897
                                                                  (letrec ((x7898
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7898))))
                                                          (cdr x7897))))
                                                g7896)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7899
                                                        (letrec ((x7900
                                                                  (letrec ((x7901
                                                                            (letrec ((x7902
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7902))))
                                                                    (car
                                                                     x7901))))
                                                          (cdr x7900))))
                                                g7899)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7903
                                                        (letrec ((x7904
                                                                  (letrec ((x7905
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7905))))
                                                          (car x7904))))
                                                g7903)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7906
                                                        (letrec ((x7907
                                                                  (letrec ((x7908
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7908))))
                                                          (car x7907))))
                                                g7906)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7909
                                                        (letrec ((x7912
                                                                  (char? c1)))
                                                          (assert x7912)))
                                                       (g7910
                                                        (letrec ((x7913
                                                                  (char? c2)))
                                                          (assert x7913)))
                                                       (g7911
                                                        (letrec ((x7914
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7914))))
                                                g7911)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7915
                                                        (letrec ((x7916
                                                                  (letrec ((x7917
                                                                            (letrec ((x7918
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7918))))
                                                                    (car
                                                                     x7917))))
                                                          (car x7916))))
                                                g7915)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7919
                                                        (letrec ((x7921
                                                                  (number? x)))
                                                          (assert x7921)))
                                                       (g7920 (< x 0)))
                                                g7920)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7922 (memq e l)))
                                                g7922)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7923
                                                        (letrec ((x7924
                                                                  (letrec ((x7925
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7925))))
                                                          (car x7924))))
                                                g7923)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7926 '())) g7926)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7927
                                                        (letrec ((x7929
                                                                  (list? l)))
                                                          (assert x7929)))
                                                       (g7928
                                                        (letrec ((x-cnd7930
                                                                  (null? l)))
                                                          (if x-cnd7930
                                                            '()
                                                            (letrec ((x7933
                                                                      (letrec ((x7934
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7934)))
                                                                     (x7931
                                                                      (letrec ((x7932
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7932))))
                                                              (append
                                                               x7933
                                                               x7931))))))
                                                g7928)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7935
                                                        (letrec ((x7936
                                                                  (letrec ((x7937
                                                                            (letrec ((x7938
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7938))))
                                                                    (car
                                                                     x7937))))
                                                          (car x7936))))
                                                g7935)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7939
                                                        (letrec ((x7940
                                                                  (letrec ((x7941
                                                                            (letrec ((x7942
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7942))))
                                                                    (cdr
                                                                     x7941))))
                                                          (cdr x7940))))
                                                g7939)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7943
                                                        (letrec ((x7945
                                                                  (number? x)))
                                                          (assert x7945)))
                                                       (g7944
                                                        (letrec ((x7946
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7946))))
                                                g7944)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7947
                                                        (letrec ((x7948
                                                                  (letrec ((x7949
                                                                            (letrec ((x7950
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7950))))
                                                                    (car
                                                                     x7949))))
                                                          (car x7948))))
                                                g7947)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7951
                                                        (letrec ((x7954
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7954)))
                                                       (g7952
                                                        (letrec ((x7955
                                                                  (list?
                                                                   args)))
                                                          (assert x7955)))
                                                       (g7953
                                                        (letrec ((x-cnd7956
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7956
                                                            (letrec ((g7957
                                                                      (proc)))
                                                              g7957)
                                                            (letrec ((x-cnd7958
                                                                      (letrec ((x7959
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7959))))
                                                              (if x-cnd7958
                                                                (letrec ((g7960
                                                                          (letrec ((x7961
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7961))))
                                                                  g7960)
                                                                (letrec ((x-cnd7962
                                                                          (letrec ((x7963
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7963))))
                                                                  (if x-cnd7962
                                                                    (letrec ((g7964
                                                                              (letrec ((x7966
                                                                                        (car
                                                                                         args))
                                                                                       (x7965
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7966
                                                                                 x7965))))
                                                                      g7964)
                                                                    (letrec ((x-cnd7967
                                                                              (letrec ((x7968
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7968))))
                                                                      (if x-cnd7967
                                                                        (letrec ((g7969
                                                                                  (letrec ((x7972
                                                                                            (car
                                                                                             args))
                                                                                           (x7971
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7970
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7972
                                                                                     x7971
                                                                                     x7970))))
                                                                          g7969)
                                                                        (letrec ((x-cnd7973
                                                                                  (letrec ((x7974
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7974))))
                                                                          (if x-cnd7973
                                                                            (letrec ((g7975
                                                                                      (letrec ((x7979
                                                                                                (car
                                                                                                 args))
                                                                                               (x7978
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7977
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7976
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7979
                                                                                         x7978
                                                                                         x7977
                                                                                         x7976))))
                                                                              g7975)
                                                                            (letrec ((x-cnd7980
                                                                                      (letrec ((x7981
                                                                                                (letrec ((x7982
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7982))))
                                                                                        (null?
                                                                                         x7981))))
                                                                              (if x-cnd7980
                                                                                (letrec ((g7983
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
                                                                                                       x7985))))
                                                                                            (proc
                                                                                             x7989
                                                                                             x7988
                                                                                             x7987
                                                                                             x7986
                                                                                             x7984))))
                                                                                  g7983)
                                                                                (letrec ((x-cnd7990
                                                                                          (letrec ((x7991
                                                                                                    (letrec ((x7992
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7992))))
                                                                                            (null?
                                                                                             x7991))))
                                                                                  (if x-cnd7990
                                                                                    (letrec ((g7993
                                                                                              (letrec ((x8001
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8000
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7999
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7998
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7996
                                                                                                        (letrec ((x7997
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7997)))
                                                                                                       (x7994
                                                                                                        (letrec ((x7995
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7995))))
                                                                                                (proc
                                                                                                 x8001
                                                                                                 x8000
                                                                                                 x7999
                                                                                                 x7998
                                                                                                 x7996
                                                                                                 x7994))))
                                                                                      g7993)
                                                                                    (letrec ((x-cnd8002
                                                                                              (letrec ((x8003
                                                                                                        (letrec ((x8004
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8004))))
                                                                                                (null?
                                                                                                 x8003))))
                                                                                      (if x-cnd8002
                                                                                        (letrec ((g8005
                                                                                                  (letrec ((x8015
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8014
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8013
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8012
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8010
                                                                                                            (letrec ((x8011
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8011)))
                                                                                                           (x8008
                                                                                                            (letrec ((x8009
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8009)))
                                                                                                           (x8006
                                                                                                            (letrec ((x8007
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8007))))
                                                                                                    (proc
                                                                                                     x8015
                                                                                                     x8014
                                                                                                     x8013
                                                                                                     x8012
                                                                                                     x8010
                                                                                                     x8008
                                                                                                     x8006))))
                                                                                          g8005)
                                                                                        (letrec ((g8016
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8016)))))))))))))))))))
                                                g7953)))
                                           (member
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8022
                                                                         e))))
                                                              (if x-cnd8021
                                                                l
                                                                (letrec ((x8023
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8023))))))))
                                                g8018)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8024
                                                        (letrec ((x8025
                                                                  (letrec ((x8026
                                                                            (letrec ((x8027
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8027))))
                                                                    (cdr
                                                                     x8026))))
                                                          (cdr x8025))))
                                                g8024)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8028
                                                        (letrec ((x8029
                                                                  (letrec ((x8030
                                                                            (letrec ((x8031
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8031))))
                                                                    (cdr
                                                                     x8030))))
                                                          (car x8029))))
                                                g8028)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8032 (random 42)))
                                                g8032)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8033
                                                        (letrec ((x8035
                                                                  (number? x)))
                                                          (assert x8035)))
                                                       (g8034 (= x 0)))
                                                g8034)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8036
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8037
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8037))))
                                                g8036)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8038
                                                        (letrec ((x8039
                                                                  (cdr x)))
                                                          (car x8039))))
                                                g8038)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8040
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8041
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8041
                                                                      (letrec ((x8042
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8042))
                                                                      #f))))
                                                          (letrec ((g8043
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8043))))
                                                g8040)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8044
                                                        (letrec ((x8045
                                                                  (letrec ((x8046
                                                                            (letrec ((x8047
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8047))))
                                                                    (cdr
                                                                     x8046))))
                                                          (cdr x8045))))
                                                g8044)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8048
                                                        (letrec ((x-cnd8049
                                                                  (letrec ((x8050
                                                                            #\0))
                                                                    (char<=?
                                                                     x8050
                                                                     c))))
                                                          (if x-cnd8049
                                                            (letrec ((x8051
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8051))
                                                            #f))))
                                                g8048)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8052
                                                        (letrec ((x8054
                                                                  (list? l)))
                                                          (assert x8054)))
                                                       (g8053
                                                        (letrec ((x-cnd8055
                                                                  (null? l)))
                                                          (if x-cnd8055
                                                            #f
                                                            (letrec ((x-cnd8056
                                                                      (letrec ((x8057
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8057
                                                                         k))))
                                                              (if x-cnd8056
                                                                (car l)
                                                                (letrec ((x8058
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8058))))))))
                                                g8053)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8059 (if x #f #t)))
                                                g8059)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8060 (append l1 l2)))
                                                g8060)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8061
                                                        (letrec ((x8063
                                                                  (list? l)))
                                                          (assert x8063)))
                                                       (g8062
                                                        (letrec ((x-cnd8064
                                                                  (null? l)))
                                                          (if x-cnd8064
                                                            #f
                                                            (letrec ((x-cnd8065
                                                                      (letrec ((x8066
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8066
                                                                         e))))
                                                              (if x-cnd8065
                                                                l
                                                                (letrec ((x8067
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8067))))))))
                                                g8062)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8068
                                                        (letrec ((x8069
                                                                  (letrec ((x8070
                                                                            (letrec ((x8071
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8071))))
                                                                    (cdr
                                                                     x8070))))
                                                          (car x8069))))
                                                g8068)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8072
                                                        (letrec ((x8074
                                                                  (list? l)))
                                                          (assert x8074)))
                                                       (g8073
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8075
                                                                              (letrec ((x-cnd8076
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8076
                                                                                  0
                                                                                  (letrec ((x8077
                                                                                            (letrec ((x8078
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8078))))
                                                                                    (+
                                                                                     1
                                                                                     x8077))))))
                                                                      g8075))))
                                                          (letrec ((g8079
                                                                    (rec l)))
                                                            g8079))))
                                                g8073)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8080
                                                        (letrec ((x8083
                                                                  (char? c1)))
                                                          (assert x8083)))
                                                       (g8081
                                                        (letrec ((x8084
                                                                  (char? c2)))
                                                          (assert x8084)))
                                                       (g8082
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8085
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8085))))
                                                g8082)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8086
                                                        (letrec ((x8087
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8087))))
                                                g8086)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8088
                                                        (letrec ((x8089
                                                                  (letrec ((x8090
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8090))))
                                                          (cdr x8089))))
                                                g8088)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8091
                                                        (letrec ((x8093
                                                                  (list? l)))
                                                          (assert x8093)))
                                                       (g8092
                                                        (letrec ((x-cnd8094
                                                                  (null? l)))
                                                          (if x-cnd8094
                                                            #f
                                                            (letrec ((x-cnd8095
                                                                      (letrec ((x8096
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8096
                                                                         k))))
                                                              (if x-cnd8095
                                                                (car l)
                                                                (letrec ((x8097
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8097))))))))
                                                g8092)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8098
                                                        (letrec ((x8099
                                                                  (car x)))
                                                          (car x8099))))
                                                g8098)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8100
                                                        (letrec ((x8103
                                                                  (char? c1)))
                                                          (assert x8103)))
                                                       (g8101
                                                        (letrec ((x8104
                                                                  (char? c2)))
                                                          (assert x8104)))
                                                       (g8102
                                                        (letrec ((x8105
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8105))))
                                                g8102)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8106
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8107
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8107))))
                                                g8106)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8108
                                                        (letrec ((x8111
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8111)))
                                                       (g8109
                                                        (letrec ((x8112
                                                                  (list? l)))
                                                          (assert x8112)))
                                                       (g8110
                                                        (letrec ((x-cnd8113
                                                                  (null? l)))
                                                          (if x-cnd8113
                                                            #t
                                                            (letrec ((x-cnd8114
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8114
                                                                (letrec ((g8115
                                                                          (letrec ((x8117
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8117)))
                                                                         (g8116
                                                                          (letrec ((x8118
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8118))))
                                                                  g8116)
                                                                '()))))))
                                                g8110)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8119
                                                        (letrec ((x8121
                                                                  (number? x)))
                                                          (assert x8121)))
                                                       (g8120
                                                        (letrec ((x-cnd8122
                                                                  (< x 0)))
                                                          (if x-cnd8122
                                                            (- 0 x)
                                                            x))))
                                                g8120)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8123
                                                        (letrec ((x8126
                                                                  (char? c1)))
                                                          (assert x8126)))
                                                       (g8124
                                                        (letrec ((x8127
                                                                  (char? c2)))
                                                          (assert x8127)))
                                                       (g8125
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8128
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8128))))
                                                g8125)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8129
                                                        (letrec ((x8130
                                                                  (letrec ((x8131
                                                                            (letrec ((x8132
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8132))))
                                                                    (cdr
                                                                     x8131))))
                                                          (car x8130))))
                                                g8129)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8133 #f)) g8133)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8134
                                                        (letrec ((x8136
                                                                  (letrec ((x8137
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8137)))
                                                                 (x8135
                                                                  (gcd m n)))
                                                          (/ x8136 x8135))))
                                                g8134)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8138
                                                        (letrec ((x8140
                                                                  (number? x)))
                                                          (assert x8140)))
                                                       (g8139
                                                        (letrec ((x8141
                                                                  (<= x y)))
                                                          (not x8141))))
                                                g8139)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8142
                                                        (letrec ((x8146
                                                                  (list? l)))
                                                          (assert x8146)))
                                                       (g8143
                                                        (letrec ((x8147
                                                                  (number?
                                                                   index)))
                                                          (assert x8147)))
                                                       (g8144
                                                        (letrec ((x8148
                                                                  (letrec ((x8149
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8149))))
                                                          (assert x8148)))
                                                       (g8145
                                                        (letrec ((x-cnd8150
                                                                  (= index 0)))
                                                          (if x-cnd8150
                                                            (car l)
                                                            (letrec ((x8152
                                                                      (cdr l))
                                                                     (x8151
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8152
                                                               x8151))))))
                                                g8145)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8153
                                                        (letrec ((x-cnd8154
                                                                  (= b 0)))
                                                          (if x-cnd8154
                                                            a
                                                            (letrec ((x8155
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8155))))))
                                                g8153))))
                                    (letrec ((g8156
                                              (letrec ((x8173
                                                        (letrec ((x8176 (f1))
                                                                 (x8174
                                                                  (letrec ((a
                                                                            (f1
                                                                             #t)))
                                                                    (letrec ((g8175
                                                                              (f1
                                                                               #f)))
                                                                      g8175))))
                                                          (λ x8176 x8174)))
                                                       (x8157
                                                        (letrec ((x8172 (x1))
                                                                 (x8158
                                                                  (letrec ((x8167
                                                                            (letrec ((x8171
                                                                                      (f2))
                                                                                     (x8168
                                                                                      (letrec ((b
                                                                                                (f2
                                                                                                 #t)))
                                                                                        (letrec ((g8169
                                                                                                  (letrec ((c
                                                                                                            (f2
                                                                                                             #f)))
                                                                                                    (letrec ((g8170
                                                                                                              (f2
                                                                                                               #t)))
                                                                                                      g8170))))
                                                                                          g8169))))
                                                                              (λ x8171
                                                                                x8168)))
                                                                           (x8159
                                                                            (letrec ((x8166
                                                                                      (x2))
                                                                                     (x8160
                                                                                      (letrec ((x8163
                                                                                                (letrec ((x8165
                                                                                                          (z))
                                                                                                         (x8164
                                                                                                          (z
                                                                                                           x1
                                                                                                           x2)))
                                                                                                  (λ x8165
                                                                                                    x8164)))
                                                                                               (x8161
                                                                                                (letrec ((x8162
                                                                                                          (y1
                                                                                                           y2)))
                                                                                                  (λ x8162
                                                                                                    y1))))
                                                                                        (x8163
                                                                                         x8161))))
                                                                              (λ x8166
                                                                                x8160))))
                                                                    (x8167
                                                                     x8159))))
                                                          (λ x8172 x8158))))
                                                (x8173 x8157))))
                                      g8156))))
                          g7636))))
              g7634)))
    g7633))
