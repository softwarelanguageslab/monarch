(letrec ((any? (lambda (v) (letrec ((g7871 #t)) g7871)))
         (meta (lambda (v) (letrec ((g7872 v)) g7872)))
         (member
          (lambda (v lst)
            (letrec ((g7873
                      (letrec ((g7874
                                (letrec ((x-e7875 lst))
                                  (match
                                   x-e7875
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7876 (eq? v v1)))
                                       (if x-cnd7876 #t (member v vs)))))))))
                        g7874)))
              g7873)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7877 (lambda (v) (letrec ((g7878 v)) g7878)))) g7877)))
         (nonzero?
          (lambda (v)
            (letrec ((g7879 (letrec ((x7880 (= v 0))) (not x7880)))) g7879))))
  (letrec ((g7881
            (letrec ((g7882
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7883 '())
                                 (g7884
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7885
                                                        (lambda (k j lst)
                                                          (letrec ((g7886
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7887
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7887))
                                                                     lst)))
                                                            g7886))))
                                                g7885)))
                                           (real?/c
                                            (lambda (g7533 g7534 g7535)
                                              (letrec ((g7888
                                                        (letrec ((x-cnd7889
                                                                  (real?
                                                                   g7535)))
                                                          (if x-cnd7889
                                                            g7535
                                                            (blame
                                                             g7533
                                                             'real?)))))
                                                g7888)))
                                           (boolean?/c
                                            (lambda (g7536 g7537 g7538)
                                              (letrec ((g7890
                                                        (letrec ((x-cnd7891
                                                                  (boolean?
                                                                   g7538)))
                                                          (if x-cnd7891
                                                            g7538
                                                            (blame
                                                             g7536
                                                             'boolean?)))))
                                                g7890)))
                                           (number?/c
                                            (lambda (g7539 g7540 g7541)
                                              (letrec ((g7892
                                                        (letrec ((x-cnd7893
                                                                  (number?
                                                                   g7541)))
                                                          (if x-cnd7893
                                                            g7541
                                                            (blame
                                                             g7539
                                                             'number?)))))
                                                g7892)))
                                           (any/c
                                            (lambda (g7542 g7543 g7544)
                                              (letrec ((g7894
                                                        (letrec ((x-cnd7895
                                                                  ((lambda (v)
                                                                     (letrec ((g7896
                                                                               #t))
                                                                       g7896))
                                                                   g7544)))
                                                          (if x-cnd7895
                                                            g7544
                                                            (blame
                                                             g7542
                                                             '(lambda (v)
                                                                #t))))))
                                                g7894)))
                                           (any?/c
                                            (lambda (g7545 g7546 g7547)
                                              (letrec ((g7897
                                                        (letrec ((x-cnd7898
                                                                  ((lambda (v)
                                                                     (letrec ((g7899
                                                                               #t))
                                                                       g7899))
                                                                   g7547)))
                                                          (if x-cnd7898
                                                            g7547
                                                            (blame
                                                             g7545
                                                             '(lambda (v)
                                                                #t))))))
                                                g7897)))
                                           (cons?/c
                                            (lambda (g7548 g7549 g7550)
                                              (letrec ((g7900
                                                        (letrec ((x-cnd7901
                                                                  (pair?
                                                                   g7550)))
                                                          (if x-cnd7901
                                                            g7550
                                                            (blame
                                                             g7548
                                                             'pair?)))))
                                                g7900)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7551 g7552 g7553)
                                              (letrec ((g7902
                                                        (letrec ((x-cnd7903
                                                                  (pair?
                                                                   g7553)))
                                                          (if x-cnd7903
                                                            g7553
                                                            (blame
                                                             g7551
                                                             'pair?)))))
                                                g7902)))
                                           (integer?/c
                                            (lambda (g7554 g7555 g7556)
                                              (letrec ((g7904
                                                        (letrec ((x-cnd7905
                                                                  (integer?
                                                                   g7556)))
                                                          (if x-cnd7905
                                                            g7556
                                                            (blame
                                                             g7554
                                                             'integer?)))))
                                                g7904)))
                                           (symbol?/c
                                            (lambda (g7557 g7558 g7559)
                                              (letrec ((g7906
                                                        (letrec ((x-cnd7907
                                                                  (symbol?
                                                                   g7559)))
                                                          (if x-cnd7907
                                                            g7559
                                                            (blame
                                                             g7557
                                                             'symbol?)))))
                                                g7906)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7908
                                                        (lambda (k j v)
                                                          (letrec ((g7909
                                                                    (letrec ((x-cnd7910
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7910
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7909))))
                                                g7908)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7911
                                                        (lambda (k j v)
                                                          (letrec ((g7912
                                                                    (letrec ((x-cnd7913
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7913
                                                                        '()
                                                                        (letrec ((x7917
                                                                                  (letrec ((x7918
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7918)))
                                                                                 (x7914
                                                                                  (letrec ((x7916
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7915
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7916
                                                                                     k
                                                                                     j
                                                                                     x7915))))
                                                                          (orig-cons
                                                                           x7917
                                                                           x7914))))))
                                                            g7912))))
                                                g7911)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7919 #t)) g7919)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7920
                                                        (letrec ((x7921
                                                                  (= v 0)))
                                                          (not x7921))))
                                                g7920)))
                                           (nonzero?/c
                                            (lambda (g7560 g7561 g7562)
                                              (letrec ((g7922
                                                        (letrec ((x-cnd7923
                                                                  ((lambda (v)
                                                                     (letrec ((g7924
                                                                               (letrec ((x7925
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7925))))
                                                                       g7924))
                                                                   g7562)))
                                                          (if x-cnd7923
                                                            g7562
                                                            (blame
                                                             g7560
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7922)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7926 v)) g7926)))
                                           (+
                                            (letrec ((xj7563 'server)
                                                     (xk7564 'client))
                                              (letrec ((g7927
                                                        ((lambda (j7567
                                                                  k7568
                                                                  f7569)
                                                           (letrec ((g7929
                                                                     (lambda (g7565
                                                                              g7566)
                                                                       (letrec ((g7930
                                                                                 (letrec ((x7931
                                                                                           (letrec ((x7933
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7565))
                                                                                                    (x7932
                                                                                                     (number?/c
                                                                                                      j7567
                                                                                                      k7568
                                                                                                      g7566)))
                                                                                             (f7569
                                                                                              x7933
                                                                                              x7932))))
                                                                                   (number?/c
                                                                                    j7567
                                                                                    k7568
                                                                                    x7931))))
                                                                         g7930))))
                                                             g7929))
                                                         xj7563
                                                         xk7564
                                                         (lambda (a b)
                                                           (letrec ((g7928
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7928)))))
                                                g7927)))
                                           (-
                                            (letrec ((xj7570 'server)
                                                     (xk7571 'client))
                                              (letrec ((g7934
                                                        ((lambda (j7574
                                                                  k7575
                                                                  f7576)
                                                           (letrec ((g7936
                                                                     (lambda (g7572
                                                                              g7573)
                                                                       (letrec ((g7937
                                                                                 (letrec ((x7938
                                                                                           (letrec ((x7940
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7572))
                                                                                                    (x7939
                                                                                                     (number?/c
                                                                                                      j7574
                                                                                                      k7575
                                                                                                      g7573)))
                                                                                             (f7576
                                                                                              x7940
                                                                                              x7939))))
                                                                                   (number?/c
                                                                                    j7574
                                                                                    k7575
                                                                                    x7938))))
                                                                         g7937))))
                                                             g7936))
                                                         xj7570
                                                         xk7571
                                                         (lambda (a b)
                                                           (letrec ((g7935
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7935)))))
                                                g7934)))
                                           (*
                                            (letrec ((xj7577 'server)
                                                     (xk7578 'client))
                                              (letrec ((g7941
                                                        ((lambda (j7581
                                                                  k7582
                                                                  f7583)
                                                           (letrec ((g7943
                                                                     (lambda (g7579
                                                                              g7580)
                                                                       (letrec ((g7944
                                                                                 (letrec ((x7945
                                                                                           (letrec ((x7947
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7579))
                                                                                                    (x7946
                                                                                                     (number?/c
                                                                                                      j7581
                                                                                                      k7582
                                                                                                      g7580)))
                                                                                             (f7583
                                                                                              x7947
                                                                                              x7946))))
                                                                                   (number?/c
                                                                                    j7581
                                                                                    k7582
                                                                                    x7945))))
                                                                         g7944))))
                                                             g7943))
                                                         xj7577
                                                         xk7578
                                                         (lambda (a b)
                                                           (letrec ((g7942
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7942)))))
                                                g7941)))
                                           (/
                                            (letrec ((xj7584 'server)
                                                     (xk7585 'client))
                                              (letrec ((g7948
                                                        ((lambda (j7588
                                                                  k7589
                                                                  f7590)
                                                           (letrec ((g7950
                                                                     (lambda (g7586
                                                                              g7587)
                                                                       (letrec ((g7951
                                                                                 (letrec ((x7952
                                                                                           (letrec ((x7954
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7586))
                                                                                                    (x7953
                                                                                                     (number?/c
                                                                                                      j7588
                                                                                                      k7589
                                                                                                      g7587)))
                                                                                             (f7590
                                                                                              x7954
                                                                                              x7953))))
                                                                                   (number?/c
                                                                                    j7588
                                                                                    k7589
                                                                                    x7952))))
                                                                         g7951))))
                                                             g7950))
                                                         xj7584
                                                         xk7585
                                                         (lambda (a b)
                                                           (letrec ((g7949
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7949)))))
                                                g7948)))
                                           (car
                                            (letrec ((xj7591 'server)
                                                     (xk7592 'client))
                                              (letrec ((g7955
                                                        ((lambda (j7594
                                                                  k7595
                                                                  f7596)
                                                           (letrec ((g7957
                                                                     (lambda (g7593)
                                                                       (letrec ((g7958
                                                                                 (letrec ((x7959
                                                                                           (letrec ((x7960
                                                                                                     (pair?/c
                                                                                                      j7594
                                                                                                      k7595
                                                                                                      g7593)))
                                                                                             (f7596
                                                                                              x7960))))
                                                                                   (any/c
                                                                                    j7594
                                                                                    k7595
                                                                                    x7959))))
                                                                         g7958))))
                                                             g7957))
                                                         xj7591
                                                         xk7592
                                                         (lambda (p)
                                                           (letrec ((g7956
                                                                     (orig-car
                                                                      p)))
                                                             g7956)))))
                                                g7955)))
                                           (cdr
                                            (letrec ((xj7597 'server)
                                                     (xk7598 'client))
                                              (letrec ((g7961
                                                        ((lambda (j7600
                                                                  k7601
                                                                  f7602)
                                                           (letrec ((g7963
                                                                     (lambda (g7599)
                                                                       (letrec ((g7964
                                                                                 (letrec ((x7965
                                                                                           (letrec ((x7966
                                                                                                     (pair?/c
                                                                                                      j7600
                                                                                                      k7601
                                                                                                      g7599)))
                                                                                             (f7602
                                                                                              x7966))))
                                                                                   (any/c
                                                                                    j7600
                                                                                    k7601
                                                                                    x7965))))
                                                                         g7964))))
                                                             g7963))
                                                         xj7597
                                                         xk7598
                                                         (lambda (p)
                                                           (letrec ((g7962
                                                                     (orig-cdr
                                                                      p)))
                                                             g7962)))))
                                                g7961)))
                                           (cons
                                            (letrec ((xj7603 'server)
                                                     (xk7604 'client))
                                              (letrec ((g7967
                                                        ((lambda (j7607
                                                                  k7608
                                                                  f7609)
                                                           (letrec ((g7969
                                                                     (lambda (g7605
                                                                              g7606)
                                                                       (letrec ((g7970
                                                                                 (letrec ((x7971
                                                                                           (letrec ((x7973
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7605))
                                                                                                    (x7972
                                                                                                     (any/c
                                                                                                      j7607
                                                                                                      k7608
                                                                                                      g7606)))
                                                                                             (f7609
                                                                                              x7973
                                                                                              x7972))))
                                                                                   (pair?/c
                                                                                    j7607
                                                                                    k7608
                                                                                    x7971))))
                                                                         g7970))))
                                                             g7969))
                                                         xj7603
                                                         xk7604
                                                         (lambda (a b)
                                                           (letrec ((g7968
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7968)))))
                                                g7967)))
                                           (vector-ref
                                            (letrec ((xj7610 'server)
                                                     (xk7611 'client))
                                              (letrec ((g7974
                                                        ((lambda (j7613
                                                                  k7614
                                                                  f7615)
                                                           (letrec ((g7976
                                                                     (lambda (g7612)
                                                                       (letrec ((g7977
                                                                                 (letrec ((x7978
                                                                                           (letrec ((x7979
                                                                                                     (vector?/c
                                                                                                      j7613
                                                                                                      k7614
                                                                                                      g7612)))
                                                                                             (f7615
                                                                                              x7979))))
                                                                                   (integer?/c
                                                                                    j7613
                                                                                    k7614
                                                                                    x7978))))
                                                                         g7977))))
                                                             g7976))
                                                         xj7610
                                                         xk7611
                                                         (lambda (v i)
                                                           (letrec ((g7975
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7975)))))
                                                g7974)))
                                           (vector-set!
                                            (letrec ((xj7616 'server)
                                                     (xk7617 'client))
                                              (letrec ((g7980
                                                        ((lambda (j7620
                                                                  k7621
                                                                  f7622)
                                                           (letrec ((g7982
                                                                     (lambda (g7618
                                                                              g7619)
                                                                       (letrec ((g7983
                                                                                 (letrec ((x7984
                                                                                           (letrec ((x7986
                                                                                                     (vector?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7618))
                                                                                                    (x7985
                                                                                                     (integer?/c
                                                                                                      j7620
                                                                                                      k7621
                                                                                                      g7619)))
                                                                                             (f7622
                                                                                              x7986
                                                                                              x7985))))
                                                                                   (any/c
                                                                                    j7620
                                                                                    k7621
                                                                                    x7984))))
                                                                         g7983))))
                                                             g7982))
                                                         xj7616
                                                         xk7617
                                                         (lambda (vec i v)
                                                           (letrec ((g7981
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7981)))))
                                                g7980)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7987
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7987)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7988
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7990))))
                                                          (cdr x7989))))
                                                g7988)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7991
                                                        (letrec ((x7994
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7994)))
                                                       (g7992
                                                        (letrec ((x7995
                                                                  (list? l)))
                                                          (assert x7995)))
                                                       (g7993
                                                        (letrec ((x-cnd7996
                                                                  (null? l)))
                                                          (if x-cnd7996
                                                            '()
                                                            (letrec ((x7999
                                                                      (letrec ((x8000
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x8000)))
                                                                     (x7997
                                                                      (letrec ((x7998
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7998))))
                                                              (cons
                                                               x7999
                                                               x7997))))))
                                                g7993)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g8001
                                                        (letrec ((x8002
                                                                  (car x)))
                                                          (cdr x8002))))
                                                g8001)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (letrec ((x8005
                                                                            (letrec ((x8006
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8006))))
                                                                    (cdr
                                                                     x8005))))
                                                          (car x8004))))
                                                g8003)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (letrec ((x8010
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8010))))
                                                                    (car
                                                                     x8009))))
                                                          (cdr x8008))))
                                                g8007)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g8011
                                                        (letrec ((x8014
                                                                  (string?
                                                                   filename)))
                                                          (assert x8014)))
                                                       (g8012
                                                        (letrec ((x8015
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8015)))
                                                       (g8013
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g8016
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g8017 res))
                                                            g8017))))
                                                g8013)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (letrec ((x8020
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8020))))
                                                          (car x8019))))
                                                g8018)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g8021
                                                        (letrec ((x8022
                                                                  (letrec ((x8023
                                                                            (letrec ((x8024
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8024))))
                                                                    (car
                                                                     x8023))))
                                                          (cdr x8022))))
                                                g8021)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g8025
                                                        (letrec ((x8027
                                                                  (list? l)))
                                                          (assert x8027)))
                                                       (g8026
                                                        (letrec ((x-cnd8028
                                                                  (null? l)))
                                                          (if x-cnd8028
                                                            #f
                                                            (letrec ((x-cnd8029
                                                                      (letrec ((x8030
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x8030
                                                                         k))))
                                                              (if x-cnd8029
                                                                (car l)
                                                                (letrec ((x8031
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8031))))))))
                                                g8026)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8032
                                                        (letrec ((x8033
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8033))))
                                                g8032)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8034
                                                        (letrec ((x8036
                                                                  (list? l)))
                                                          (assert x8036)))
                                                       (g8035
                                                        (letrec ((x-cnd8037
                                                                  (null? l)))
                                                          (if x-cnd8037
                                                            ""
                                                            (letrec ((x8040
                                                                      (letrec ((x8041
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8041)))
                                                                     (x8038
                                                                      (letrec ((x8039
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8039))))
                                                              (string-append
                                                               x8040
                                                               x8038))))))
                                                g8035)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8042
                                                        (letrec ((x8045
                                                                  (char? c1)))
                                                          (assert x8045)))
                                                       (g8043
                                                        (letrec ((x8046
                                                                  (char? c2)))
                                                          (assert x8046)))
                                                       (g8044
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8047
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8047))))
                                                g8044)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8048
                                                        (letrec ((x8049
                                                                  (letrec ((x8050
                                                                            (letrec ((x8051
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8051))))
                                                                    (cdr
                                                                     x8050))))
                                                          (cdr x8049))))
                                                g8048)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8052
                                                        (letrec ((x8055
                                                                  (list? l)))
                                                          (assert x8055)))
                                                       (g8053
                                                        (letrec ((x8056
                                                                  (number?)))
                                                          (assert x8056)))
                                                       (g8054
                                                        (letrec ((x-cnd8057
                                                                  (zero? k)))
                                                          (if x-cnd8057
                                                            x
                                                            (letrec ((x8059
                                                                      (cdr x))
                                                                     (x8058
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8059
                                                               x8058))))))
                                                g8054)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8060 '())) g8060)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8061
                                                        (letrec ((x-cnd8062
                                                                  (letrec ((x8063
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8063))))
                                                          (if x-cnd8062
                                                            (letrec ((x8064
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8064))
                                                            #f))))
                                                g8061)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g8065
                                                        (letrec ((x8067
                                                                  (number? x)))
                                                          (assert x8067)))
                                                       (g8066
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g8068
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8069
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g8069)))))
                                                            g8068))))
                                                g8066)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8070
                                                        (letrec ((val7518
                                                                  (letrec ((x8071
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8071
                                                                     9))))
                                                          (letrec ((g8072
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x8073
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8073
                                                                                   10))))
                                                                        (letrec ((g8074
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x8075
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8075
                                                                                       32)))))
                                                                          g8074)))))
                                                            g8072))))
                                                g8070)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8076
                                                        (letrec ((x8077
                                                                  (letrec ((x8078
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8078))))
                                                          (cdr x8077))))
                                                g8076)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8079
                                                        (letrec ((x8081
                                                                  (number? x)))
                                                          (assert x8081)))
                                                       (g8080 (> x 0)))
                                                g8080)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8082 #f)) g8082)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8083
                                                        (letrec ((x8084
                                                                  (cdr x)))
                                                          (cdr x8084))))
                                                g8083)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8085
                                                        (letrec ((x8087
                                                                  (number? x)))
                                                          (assert x8087)))
                                                       (g8086
                                                        (letrec ((x-cnd8088
                                                                  (< x 0)))
                                                          (if x-cnd8088
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8086)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8089
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g8090
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd8091
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8091
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8092
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd8093
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8093
                                                                                                  (letrec ((x-cnd8094
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8094
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8095
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd8096
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8096
                                                                                                                (letrec ((x-cnd8097
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8097
                                                                                                                    (letrec ((x-cnd8098
                                                                                                                              (letrec ((x8100
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8099
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8100
                                                                                                                                 x8099))))
                                                                                                                      (if x-cnd8098
                                                                                                                        (letrec ((x8102
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8101
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8102
                                                                                                                           x8101))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8103
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd8104
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8104
                                                                                                                    (letrec ((x-cnd8105
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8105
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8106
                                                                                                                                    (letrec ((x-cnd8107
                                                                                                                                              (letrec ((x8108
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8108
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8107
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8109
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8110
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd8111
                                                                                                                                                                                      (letrec ((x8113
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8112
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8113
                                                                                                                                                                                         x8112))))
                                                                                                                                                                              (if x-cnd8111
                                                                                                                                                                                (letrec ((x8114
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8114))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8110))))
                                                                                                                                                      g8109))))
                                                                                                                                          (letrec ((g8115
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8115))
                                                                                                                                        #f))))
                                                                                                                            g8106))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8103)))))
                                                                                        g8095)))))
                                                                          g8092)))))
                                                            g8090))))
                                                g8089)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8116
                                                        (letrec ((x8117
                                                                  (letrec ((x8118
                                                                            (letrec ((x8119
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8119))))
                                                                    (car
                                                                     x8118))))
                                                          (cdr x8117))))
                                                g8116)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8120
                                                        (letrec ((x8121
                                                                  (letrec ((x8122
                                                                            (letrec ((x8123
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8123))))
                                                                    (car
                                                                     x8122))))
                                                          (car x8121))))
                                                g8120)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8124 (eq? x y)))
                                                g8124)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g8125
                                                        (letrec ((x8127
                                                                  (number? x)))
                                                          (assert x8127)))
                                                       (g8126
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g8128
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8129
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g8129)))))
                                                            g8128))))
                                                g8126)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8130
                                                        (letrec ((x8133
                                                                  (string?
                                                                   filename)))
                                                          (assert x8133)))
                                                       (g8131
                                                        (letrec ((x8134
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8134)))
                                                       (g8132
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8135
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8136 res))
                                                            g8136))))
                                                g8132)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8137 (cons x '())))
                                                g8137)))
                                           (char>=?
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
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8143
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8143))))
                                                g8140)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8144
                                                        (letrec ((x8145
                                                                  (letrec ((x8146
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8146))))
                                                          (cdr x8145))))
                                                g8144)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8147
                                                        (letrec ((x8148
                                                                  (letrec ((x8149
                                                                            (letrec ((x8150
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8150))))
                                                                    (car
                                                                     x8149))))
                                                          (cdr x8148))))
                                                g8147)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8151
                                                        (letrec ((x8152
                                                                  (letrec ((x8153
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8153))))
                                                          (car x8152))))
                                                g8151)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8154
                                                        (letrec ((x8155
                                                                  (letrec ((x8156
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8156))))
                                                          (car x8155))))
                                                g8154)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8157
                                                        (letrec ((x8160
                                                                  (char? c1)))
                                                          (assert x8160)))
                                                       (g8158
                                                        (letrec ((x8161
                                                                  (char? c2)))
                                                          (assert x8161)))
                                                       (g8159
                                                        (letrec ((x8162
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8162))))
                                                g8159)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8163
                                                        (letrec ((x8164
                                                                  (letrec ((x8165
                                                                            (letrec ((x8166
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8166))))
                                                                    (car
                                                                     x8165))))
                                                          (car x8164))))
                                                g8163)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8167
                                                        (letrec ((x8169
                                                                  (number? x)))
                                                          (assert x8169)))
                                                       (g8168 (< x 0)))
                                                g8168)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8170 (memq e l)))
                                                g8170)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8171
                                                        (letrec ((x8172
                                                                  (letrec ((x8173
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8173))))
                                                          (car x8172))))
                                                g8171)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8174 '())) g8174)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8175
                                                        (letrec ((x8177
                                                                  (list? l)))
                                                          (assert x8177)))
                                                       (g8176
                                                        (letrec ((x-cnd8178
                                                                  (null? l)))
                                                          (if x-cnd8178
                                                            '()
                                                            (letrec ((x8181
                                                                      (letrec ((x8182
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8182)))
                                                                     (x8179
                                                                      (letrec ((x8180
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8180))))
                                                              (append
                                                               x8181
                                                               x8179))))))
                                                g8176)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8183
                                                        (letrec ((x8184
                                                                  (letrec ((x8185
                                                                            (letrec ((x8186
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8186))))
                                                                    (car
                                                                     x8185))))
                                                          (car x8184))))
                                                g8183)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8187
                                                        (letrec ((x8188
                                                                  (letrec ((x8189
                                                                            (letrec ((x8190
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8190))))
                                                                    (cdr
                                                                     x8189))))
                                                          (cdr x8188))))
                                                g8187)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8191
                                                        (letrec ((x8193
                                                                  (number? x)))
                                                          (assert x8193)))
                                                       (g8192
                                                        (letrec ((x8194
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8194))))
                                                g8192)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8195
                                                        (letrec ((x8196
                                                                  (letrec ((x8197
                                                                            (letrec ((x8198
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8198))))
                                                                    (car
                                                                     x8197))))
                                                          (car x8196))))
                                                g8195)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8199
                                                        (letrec ((x8202
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8202)))
                                                       (g8200
                                                        (letrec ((x8203
                                                                  (list?
                                                                   args)))
                                                          (assert x8203)))
                                                       (g8201
                                                        (letrec ((x-cnd8204
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8204
                                                            (letrec ((g8205
                                                                      (proc)))
                                                              g8205)
                                                            (letrec ((x-cnd8206
                                                                      (letrec ((x8207
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8207))))
                                                              (if x-cnd8206
                                                                (letrec ((g8208
                                                                          (letrec ((x8209
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8209))))
                                                                  g8208)
                                                                (letrec ((x-cnd8210
                                                                          (letrec ((x8211
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8211))))
                                                                  (if x-cnd8210
                                                                    (letrec ((g8212
                                                                              (letrec ((x8214
                                                                                        (car
                                                                                         args))
                                                                                       (x8213
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8214
                                                                                 x8213))))
                                                                      g8212)
                                                                    (letrec ((x-cnd8215
                                                                              (letrec ((x8216
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8216))))
                                                                      (if x-cnd8215
                                                                        (letrec ((g8217
                                                                                  (letrec ((x8220
                                                                                            (car
                                                                                             args))
                                                                                           (x8219
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8218
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8220
                                                                                     x8219
                                                                                     x8218))))
                                                                          g8217)
                                                                        (letrec ((x-cnd8221
                                                                                  (letrec ((x8222
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8222))))
                                                                          (if x-cnd8221
                                                                            (letrec ((g8223
                                                                                      (letrec ((x8227
                                                                                                (car
                                                                                                 args))
                                                                                               (x8226
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8225
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8224
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8227
                                                                                         x8226
                                                                                         x8225
                                                                                         x8224))))
                                                                              g8223)
                                                                            (letrec ((x-cnd8228
                                                                                      (letrec ((x8229
                                                                                                (letrec ((x8230
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8230))))
                                                                                        (null?
                                                                                         x8229))))
                                                                              (if x-cnd8228
                                                                                (letrec ((g8231
                                                                                          (letrec ((x8237
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8236
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8235
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8234
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8232
                                                                                                    (letrec ((x8233
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8233))))
                                                                                            (proc
                                                                                             x8237
                                                                                             x8236
                                                                                             x8235
                                                                                             x8234
                                                                                             x8232))))
                                                                                  g8231)
                                                                                (letrec ((x-cnd8238
                                                                                          (letrec ((x8239
                                                                                                    (letrec ((x8240
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8240))))
                                                                                            (null?
                                                                                             x8239))))
                                                                                  (if x-cnd8238
                                                                                    (letrec ((g8241
                                                                                              (letrec ((x8249
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8248
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8247
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8246
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8244
                                                                                                        (letrec ((x8245
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8245)))
                                                                                                       (x8242
                                                                                                        (letrec ((x8243
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8243))))
                                                                                                (proc
                                                                                                 x8249
                                                                                                 x8248
                                                                                                 x8247
                                                                                                 x8246
                                                                                                 x8244
                                                                                                 x8242))))
                                                                                      g8241)
                                                                                    (letrec ((x-cnd8250
                                                                                              (letrec ((x8251
                                                                                                        (letrec ((x8252
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8252))))
                                                                                                (null?
                                                                                                 x8251))))
                                                                                      (if x-cnd8250
                                                                                        (letrec ((g8253
                                                                                                  (letrec ((x8263
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8262
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8261
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8260
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8258
                                                                                                            (letrec ((x8259
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8259)))
                                                                                                           (x8256
                                                                                                            (letrec ((x8257
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8257)))
                                                                                                           (x8254
                                                                                                            (letrec ((x8255
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8255))))
                                                                                                    (proc
                                                                                                     x8263
                                                                                                     x8262
                                                                                                     x8261
                                                                                                     x8260
                                                                                                     x8258
                                                                                                     x8256
                                                                                                     x8254))))
                                                                                          g8253)
                                                                                        (letrec ((g8264
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8264)))))))))))))))))))
                                                g8201)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8265
                                                        (letrec ((x8267
                                                                  (list? l)))
                                                          (assert x8267)))
                                                       (g8266
                                                        (letrec ((x-cnd8268
                                                                  (null? l)))
                                                          (if x-cnd8268
                                                            #f
                                                            (letrec ((x-cnd8269
                                                                      (letrec ((x8270
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8270
                                                                         e))))
                                                              (if x-cnd8269
                                                                l
                                                                (letrec ((x8271
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8271))))))))
                                                g8266)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8272
                                                        (letrec ((x8273
                                                                  (letrec ((x8274
                                                                            (letrec ((x8275
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8275))))
                                                                    (cdr
                                                                     x8274))))
                                                          (cdr x8273))))
                                                g8272)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8276
                                                        (letrec ((x8277
                                                                  (letrec ((x8278
                                                                            (letrec ((x8279
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8279))))
                                                                    (cdr
                                                                     x8278))))
                                                          (car x8277))))
                                                g8276)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8280 (random 42)))
                                                g8280)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8281
                                                        (letrec ((x8283
                                                                  (number? x)))
                                                          (assert x8283)))
                                                       (g8282 (= x 0)))
                                                g8282)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8284
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8285
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8285))))
                                                g8284)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8286
                                                        (letrec ((x8287
                                                                  (cdr x)))
                                                          (car x8287))))
                                                g8286)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8288
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8289
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8289
                                                                      (letrec ((x8290
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8290))
                                                                      #f))))
                                                          (letrec ((g8291
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8291))))
                                                g8288)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8292
                                                        (letrec ((x8293
                                                                  (letrec ((x8294
                                                                            (letrec ((x8295
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8295))))
                                                                    (cdr
                                                                     x8294))))
                                                          (cdr x8293))))
                                                g8292)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8296
                                                        (letrec ((x-cnd8297
                                                                  (letrec ((x8298
                                                                            #\0))
                                                                    (char<=?
                                                                     x8298
                                                                     c))))
                                                          (if x-cnd8297
                                                            (letrec ((x8299
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8299))
                                                            #f))))
                                                g8296)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8300
                                                        (letrec ((x8302
                                                                  (list? l)))
                                                          (assert x8302)))
                                                       (g8301
                                                        (letrec ((x-cnd8303
                                                                  (null? l)))
                                                          (if x-cnd8303
                                                            #f
                                                            (letrec ((x-cnd8304
                                                                      (letrec ((x8305
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8305
                                                                         k))))
                                                              (if x-cnd8304
                                                                (car l)
                                                                (letrec ((x8306
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8306))))))))
                                                g8301)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8307 (if x #f #t)))
                                                g8307)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8308 (append l1 l2)))
                                                g8308)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8309
                                                        (letrec ((x8311
                                                                  (list? l)))
                                                          (assert x8311)))
                                                       (g8310
                                                        (letrec ((x-cnd8312
                                                                  (null? l)))
                                                          (if x-cnd8312
                                                            #f
                                                            (letrec ((x-cnd8313
                                                                      (letrec ((x8314
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8314
                                                                         e))))
                                                              (if x-cnd8313
                                                                l
                                                                (letrec ((x8315
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8315))))))))
                                                g8310)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8316
                                                        (letrec ((x8317
                                                                  (letrec ((x8318
                                                                            (letrec ((x8319
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8319))))
                                                                    (cdr
                                                                     x8318))))
                                                          (car x8317))))
                                                g8316)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8320
                                                        (letrec ((x8322
                                                                  (list? l)))
                                                          (assert x8322)))
                                                       (g8321
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8323
                                                                              (letrec ((x-cnd8324
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8324
                                                                                  0
                                                                                  (letrec ((x8325
                                                                                            (letrec ((x8326
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8326))))
                                                                                    (+
                                                                                     1
                                                                                     x8325))))))
                                                                      g8323))))
                                                          (letrec ((g8327
                                                                    (rec l)))
                                                            g8327))))
                                                g8321)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8328
                                                        (letrec ((x8331
                                                                  (char? c1)))
                                                          (assert x8331)))
                                                       (g8329
                                                        (letrec ((x8332
                                                                  (char? c2)))
                                                          (assert x8332)))
                                                       (g8330
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8333
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8333))))
                                                g8330)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8334
                                                        (letrec ((x8335
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8335))))
                                                g8334)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8336
                                                        (letrec ((x8337
                                                                  (letrec ((x8338
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8338))))
                                                          (cdr x8337))))
                                                g8336)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8339
                                                        (letrec ((x8341
                                                                  (list? l)))
                                                          (assert x8341)))
                                                       (g8340
                                                        (letrec ((x-cnd8342
                                                                  (null? l)))
                                                          (if x-cnd8342
                                                            #f
                                                            (letrec ((x-cnd8343
                                                                      (letrec ((x8344
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8344
                                                                         k))))
                                                              (if x-cnd8343
                                                                (car l)
                                                                (letrec ((x8345
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8345))))))))
                                                g8340)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8346
                                                        (letrec ((x8347
                                                                  (car x)))
                                                          (car x8347))))
                                                g8346)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8348
                                                        (letrec ((x8351
                                                                  (char? c1)))
                                                          (assert x8351)))
                                                       (g8349
                                                        (letrec ((x8352
                                                                  (char? c2)))
                                                          (assert x8352)))
                                                       (g8350
                                                        (letrec ((x8353
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8353))))
                                                g8350)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8354
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8355
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8355))))
                                                g8354)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8356
                                                        (letrec ((x8359
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8359)))
                                                       (g8357
                                                        (letrec ((x8360
                                                                  (list? l)))
                                                          (assert x8360)))
                                                       (g8358
                                                        (letrec ((x-cnd8361
                                                                  (null? l)))
                                                          (if x-cnd8361
                                                            #t
                                                            (letrec ((x-cnd8362
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8362
                                                                (letrec ((g8363
                                                                          (letrec ((x8365
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8365)))
                                                                         (g8364
                                                                          (letrec ((x8366
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8366))))
                                                                  g8364)
                                                                '()))))))
                                                g8358)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8367
                                                        (letrec ((x8369
                                                                  (number? x)))
                                                          (assert x8369)))
                                                       (g8368
                                                        (letrec ((x-cnd8370
                                                                  (< x 0)))
                                                          (if x-cnd8370
                                                            (- 0 x)
                                                            x))))
                                                g8368)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8371
                                                        (letrec ((x8374
                                                                  (char? c1)))
                                                          (assert x8374)))
                                                       (g8372
                                                        (letrec ((x8375
                                                                  (char? c2)))
                                                          (assert x8375)))
                                                       (g8373
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8376
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8376))))
                                                g8373)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8377
                                                        (letrec ((x8378
                                                                  (letrec ((x8379
                                                                            (letrec ((x8380
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8380))))
                                                                    (cdr
                                                                     x8379))))
                                                          (car x8378))))
                                                g8377)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8381 #f)) g8381)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8382
                                                        (letrec ((x8384
                                                                  (letrec ((x8385
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8385)))
                                                                 (x8383
                                                                  (gcd m n)))
                                                          (/ x8384 x8383))))
                                                g8382)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8386
                                                        (letrec ((x8388
                                                                  (number? x)))
                                                          (assert x8388)))
                                                       (g8387
                                                        (letrec ((x8389
                                                                  (<= x y)))
                                                          (not x8389))))
                                                g8387)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8390
                                                        (letrec ((x8394
                                                                  (list? l)))
                                                          (assert x8394)))
                                                       (g8391
                                                        (letrec ((x8395
                                                                  (number?
                                                                   index)))
                                                          (assert x8395)))
                                                       (g8392
                                                        (letrec ((x8396
                                                                  (letrec ((x8397
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8397))))
                                                          (assert x8396)))
                                                       (g8393
                                                        (letrec ((x-cnd8398
                                                                  (= index 0)))
                                                          (if x-cnd8398
                                                            (car l)
                                                            (letrec ((x8400
                                                                      (cdr l))
                                                                     (x8399
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8400
                                                               x8399))))))
                                                g8393)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8401
                                                        (letrec ((x-cnd8402
                                                                  (= b 0)))
                                                          (if x-cnd8402
                                                            a
                                                            (letrec ((x8403
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8403))))))
                                                g8401)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8404
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8404)))
                                           (image?
                                            (lambda (image7870)
                                              (letrec ((g8405
                                                        (letrec ((x8406
                                                                  (car
                                                                   image7870)))
                                                          (eq? x8406 'image))))
                                                g8405)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8407 (image)))
                                                g8407)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8408 (image)))
                                                g8408)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8409 (image)))
                                                g8409)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8410
                                                        (letrec ((x-cnd8411
                                                                  (<= x y)))
                                                          (if x-cnd8411 x y))))
                                                g8410)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8412
                                                        (letrec ((x-cnd8413
                                                                  (>= x y)))
                                                          (if x-cnd8413 x y))))
                                                g8412)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8414
                                                        (letrec ((x-cnd8415
                                                                  (>= x 0)))
                                                          (if x-cnd8415
                                                            x
                                                            (- 0 x)))))
                                                g8414)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8416 (* x x)))
                                                g8416)))
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
                                            (lambda (j7624 k7625 f7626)
                                              (letrec ((g8417
                                                        (lambda (g7623)
                                                          (letrec ((g8418
                                                                    (letrec ((x7627
                                                                              ((lambda (g7631
                                                                                        g7632
                                                                                        g7633)
                                                                                 (letrec ((g8419
                                                                                           (letrec ((x-cnd8420
                                                                                                     ((lambda (v7630)
                                                                                                        (letrec ((g8421
                                                                                                                  (letrec ((x-cnd8422
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7630)))
                                                                                                                    (if x-cnd8422
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8423
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7630)))
                                                                                                                        (if x-cnd8423
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8424
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7630)))
                                                                                                                            (if x-cnd8424
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8425
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7630)))
                                                                                                                                (if x-cnd8425
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8426
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7630)))
                                                                                                                                    (if x-cnd8426
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7630)))))))))))))
                                                                                                          g8421))
                                                                                                      g7633)))
                                                                                             (if x-cnd8420
                                                                                               g7633
                                                                                               (blame
                                                                                                g7631
                                                                                                '(lambda (v7630)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7630)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7630)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7630)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7630)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7630)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7630))))))))))))
                                                                                   g8419))
                                                                               j7624
                                                                               k7625
                                                                               g7623)))
                                                                      (letrec ((g8427
                                                                                (letrec ((x8429
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8430
                                                                                                       (letrec ((x-cnd8431
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8431
                                                                                                           (letrec ((g8432
                                                                                                                     (lambda (j7634
                                                                                                                              k7635
                                                                                                                              f7636)
                                                                                                                       (letrec ((g8433
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8434
                                                                                                                                             (letrec ((x8435
                                                                                                                                                       (f7636)))
                                                                                                                                               (real?
                                                                                                                                                j7634
                                                                                                                                                k7635
                                                                                                                                                x8435))))
                                                                                                                                     g8434))))
                                                                                                                         g8433))))
                                                                                                             g8432)
                                                                                                           (letrec ((x-cnd8436
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8436
                                                                                                               (letrec ((g8437
                                                                                                                         (lambda (j7637
                                                                                                                                  k7638
                                                                                                                                  f7639)
                                                                                                                           (letrec ((g8438
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8439
                                                                                                                                                 (letrec ((x8440
                                                                                                                                                           (f7639)))
                                                                                                                                                   (real?
                                                                                                                                                    j7637
                                                                                                                                                    k7638
                                                                                                                                                    x8440))))
                                                                                                                                         g8439))))
                                                                                                                             g8438))))
                                                                                                                 g8437)
                                                                                                               (letrec ((x-cnd8441
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8441
                                                                                                                   (letrec ((g8442
                                                                                                                             (lambda (j7640
                                                                                                                                      k7641
                                                                                                                                      f7642)
                                                                                                                               (letrec ((g8443
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8444
                                                                                                                                                     (letrec ((x8445
                                                                                                                                                               (f7642)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7640
                                                                                                                                                        k7641
                                                                                                                                                        x8445))))
                                                                                                                                             g8444))))
                                                                                                                                 g8443))))
                                                                                                                     g8442)
                                                                                                                   (letrec ((x-cnd8446
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8446
                                                                                                                       (letrec ((g8447
                                                                                                                                 (lambda (j7645
                                                                                                                                          k7646
                                                                                                                                          f7647)
                                                                                                                                   (letrec ((g8448
                                                                                                                                             (lambda (g7643
                                                                                                                                                      g7644)
                                                                                                                                               (letrec ((g8449
                                                                                                                                                         (letrec ((x8450
                                                                                                                                                                   (letrec ((x8452
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7645
                                                                                                                                                                              k7646
                                                                                                                                                                              g7643))
                                                                                                                                                                            (x8451
                                                                                                                                                                             (real?
                                                                                                                                                                              j7645
                                                                                                                                                                              k7646
                                                                                                                                                                              g7644)))
                                                                                                                                                                     (f7647
                                                                                                                                                                      x8452
                                                                                                                                                                      x8451))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7645
                                                                                                                                                            k7646
                                                                                                                                                            x8450))))
                                                                                                                                                 g8449))))
                                                                                                                                     g8448))))
                                                                                                                         g8447)
                                                                                                                       (letrec ((x-cnd8453
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8453
                                                                                                                           (letrec ((g8454
                                                                                                                                     (lambda (j7650
                                                                                                                                              k7651
                                                                                                                                              f7652)
                                                                                                                                       (letrec ((g8455
                                                                                                                                                 (lambda (g7648
                                                                                                                                                          g7649)
                                                                                                                                                   (letrec ((g8456
                                                                                                                                                             (letrec ((x8457
                                                                                                                                                                       (letrec ((x8459
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7650
                                                                                                                                                                                  k7651
                                                                                                                                                                                  g7648))
                                                                                                                                                                                (x8458
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7650
                                                                                                                                                                                  k7651
                                                                                                                                                                                  g7649)))
                                                                                                                                                                         (f7652
                                                                                                                                                                          x8459
                                                                                                                                                                          x8458))))
                                                                                                                                                               (image?
                                                                                                                                                                j7650
                                                                                                                                                                k7651
                                                                                                                                                                x8457))))
                                                                                                                                                     g8456))))
                                                                                                                                         g8455))))
                                                                                                                             g8454)
                                                                                                                           (letrec ((x-cnd8460
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8460
                                                                                                                               (letrec ((g8461
                                                                                                                                         (lambda (j7654
                                                                                                                                                  k7655
                                                                                                                                                  f7656)
                                                                                                                                           (letrec ((g8462
                                                                                                                                                     (lambda (g7653)
                                                                                                                                                       (letrec ((g8463
                                                                                                                                                                 (letrec ((x8464
                                                                                                                                                                           (letrec ((x8465
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7654
                                                                                                                                                                                      k7655
                                                                                                                                                                                      g7653)))
                                                                                                                                                                             (f7656
                                                                                                                                                                              x8465))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7654
                                                                                                                                                                    k7655
                                                                                                                                                                    x8464))))
                                                                                                                                                         g8463))))
                                                                                                                                             g8462))))
                                                                                                                                 g8461)
                                                                                                                               (letrec ((g8466
                                                                                                                                         "error"))
                                                                                                                                 g8466)))))))))))))))
                                                                                               g8430))
                                                                                           x7627))
                                                                                         (x8428
                                                                                          (f7626
                                                                                           x7627)))
                                                                                  (x8429
                                                                                   j7624
                                                                                   k7625
                                                                                   x8428))))
                                                                        g8427))))
                                                            g8418))))
                                                g8417)))
                                           (player/c
                                            (lambda (j7658 k7659 f7660)
                                              (letrec ((g8467
                                                        (lambda (g7657)
                                                          (letrec ((g8468
                                                                    (letrec ((x7661
                                                                              ((lambda (g7665
                                                                                        g7666
                                                                                        g7667)
                                                                                 (letrec ((g8469
                                                                                           (letrec ((x-cnd8470
                                                                                                     ((lambda (v7664)
                                                                                                        (letrec ((g8471
                                                                                                                  (letrec ((x-cnd8472
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7664)))
                                                                                                                    (if x-cnd8472
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8473
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7664)))
                                                                                                                        (if x-cnd8473
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7664)))))))
                                                                                                          g8471))
                                                                                                      g7667)))
                                                                                             (if x-cnd8470
                                                                                               g7667
                                                                                               (blame
                                                                                                g7665
                                                                                                '(lambda (v7664)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7664)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7664)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7664)))))))))
                                                                                   g8469))
                                                                               j7658
                                                                               k7659
                                                                               g7657)))
                                                                      (letrec ((g8474
                                                                                (letrec ((x8476
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8477
                                                                                                       (letrec ((x-cnd8478
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8478
                                                                                                           (letrec ((g8479
                                                                                                                     (lambda (j7668
                                                                                                                              k7669
                                                                                                                              f7670)
                                                                                                                       (letrec ((g8480
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8481
                                                                                                                                             (letrec ((x8482
                                                                                                                                                       (f7670)))
                                                                                                                                               (posn/c
                                                                                                                                                j7668
                                                                                                                                                k7669
                                                                                                                                                x8482))))
                                                                                                                                     g8481))))
                                                                                                                         g8480))))
                                                                                                             g8479)
                                                                                                           (letrec ((x-cnd8483
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8483
                                                                                                               (letrec ((g8484
                                                                                                                         (lambda (j7672
                                                                                                                                  k7673
                                                                                                                                  f7674)
                                                                                                                           (letrec ((g8485
                                                                                                                                     (lambda (g7671)
                                                                                                                                       (letrec ((g8486
                                                                                                                                                 (letrec ((x8487
                                                                                                                                                           (letrec ((x8488
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7672
                                                                                                                                                                      k7673
                                                                                                                                                                      g7671)))
                                                                                                                                                             (f7674
                                                                                                                                                              x8488))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7672
                                                                                                                                                    k7673
                                                                                                                                                    x8487))))
                                                                                                                                         g8486))))
                                                                                                                             g8485))))
                                                                                                                 g8484)
                                                                                                               (letrec ((x-cnd8489
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8489
                                                                                                                   (letrec ((g8490
                                                                                                                             (lambda (j7676
                                                                                                                                      k7677
                                                                                                                                      f7678)
                                                                                                                               (letrec ((g8491
                                                                                                                                         (lambda (g7675)
                                                                                                                                           (letrec ((g8492
                                                                                                                                                     (letrec ((x8493
                                                                                                                                                               (letrec ((x8494
                                                                                                                                                                         (image?
                                                                                                                                                                          j7676
                                                                                                                                                                          k7677
                                                                                                                                                                          g7675)))
                                                                                                                                                                 (f7678
                                                                                                                                                                  x8494))))
                                                                                                                                                       (image?
                                                                                                                                                        j7676
                                                                                                                                                        k7677
                                                                                                                                                        x8493))))
                                                                                                                                             g8492))))
                                                                                                                                 g8491))))
                                                                                                                     g8490)
                                                                                                                   (letrec ((g8495
                                                                                                                             "error"))
                                                                                                                     g8495)))))))))
                                                                                               g8477))
                                                                                           x7661))
                                                                                         (x8475
                                                                                          (f7660
                                                                                           x7661)))
                                                                                  (x8476
                                                                                   j7658
                                                                                   k7659
                                                                                   x8475))))
                                                                        g8474))))
                                                            g8468))))
                                                g8467)))
                                           (zombie/c
                                            (lambda (j7680 k7681 f7682)
                                              (letrec ((g8496
                                                        (lambda (g7679)
                                                          (letrec ((g8497
                                                                    (letrec ((x7683
                                                                              ((lambda (g7687
                                                                                        g7688
                                                                                        g7689)
                                                                                 (letrec ((g8498
                                                                                           (letrec ((x-cnd8499
                                                                                                     ((lambda (v7686)
                                                                                                        (letrec ((g8500
                                                                                                                  (letrec ((x-cnd8501
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7686)))
                                                                                                                    (if x-cnd8501
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8502
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7686)))
                                                                                                                        (if x-cnd8502
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8503
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7686)))
                                                                                                                            (if x-cnd8503
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7686)))))))))
                                                                                                          g8500))
                                                                                                      g7689)))
                                                                                             (if x-cnd8499
                                                                                               g7689
                                                                                               (blame
                                                                                                g7687
                                                                                                '(lambda (v7686)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7686)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7686)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7686)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7686))))))))))
                                                                                   g8498))
                                                                               j7680
                                                                               k7681
                                                                               g7679)))
                                                                      (letrec ((g8504
                                                                                (letrec ((x8506
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8507
                                                                                                       (letrec ((x-cnd8508
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8508
                                                                                                           (letrec ((g8509
                                                                                                                     (lambda (j7690
                                                                                                                              k7691
                                                                                                                              f7692)
                                                                                                                       (letrec ((g8510
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8511
                                                                                                                                             (letrec ((x8512
                                                                                                                                                       (f7692)))
                                                                                                                                               (posn/c
                                                                                                                                                j7690
                                                                                                                                                k7691
                                                                                                                                                x8512))))
                                                                                                                                     g8511))))
                                                                                                                         g8510))))
                                                                                                             g8509)
                                                                                                           (letrec ((x-cnd8513
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8513
                                                                                                               (letrec ((g8514
                                                                                                                         (lambda (j7695
                                                                                                                                  k7696
                                                                                                                                  f7697)
                                                                                                                           (letrec ((g8515
                                                                                                                                     (lambda (g7693
                                                                                                                                              g7694)
                                                                                                                                       (letrec ((g8516
                                                                                                                                                 (letrec ((x8517
                                                                                                                                                           (letrec ((x8519
                                                                                                                                                                     (string?
                                                                                                                                                                      j7695
                                                                                                                                                                      k7696
                                                                                                                                                                      g7693))
                                                                                                                                                                    (x8518
                                                                                                                                                                     (image?
                                                                                                                                                                      j7695
                                                                                                                                                                      k7696
                                                                                                                                                                      g7694)))
                                                                                                                                                             (f7697
                                                                                                                                                              x8519
                                                                                                                                                              x8518))))
                                                                                                                                                   (image?
                                                                                                                                                    j7695
                                                                                                                                                    k7696
                                                                                                                                                    x8517))))
                                                                                                                                         g8516))))
                                                                                                                             g8515))))
                                                                                                                 g8514)
                                                                                                               (letrec ((x-cnd8520
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8520
                                                                                                                   (letrec ((g8521
                                                                                                                             (lambda (j7699
                                                                                                                                      k7700
                                                                                                                                      f7701)
                                                                                                                               (letrec ((g8522
                                                                                                                                         (lambda (g7698)
                                                                                                                                           (letrec ((g8523
                                                                                                                                                     (letrec ((x8524
                                                                                                                                                               (letrec ((x8525
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7699
                                                                                                                                                                          k7700
                                                                                                                                                                          g7698)))
                                                                                                                                                                 (f7701
                                                                                                                                                                  x8525))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7699
                                                                                                                                                        k7700
                                                                                                                                                        x8524))))
                                                                                                                                             g8523))))
                                                                                                                                 g8522))))
                                                                                                                     g8521)
                                                                                                                   (letrec ((x-cnd8526
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8526
                                                                                                                       (letrec ((g8527
                                                                                                                                 (lambda (j7703
                                                                                                                                          k7704
                                                                                                                                          f7705)
                                                                                                                                   (letrec ((g8528
                                                                                                                                             (lambda (g7702)
                                                                                                                                               (letrec ((g8529
                                                                                                                                                         (letrec ((x8530
                                                                                                                                                                   (letrec ((x8531
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7703
                                                                                                                                                                              k7704
                                                                                                                                                                              g7702)))
                                                                                                                                                                     (f7705
                                                                                                                                                                      x8531))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7703
                                                                                                                                                            k7704
                                                                                                                                                            x8530))))
                                                                                                                                                 g8529))))
                                                                                                                                     g8528))))
                                                                                                                         g8527)
                                                                                                                       (letrec ((g8532
                                                                                                                                 "error"))
                                                                                                                         g8532)))))))))))
                                                                                               g8507))
                                                                                           x7683))
                                                                                         (x8505
                                                                                          (f7682
                                                                                           x7683)))
                                                                                  (x8506
                                                                                   j7680
                                                                                   k7681
                                                                                   x8505))))
                                                                        g8504))))
                                                            g8497))))
                                                g8496)))
                                           (horde/c
                                            (lambda (j7707 k7708 f7709)
                                              (letrec ((g8533
                                                        (lambda (g7706)
                                                          (letrec ((g8534
                                                                    (letrec ((x7710
                                                                              ((lambda (g7714
                                                                                        g7715
                                                                                        g7716)
                                                                                 (letrec ((g8535
                                                                                           (letrec ((x-cnd8536
                                                                                                     ((lambda (v7713)
                                                                                                        (letrec ((g8537
                                                                                                                  (letrec ((x-cnd8538
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7713)))
                                                                                                                    (if x-cnd8538
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8539
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7713)))
                                                                                                                        (if x-cnd8539
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8540
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7713)))
                                                                                                                            (if x-cnd8540
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8541
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7713)))
                                                                                                                                (if x-cnd8541
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8542
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7713)))
                                                                                                                                    (if x-cnd8542
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7713)))))))))))))
                                                                                                          g8537))
                                                                                                      g7716)))
                                                                                             (if x-cnd8536
                                                                                               g7716
                                                                                               (blame
                                                                                                g7714
                                                                                                '(lambda (v7713)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7713)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7713)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7713)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7713)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7713)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7713))))))))))))
                                                                                   g8535))
                                                                               j7707
                                                                               k7708
                                                                               g7706)))
                                                                      (letrec ((g8543
                                                                                (letrec ((x8545
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8546
                                                                                                       (letrec ((x-cnd8547
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8547
                                                                                                           (letrec ((g8548
                                                                                                                     (lambda (j7717
                                                                                                                              k7718
                                                                                                                              f7719)
                                                                                                                       (letrec ((g8549
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8550
                                                                                                                                             (letrec ((x8551
                                                                                                                                                       (f7719)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7717
                                                                                                                                                k7718
                                                                                                                                                x8551))))
                                                                                                                                     g8550))))
                                                                                                                         g8549))))
                                                                                                             g8548)
                                                                                                           (letrec ((x-cnd8552
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8552
                                                                                                               (letrec ((g8553
                                                                                                                         (lambda (j7720
                                                                                                                                  k7721
                                                                                                                                  f7722)
                                                                                                                           (letrec ((g8554
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8555
                                                                                                                                                 (letrec ((x8556
                                                                                                                                                           (f7722)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7720
                                                                                                                                                    k7721
                                                                                                                                                    x8556))))
                                                                                                                                         g8555))))
                                                                                                                             g8554))))
                                                                                                                 g8553)
                                                                                                               (letrec ((x-cnd8557
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8557
                                                                                                                   (letrec ((g8558
                                                                                                                             (lambda (j7724
                                                                                                                                      k7725
                                                                                                                                      f7726)
                                                                                                                               (letrec ((g8559
                                                                                                                                         (lambda (g7723)
                                                                                                                                           (letrec ((g8560
                                                                                                                                                     (letrec ((x8561
                                                                                                                                                               (letrec ((x8562
                                                                                                                                                                         (image?
                                                                                                                                                                          j7724
                                                                                                                                                                          k7725
                                                                                                                                                                          g7723)))
                                                                                                                                                                 (f7726
                                                                                                                                                                  x8562))))
                                                                                                                                                       (image?
                                                                                                                                                        j7724
                                                                                                                                                        k7725
                                                                                                                                                        x8561))))
                                                                                                                                             g8560))))
                                                                                                                                 g8559))))
                                                                                                                     g8558)
                                                                                                                   (letrec ((x-cnd8563
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8563
                                                                                                                       (letrec ((g8564
                                                                                                                                 (lambda (j7728
                                                                                                                                          k7729
                                                                                                                                          f7730)
                                                                                                                                   (letrec ((g8565
                                                                                                                                             (lambda (g7727)
                                                                                                                                               (letrec ((g8566
                                                                                                                                                         (letrec ((x8567
                                                                                                                                                                   (letrec ((x8568
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7728
                                                                                                                                                                              k7729
                                                                                                                                                                              g7727)))
                                                                                                                                                                     (f7730
                                                                                                                                                                      x8568))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7728
                                                                                                                                                            k7729
                                                                                                                                                            x8567))))
                                                                                                                                                 g8566))))
                                                                                                                                     g8565))))
                                                                                                                         g8564)
                                                                                                                       (letrec ((x-cnd8569
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8569
                                                                                                                           (letrec ((g8570
                                                                                                                                     (lambda (j7732
                                                                                                                                              k7733
                                                                                                                                              f7734)
                                                                                                                                       (letrec ((g8571
                                                                                                                                                 (lambda (g7731)
                                                                                                                                                   (letrec ((g8572
                                                                                                                                                             (letrec ((x8573
                                                                                                                                                                       (letrec ((x8574
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7732
                                                                                                                                                                                  k7733
                                                                                                                                                                                  g7731)))
                                                                                                                                                                         (f7734
                                                                                                                                                                          x8574))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7732
                                                                                                                                                                k7733
                                                                                                                                                                x8573))))
                                                                                                                                                     g8572))))
                                                                                                                                         g8571))))
                                                                                                                             g8570)
                                                                                                                           (letrec ((x-cnd8575
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8575
                                                                                                                               (letrec ((g8576
                                                                                                                                         (lambda (j7735
                                                                                                                                                  k7736
                                                                                                                                                  f7737)
                                                                                                                                           (letrec ((g8577
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8578
                                                                                                                                                                 (letrec ((x8579
                                                                                                                                                                           (f7737)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7735
                                                                                                                                                                    k7736
                                                                                                                                                                    x8579))))
                                                                                                                                                         g8578))))
                                                                                                                                             g8577))))
                                                                                                                                 g8576)
                                                                                                                               (letrec ((g8580
                                                                                                                                         "error"))
                                                                                                                                 g8580)))))))))))))))
                                                                                               g8546))
                                                                                           x7710))
                                                                                         (x8544
                                                                                          (f7709
                                                                                           x7710)))
                                                                                  (x8545
                                                                                   j7707
                                                                                   k7708
                                                                                   x8544))))
                                                                        g8543))))
                                                            g8534))))
                                                g8533)))
                                           (zombies/c
                                            (lambda (j7739 k7740 f7741)
                                              (letrec ((g8581
                                                        (lambda (g7738)
                                                          (letrec ((g8582
                                                                    (letrec ((x7742
                                                                              ((lambda (g7746
                                                                                        g7747
                                                                                        g7748)
                                                                                 (letrec ((g8583
                                                                                           (letrec ((x-cnd8584
                                                                                                     ((lambda (v7745)
                                                                                                        (letrec ((g8585
                                                                                                                  (letrec ((x-cnd8586
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7745)))
                                                                                                                    (if x-cnd8586
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8587
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7745)))
                                                                                                                        (if x-cnd8587
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8588
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7745)))
                                                                                                                            (if x-cnd8588
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7745)))))))))
                                                                                                          g8585))
                                                                                                      g7748)))
                                                                                             (if x-cnd8584
                                                                                               g7748
                                                                                               (blame
                                                                                                g7746
                                                                                                '(lambda (v7745)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7745)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7745)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7745)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7745))))))))))
                                                                                   g8583))
                                                                               j7739
                                                                               k7740
                                                                               g7738)))
                                                                      (letrec ((g8589
                                                                                (letrec ((x8591
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8592
                                                                                                       (letrec ((x-cnd8593
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8593
                                                                                                           (letrec ((g8594
                                                                                                                     (lambda (j7750
                                                                                                                              k7751
                                                                                                                              f7752)
                                                                                                                       (letrec ((g8595
                                                                                                                                 (lambda (g7749)
                                                                                                                                   (letrec ((g8596
                                                                                                                                             (letrec ((x8597
                                                                                                                                                       (letrec ((x8598
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7750
                                                                                                                                                                  k7751
                                                                                                                                                                  g7749)))
                                                                                                                                                         (f7752
                                                                                                                                                          x8598))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7750
                                                                                                                                                k7751
                                                                                                                                                x8597))))
                                                                                                                                     g8596))))
                                                                                                                         g8595))))
                                                                                                             g8594)
                                                                                                           (letrec ((x-cnd8599
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8599
                                                                                                               (letrec ((g8600
                                                                                                                         (lambda (j7755
                                                                                                                                  k7756
                                                                                                                                  f7757)
                                                                                                                           (letrec ((g8601
                                                                                                                                     (lambda (g7753
                                                                                                                                              g7754)
                                                                                                                                       (letrec ((g8602
                                                                                                                                                 (letrec ((x8603
                                                                                                                                                           (letrec ((x8605
                                                                                                                                                                     (string?
                                                                                                                                                                      j7755
                                                                                                                                                                      k7756
                                                                                                                                                                      g7753))
                                                                                                                                                                    (x8604
                                                                                                                                                                     (image?
                                                                                                                                                                      j7755
                                                                                                                                                                      k7756
                                                                                                                                                                      g7754)))
                                                                                                                                                             (f7757
                                                                                                                                                              x8605
                                                                                                                                                              x8604))))
                                                                                                                                                   (image?
                                                                                                                                                    j7755
                                                                                                                                                    k7756
                                                                                                                                                    x8603))))
                                                                                                                                         g8602))))
                                                                                                                             g8601))))
                                                                                                                 g8600)
                                                                                                               (letrec ((x-cnd8606
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8606
                                                                                                                   (letrec ((g8607
                                                                                                                             (lambda (j7759
                                                                                                                                      k7760
                                                                                                                                      f7761)
                                                                                                                               (letrec ((g8608
                                                                                                                                         (lambda (g7758)
                                                                                                                                           (letrec ((g8609
                                                                                                                                                     (letrec ((x8610
                                                                                                                                                               (letrec ((x8611
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7759
                                                                                                                                                                          k7760
                                                                                                                                                                          g7758)))
                                                                                                                                                                 (f7761
                                                                                                                                                                  x8611))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7759
                                                                                                                                                        k7760
                                                                                                                                                        x8610))))
                                                                                                                                             g8609))))
                                                                                                                                 g8608))))
                                                                                                                     g8607)
                                                                                                                   (letrec ((x-cnd8612
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8612
                                                                                                                       (letrec ((g8613
                                                                                                                                 (lambda (j7763
                                                                                                                                          k7764
                                                                                                                                          f7765)
                                                                                                                                   (letrec ((g8614
                                                                                                                                             (lambda (g7762)
                                                                                                                                               (letrec ((g8615
                                                                                                                                                         (letrec ((x8616
                                                                                                                                                                   (letrec ((x8617
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7763
                                                                                                                                                                              k7764
                                                                                                                                                                              g7762)))
                                                                                                                                                                     (f7765
                                                                                                                                                                      x8617))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7763
                                                                                                                                                            k7764
                                                                                                                                                            x8616))))
                                                                                                                                                 g8615))))
                                                                                                                                     g8614))))
                                                                                                                         g8613)
                                                                                                                       (letrec ((g8618
                                                                                                                                 "error"))
                                                                                                                         g8618)))))))))))
                                                                                               g8592))
                                                                                           x7742))
                                                                                         (x8590
                                                                                          (f7741
                                                                                           x7742)))
                                                                                  (x8591
                                                                                   j7739
                                                                                   k7740
                                                                                   x8590))))
                                                                        g8589))))
                                                            g8582))))
                                                g8581)))
                                           (world/c
                                            (lambda (j7767 k7768 f7769)
                                              (letrec ((g8619
                                                        (lambda (g7766)
                                                          (letrec ((g8620
                                                                    (letrec ((x7770
                                                                              ((lambda (g7774
                                                                                        g7775
                                                                                        g7776)
                                                                                 (letrec ((g8621
                                                                                           (letrec ((x-cnd8622
                                                                                                     ((lambda (v7773)
                                                                                                        (letrec ((g8623
                                                                                                                  (letrec ((x-cnd8624
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7773)))
                                                                                                                    (if x-cnd8624
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8625
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7773)))
                                                                                                                        (if x-cnd8625
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8626
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7773)))
                                                                                                                            (if x-cnd8626
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7773)))))))))
                                                                                                          g8623))
                                                                                                      g7776)))
                                                                                             (if x-cnd8622
                                                                                               g7776
                                                                                               (blame
                                                                                                g7774
                                                                                                '(lambda (v7773)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7773)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7773)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7773)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7773))))))))))
                                                                                   g8621))
                                                                               j7767
                                                                               k7768
                                                                               g7766)))
                                                                      (letrec ((g8627
                                                                                (letrec ((x8629
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8630
                                                                                                       (letrec ((x-cnd8631
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8631
                                                                                                           (letrec ((g8632
                                                                                                                     (lambda (j7780
                                                                                                                              k7781
                                                                                                                              f7782)
                                                                                                                       (letrec ((g8633
                                                                                                                                 (lambda (g7777
                                                                                                                                          g7778
                                                                                                                                          g7779)
                                                                                                                                   (letrec ((g8634
                                                                                                                                             (letrec ((x8635
                                                                                                                                                       (letrec ((x8638
                                                                                                                                                                 (real?
                                                                                                                                                                  j7780
                                                                                                                                                                  k7781
                                                                                                                                                                  g7777))
                                                                                                                                                                (x8637
                                                                                                                                                                 (real?
                                                                                                                                                                  j7780
                                                                                                                                                                  k7781
                                                                                                                                                                  g7778))
                                                                                                                                                                (x8636
                                                                                                                                                                 (string?
                                                                                                                                                                  j7780
                                                                                                                                                                  k7781
                                                                                                                                                                  g7779)))
                                                                                                                                                         (f7782
                                                                                                                                                          x8638
                                                                                                                                                          x8637
                                                                                                                                                          x8636))))
                                                                                                                                               (world/c
                                                                                                                                                j7780
                                                                                                                                                k7781
                                                                                                                                                x8635))))
                                                                                                                                     g8634))))
                                                                                                                         g8633))))
                                                                                                             g8632)
                                                                                                           (letrec ((x-cnd8639
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8639
                                                                                                               (letrec ((g8640
                                                                                                                         (lambda (j7783
                                                                                                                                  k7784
                                                                                                                                  f7785)
                                                                                                                           (letrec ((g8641
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8642
                                                                                                                                                 (letrec ((x8643
                                                                                                                                                           (f7785)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7783
                                                                                                                                                    k7784
                                                                                                                                                    x8643))))
                                                                                                                                         g8642))))
                                                                                                                             g8641))))
                                                                                                                 g8640)
                                                                                                               (letrec ((x-cnd8644
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8644
                                                                                                                   (letrec ((g8645
                                                                                                                             (lambda (j7786
                                                                                                                                      k7787
                                                                                                                                      f7788)
                                                                                                                               (letrec ((g8646
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8647
                                                                                                                                                     (letrec ((x8648
                                                                                                                                                               (f7788)))
                                                                                                                                                       (image?
                                                                                                                                                        j7786
                                                                                                                                                        k7787
                                                                                                                                                        x8648))))
                                                                                                                                             g8647))))
                                                                                                                                 g8646))))
                                                                                                                     g8645)
                                                                                                                   (letrec ((x-cnd8649
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8649
                                                                                                                       (letrec ((g8650
                                                                                                                                 (lambda (j7789
                                                                                                                                          k7790
                                                                                                                                          f7791)
                                                                                                                                   (letrec ((g8651
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8652
                                                                                                                                                         (letrec ((x8653
                                                                                                                                                                   (f7791)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7789
                                                                                                                                                            k7790
                                                                                                                                                            x8653))))
                                                                                                                                                 g8652))))
                                                                                                                                     g8651))))
                                                                                                                         g8650)
                                                                                                                       (letrec ((g8654
                                                                                                                                 "error"))
                                                                                                                         g8654)))))))))))
                                                                                               g8630))
                                                                                           x7770))
                                                                                         (x8628
                                                                                          (f7769
                                                                                           x7770)))
                                                                                  (x8629
                                                                                   j7767
                                                                                   k7768
                                                                                   x8628))))
                                                                        g8627))))
                                                            g8620))))
                                                g8619)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8655
                                                        (letrec ((x8688 (msg))
                                                                 (x8656
                                                                  (letrec ((x-cnd8657
                                                                            (equal?
                                                                             msg
                                                                             'on-mouse)))
                                                                    (if x-cnd8657
                                                                      (letrec ((g8658
                                                                                (letrec ((x8663
                                                                                          (x
                                                                                           y
                                                                                           me))
                                                                                         (x8659
                                                                                          (letrec ((x8660
                                                                                                    (letrec ((x-cnd8661
                                                                                                              (equal?
                                                                                                               me
                                                                                                               "leave")))
                                                                                                      (if x-cnd8661
                                                                                                        (letrec ((x8662
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x8662))
                                                                                                        (new-posn
                                                                                                         x
                                                                                                         y)))))
                                                                                            (new-world
                                                                                             player
                                                                                             x8660
                                                                                             zombies))))
                                                                                  (λ x8663
                                                                                    x8659))))
                                                                        g8658)
                                                                      (letrec ((x-cnd8664
                                                                                (equal?
                                                                                 msg
                                                                                 'on-tick)))
                                                                        (if x-cnd8664
                                                                          (letrec ((g8665
                                                                                    (letrec ((x8666
                                                                                              (letrec ((x8673
                                                                                                        (letrec ((x8674
                                                                                                                  (player
                                                                                                                   'move-toward)))
                                                                                                          (x8674
                                                                                                           mouse)))
                                                                                                       (x8667
                                                                                                        (letrec ((x8670
                                                                                                                  (letrec ((x8671
                                                                                                                            (letrec ((x8672
                                                                                                                                      (zombies
                                                                                                                                       'eat-brains)))
                                                                                                                              (x8672))))
                                                                                                                    (x8671
                                                                                                                     'move-toward)))
                                                                                                                 (x8668
                                                                                                                  (letrec ((x8669
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8669))))
                                                                                                          (x8670
                                                                                                           x8668))))
                                                                                                (new-world
                                                                                                 x8673
                                                                                                 mouse
                                                                                                 x8667))))
                                                                                      (λ ()
                                                                                        x8666))))
                                                                            g8665)
                                                                          (letrec ((x-cnd8675
                                                                                    (equal?
                                                                                     msg
                                                                                     'to-draw)))
                                                                            (if x-cnd8675
                                                                              (letrec ((g8676
                                                                                        (letrec ((x8677
                                                                                                  (letrec ((x8680
                                                                                                            (player
                                                                                                             'draw-on))
                                                                                                           (x8678
                                                                                                            (letrec ((x8679
                                                                                                                      (zombies
                                                                                                                       'draw-on)))
                                                                                                              (x8679
                                                                                                               MT-SCENE))))
                                                                                                    (x8680
                                                                                                     x8678))))
                                                                                          (λ ()
                                                                                            x8677))))
                                                                                g8676)
                                                                              (letrec ((x-cnd8681
                                                                                        (equal?
                                                                                         msg
                                                                                         'stop-when)))
                                                                                (if x-cnd8681
                                                                                  (letrec ((g8682
                                                                                            (letrec ((x8683
                                                                                                      (letrec ((x8686
                                                                                                                (zombies
                                                                                                                 'touching?))
                                                                                                               (x8684
                                                                                                                (letrec ((x8685
                                                                                                                          (player
                                                                                                                           'posn)))
                                                                                                                  (x8685))))
                                                                                                        (x8686
                                                                                                         x8684))))
                                                                                              (λ ()
                                                                                                x8683))))
                                                                                    g8682)
                                                                                  (letrec ((g8687
                                                                                            "unknown message"))
                                                                                    g8687)))))))))))
                                                          (λ x8688 x8656))))
                                                g8655)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8689
                                                        (letrec ((x8705 (msg))
                                                                 (x8690
                                                                  (letrec ((x-cnd8691
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8691
                                                                      (letrec ((g8692
                                                                                (λ ()
                                                                                  p)))
                                                                        g8692)
                                                                      (letrec ((x-cnd8693
                                                                                (equal?
                                                                                 msg
                                                                                 'move-toward)))
                                                                        (if x-cnd8693
                                                                          (letrec ((g8694
                                                                                    (letrec ((x8698
                                                                                              (q))
                                                                                             (x8695
                                                                                              (letrec ((x8696
                                                                                                        (letrec ((x8697
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8697
                                                                                                           q
                                                                                                           PLAYER-SPEED))))
                                                                                                (new-player
                                                                                                 x8696))))
                                                                                      (λ x8698
                                                                                        x8695))))
                                                                            g8694)
                                                                          (letrec ((x-cnd8699
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8699
                                                                              (letrec ((g8700
                                                                                        (letrec ((x8703
                                                                                                  (scn))
                                                                                                 (x8701
                                                                                                  (letrec ((x8702
                                                                                                            (p
                                                                                                             'draw-on/image)))
                                                                                                    (x8702
                                                                                                     PLAYER-IMG
                                                                                                     scn))))
                                                                                          (λ x8703
                                                                                            x8701))))
                                                                                g8700)
                                                                              (letrec ((g8704
                                                                                        "unknown message"))
                                                                                g8704)))))))))
                                                          (λ x8705 x8690))))
                                                g8689)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8706
                                                        (letrec ((x8738 (msg))
                                                                 (x8707
                                                                  (letrec ((x-cnd8708
                                                                            (equal?
                                                                             msg
                                                                             'dead)))
                                                                    (if x-cnd8708
                                                                      (letrec ((g8709
                                                                                (λ ()
                                                                                  dead)))
                                                                        g8709)
                                                                      (letrec ((x-cnd8710
                                                                                (equal?
                                                                                 msg
                                                                                 'undead)))
                                                                        (if x-cnd8710
                                                                          (letrec ((g8711
                                                                                    (λ ()
                                                                                      undead)))
                                                                            g8711)
                                                                          (letrec ((x-cnd8712
                                                                                    (equal?
                                                                                     msg
                                                                                     'draw-on)))
                                                                            (if x-cnd8712
                                                                              (letrec ((g8713
                                                                                        (letrec ((x8718
                                                                                                  (scn))
                                                                                                 (x8714
                                                                                                  (letrec ((x8717
                                                                                                            (undead
                                                                                                             'draw-on/color))
                                                                                                           (x8715
                                                                                                            (letrec ((x8716
                                                                                                                      (dead
                                                                                                                       'draw-on/color)))
                                                                                                              (x8716
                                                                                                               "black"
                                                                                                               scn))))
                                                                                                    (x8717
                                                                                                     "yellow"
                                                                                                     x8715))))
                                                                                          (λ x8718
                                                                                            x8714))))
                                                                                g8713)
                                                                              (letrec ((x-cnd8719
                                                                                        (equal?
                                                                                         msg
                                                                                         'touching?)))
                                                                                (if x-cnd8719
                                                                                  (letrec ((g8720
                                                                                            (letrec ((x8726
                                                                                                      (p))
                                                                                                     (x8721
                                                                                                      (letrec ((x8724
                                                                                                                (letrec ((x8725
                                                                                                                          (undead
                                                                                                                           'touching?)))
                                                                                                                  (x8725
                                                                                                                   p)))
                                                                                                               (x8722
                                                                                                                (letrec ((x8723
                                                                                                                          (dead
                                                                                                                           'touching?)))
                                                                                                                  (x8723
                                                                                                                   p))))
                                                                                                        (or x8724
                                                                                                            x8722))))
                                                                                              (λ x8726
                                                                                                x8721))))
                                                                                    g8720)
                                                                                  (letrec ((x-cnd8727
                                                                                            (equal?
                                                                                             msg
                                                                                             'move-toward)))
                                                                                    (if x-cnd8727
                                                                                      (letrec ((g8728
                                                                                                (letrec ((x8732
                                                                                                          (p))
                                                                                                         (x8729
                                                                                                          (letrec ((x8730
                                                                                                                    (letrec ((x8731
                                                                                                                              (undead
                                                                                                                               'move-toward)))
                                                                                                                      (x8731
                                                                                                                       p))))
                                                                                                            (new-horde
                                                                                                             x8730
                                                                                                             dead))))
                                                                                                  (λ x8732
                                                                                                    x8729))))
                                                                                        g8728)
                                                                                      (letrec ((x-cnd8733
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'eat-brains)))
                                                                                        (if x-cnd8733
                                                                                          (letrec ((g8734
                                                                                                    (letrec ((x8735
                                                                                                              (letrec ((x8736
                                                                                                                        (undead
                                                                                                                         'kill-all)))
                                                                                                                (x8736
                                                                                                                 dead))))
                                                                                                      (λ ()
                                                                                                        x8735))))
                                                                                            g8734)
                                                                                          (letrec ((g8737
                                                                                                    "unknown message"))
                                                                                            g8737)))))))))))))))
                                                          (λ x8738 x8707))))
                                                g8706)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8739
                                                        (letrec ((x8791 (msg))
                                                                 (x8740
                                                                  (letrec ((x-cnd8741
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8741
                                                                      (letrec ((g8742
                                                                                (letrec ((x8748
                                                                                          (p))
                                                                                         (x8743
                                                                                          (letrec ((x8746
                                                                                                    (letrec ((x8747
                                                                                                              (z
                                                                                                               'move-toward)))
                                                                                                      (x8747
                                                                                                       p)))
                                                                                                   (x8744
                                                                                                    (letrec ((x8745
                                                                                                              (r
                                                                                                               'move-toward)))
                                                                                                      (x8745
                                                                                                       p))))
                                                                                            (new-cons-zombies
                                                                                             x8746
                                                                                             x8744))))
                                                                                  (λ x8748
                                                                                    x8743))))
                                                                        g8742)
                                                                      (letrec ((x-cnd8749
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8749
                                                                          (letrec ((g8750
                                                                                    (letrec ((x8755
                                                                                              (c
                                                                                               s))
                                                                                             (x8751
                                                                                              (letrec ((x8754
                                                                                                        (z
                                                                                                         'draw-on/color))
                                                                                                       (x8752
                                                                                                        (letrec ((x8753
                                                                                                                  (r
                                                                                                                   'draw-on/color)))
                                                                                                          (x8753
                                                                                                           c
                                                                                                           s))))
                                                                                                (x8754
                                                                                                 c
                                                                                                 x8752))))
                                                                                      (λ x8755
                                                                                        x8751))))
                                                                            g8750)
                                                                          (letrec ((x-cnd8756
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8756
                                                                              (letrec ((g8757
                                                                                        (letrec ((x8763
                                                                                                  (p))
                                                                                                 (x8758
                                                                                                  (letrec ((x8761
                                                                                                            (letrec ((x8762
                                                                                                                      (z
                                                                                                                       'touching?)))
                                                                                                              (x8762
                                                                                                               p)))
                                                                                                           (x8759
                                                                                                            (letrec ((x8760
                                                                                                                      (r
                                                                                                                       'touching?)))
                                                                                                              (x8760
                                                                                                               p))))
                                                                                                    (or x8761
                                                                                                        x8759))))
                                                                                          (λ x8763
                                                                                            x8758))))
                                                                                g8757)
                                                                              (letrec ((x-cnd8764
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8764
                                                                                  (letrec ((g8765
                                                                                            (letrec ((x8789
                                                                                                      (dead))
                                                                                                     (x8766
                                                                                                      (letrec ((x8776
                                                                                                                (letrec ((x8780
                                                                                                                          (letrec ((x8785
                                                                                                                                    (letrec ((x8788
                                                                                                                                              (r
                                                                                                                                               'touching?))
                                                                                                                                             (x8786
                                                                                                                                              (letrec ((x8787
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8787))))
                                                                                                                                      (x8788
                                                                                                                                       x8786)))
                                                                                                                                   (x8781
                                                                                                                                    (letrec ((x8784
                                                                                                                                              (dead
                                                                                                                                               'touching?))
                                                                                                                                             (x8782
                                                                                                                                              (letrec ((x8783
                                                                                                                                                        (z
                                                                                                                                                         'posn)))
                                                                                                                                                (x8783))))
                                                                                                                                      (x8784
                                                                                                                                       x8782))))
                                                                                                                            (or x8785
                                                                                                                                x8781)))
                                                                                                                         (x8777
                                                                                                                          (letrec ((x8779
                                                                                                                                    (r
                                                                                                                                     'kill-all))
                                                                                                                                   (x8778
                                                                                                                                    (new-cons-zombies
                                                                                                                                     z
                                                                                                                                     dead)))
                                                                                                                            (x8779
                                                                                                                             x8778))))
                                                                                                                  (x8780
                                                                                                                   x8777)))
                                                                                                               (x8767
                                                                                                                (letrec ((x8768
                                                                                                                          (letrec ((res
                                                                                                                                    (letrec ((x8769
                                                                                                                                              (r
                                                                                                                                               'kill-all)))
                                                                                                                                      (x8769
                                                                                                                                       dead))))
                                                                                                                            (letrec ((g8770
                                                                                                                                      (letrec ((x8773
                                                                                                                                                (letrec ((x8774
                                                                                                                                                          (letrec ((x8775
                                                                                                                                                                    (res
                                                                                                                                                                     'undead)))
                                                                                                                                                            (x8775))))
                                                                                                                                                  (new-cons-zombies
                                                                                                                                                   z
                                                                                                                                                   x8774)))
                                                                                                                                               (x8771
                                                                                                                                                (letrec ((x8772
                                                                                                                                                          (res
                                                                                                                                                           'dead)))
                                                                                                                                                  (x8772))))
                                                                                                                                        (new-horde
                                                                                                                                         x8773
                                                                                                                                         x8771))))
                                                                                                                              g8770))))
                                                                                                                  (else
                                                                                                                   x8768))))
                                                                                                        (cond
                                                                                                         x8776
                                                                                                         x8767))))
                                                                                              (λ x8789
                                                                                                x8766))))
                                                                                    g8765)
                                                                                  (letrec ((g8790
                                                                                            "unknown message"))
                                                                                    g8790)))))))))))
                                                          (λ x8791 x8740))))
                                                g8739)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8792
                                                        (letrec ((x8810 (msg))
                                                                 (x8793
                                                                  (letrec ((x-cnd8794
                                                                            (equal?
                                                                             msg
                                                                             'move-toward)))
                                                                    (if x-cnd8794
                                                                      (letrec ((g8795
                                                                                (letrec ((x8797
                                                                                          (p))
                                                                                         (x8796
                                                                                          (new-mt-zombies)))
                                                                                  (λ x8797
                                                                                    x8796))))
                                                                        g8795)
                                                                      (letrec ((x-cnd8798
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8798
                                                                          (letrec ((g8799
                                                                                    (letrec ((x8800
                                                                                              (c
                                                                                               s)))
                                                                                      (λ x8800
                                                                                        s))))
                                                                            g8799)
                                                                          (letrec ((x-cnd8801
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8801
                                                                              (letrec ((g8802
                                                                                        (letrec ((x8803
                                                                                                  (p)))
                                                                                          (λ x8803
                                                                                            #f))))
                                                                                g8802)
                                                                              (letrec ((x-cnd8804
                                                                                        (equal?
                                                                                         msg
                                                                                         'kill-all)))
                                                                                (if x-cnd8804
                                                                                  (letrec ((g8805
                                                                                            (letrec ((x8808
                                                                                                      (dead))
                                                                                                     (x8806
                                                                                                      (letrec ((x8807
                                                                                                                (new-mt-zombies)))
                                                                                                        (new-horde
                                                                                                         x8807
                                                                                                         dead))))
                                                                                              (λ x8808
                                                                                                x8806))))
                                                                                    g8805)
                                                                                  (letrec ((g8809
                                                                                            "unknown message"))
                                                                                    g8809)))))))))))
                                                          (λ x8810 x8793))))
                                                g8792)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8811
                                                        (letrec ((x8834 (msg))
                                                                 (x8812
                                                                  (letrec ((x-cnd8813
                                                                            (equal?
                                                                             msg
                                                                             'posn)))
                                                                    (if x-cnd8813
                                                                      (letrec ((g8814
                                                                                (λ ()
                                                                                  p)))
                                                                        g8814)
                                                                      (letrec ((x-cnd8815
                                                                                (equal?
                                                                                 msg
                                                                                 'draw-on/color)))
                                                                        (if x-cnd8815
                                                                          (letrec ((g8816
                                                                                    (letrec ((x8820
                                                                                              (c
                                                                                               s))
                                                                                             (x8817
                                                                                              (letrec ((x8819
                                                                                                        (p
                                                                                                         'draw-on/image))
                                                                                                       (x8818
                                                                                                        (circle
                                                                                                         ZOMBIE-RADIUS
                                                                                                         "solid"
                                                                                                         c)))
                                                                                                (x8819
                                                                                                 x8818
                                                                                                 s))))
                                                                                      (λ x8820
                                                                                        x8817))))
                                                                            g8816)
                                                                          (letrec ((x-cnd8821
                                                                                    (equal?
                                                                                     msg
                                                                                     'touching?)))
                                                                            (if x-cnd8821
                                                                              (letrec ((g8822
                                                                                        (letrec ((x8826
                                                                                                  (q))
                                                                                                 (x8823
                                                                                                  (letrec ((x8824
                                                                                                            (letrec ((x8825
                                                                                                                      (p
                                                                                                                       'dist)))
                                                                                                              (x8825
                                                                                                               q))))
                                                                                                    (<=
                                                                                                     x8824
                                                                                                     ZOMBIE-RADIUS))))
                                                                                          (λ x8826
                                                                                            x8823))))
                                                                                g8822)
                                                                              (letrec ((x-cnd8827
                                                                                        (equal?
                                                                                         msg
                                                                                         'move-toward)))
                                                                                (if x-cnd8827
                                                                                  (letrec ((g8828
                                                                                            (letrec ((x8832
                                                                                                      (q))
                                                                                                     (x8829
                                                                                                      (letrec ((x8830
                                                                                                                (letrec ((x8831
                                                                                                                          (p
                                                                                                                           'move-toward/speed)))
                                                                                                                  (x8831
                                                                                                                   q
                                                                                                                   ZOMBIE-SPEED))))
                                                                                                        (new-zombie
                                                                                                         x8830))))
                                                                                              (λ x8832
                                                                                                x8829))))
                                                                                    g8828)
                                                                                  (letrec ((g8833
                                                                                            "unknown message"))
                                                                                    g8833)))))))))))
                                                          (λ x8834 x8812))))
                                                g8811)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8835
                                                        (letrec ((this
                                                                  (letrec ((x8899
                                                                            (msg))
                                                                           (x8836
                                                                            (letrec ((x-cnd8837
                                                                                      (equal?
                                                                                       msg
                                                                                       'x)))
                                                                              (if x-cnd8837
                                                                                (letrec ((g8838
                                                                                          (λ ()
                                                                                            x)))
                                                                                  g8838)
                                                                                (letrec ((x-cnd8839
                                                                                          (equal?
                                                                                           msg
                                                                                           'y)))
                                                                                  (if x-cnd8839
                                                                                    (letrec ((g8840
                                                                                              (λ ()
                                                                                                y)))
                                                                                      g8840)
                                                                                    (letrec ((x-cnd8841
                                                                                              (equal?
                                                                                               msg
                                                                                               'posn)))
                                                                                      (if x-cnd8841
                                                                                        (letrec ((g8842
                                                                                                  (λ ()
                                                                                                    this)))
                                                                                          g8842)
                                                                                        (letrec ((x-cnd8843
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'move-toward/speed)))
                                                                                          (if x-cnd8843
                                                                                            (letrec ((g8844
                                                                                                      (letrec ((x8874
                                                                                                                (p
                                                                                                                 speed))
                                                                                                               (x8845
                                                                                                                (letrec ((x8860
                                                                                                                          (letrec ((x8870
                                                                                                                                    (letrec ((x8871
                                                                                                                                              (letrec ((x8872
                                                                                                                                                        (letrec ((x8873
                                                                                                                                                                  (p
                                                                                                                                                                   'x)))
                                                                                                                                                          (x8873))))
                                                                                                                                                (-
                                                                                                                                                 x8872
                                                                                                                                                 x))))
                                                                                                                                      (δx
                                                                                                                                       x8871)))
                                                                                                                                   (x8866
                                                                                                                                    (letrec ((x8867
                                                                                                                                              (letrec ((x8868
                                                                                                                                                        (letrec ((x8869
                                                                                                                                                                  (p
                                                                                                                                                                   'y)))
                                                                                                                                                          (x8869))))
                                                                                                                                                (-
                                                                                                                                                 x8868
                                                                                                                                                 y))))
                                                                                                                                      (δy
                                                                                                                                       x8867)))
                                                                                                                                   (x8861
                                                                                                                                    (letrec ((x8862
                                                                                                                                              (letrec ((x8863
                                                                                                                                                        (letrec ((x8865
                                                                                                                                                                  (abs
                                                                                                                                                                   δx))
                                                                                                                                                                 (x8864
                                                                                                                                                                  (abs
                                                                                                                                                                   δy)))
                                                                                                                                                          (max
                                                                                                                                                           x8865
                                                                                                                                                           x8864))))
                                                                                                                                                (min
                                                                                                                                                 speed
                                                                                                                                                 x8863))))
                                                                                                                                      (move-distance
                                                                                                                                       x8862))))
                                                                                                                            (x8870
                                                                                                                             x8866
                                                                                                                             x8861)))
                                                                                                                         (x8846
                                                                                                                          (letrec ((x8852
                                                                                                                                    (letrec ((x8857
                                                                                                                                              (letrec ((x8859
                                                                                                                                                        (abs
                                                                                                                                                         δx))
                                                                                                                                                       (x8858
                                                                                                                                                        (abs
                                                                                                                                                         δy)))
                                                                                                                                                (<
                                                                                                                                                 x8859
                                                                                                                                                 x8858)))
                                                                                                                                             (x8853
                                                                                                                                              (letrec ((x8856
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8854
                                                                                                                                                        (letrec ((x-cnd8855
                                                                                                                                                                  (positive?
                                                                                                                                                                   δy)))
                                                                                                                                                          (if x-cnd8855
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8856
                                                                                                                                                 0
                                                                                                                                                 x8854))))
                                                                                                                                      (x8857
                                                                                                                                       x8853)))
                                                                                                                                   (x8847
                                                                                                                                    (letrec ((x8848
                                                                                                                                              (letrec ((x8851
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8849
                                                                                                                                                        (letrec ((x-cnd8850
                                                                                                                                                                  (positive?
                                                                                                                                                                   δx)))
                                                                                                                                                          (if x-cnd8850
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8851
                                                                                                                                                 x8849
                                                                                                                                                 0))))
                                                                                                                                      (else
                                                                                                                                       x8848))))
                                                                                                                            (cond
                                                                                                                             x8852
                                                                                                                             x8847))))
                                                                                                                  (let* x8860 x8846))))
                                                                                                        (λ x8874
                                                                                                          x8845))))
                                                                                              g8844)
                                                                                            (letrec ((x-cnd8875
                                                                                                      (equal?
                                                                                                       msg
                                                                                                       'move)))
                                                                                              (if x-cnd8875
                                                                                                (letrec ((g8876
                                                                                                          (letrec ((x8880
                                                                                                                    (δx
                                                                                                                     δy))
                                                                                                                   (x8877
                                                                                                                    (letrec ((x8879
                                                                                                                              (+
                                                                                                                               x
                                                                                                                               δx))
                                                                                                                             (x8878
                                                                                                                              (+
                                                                                                                               y
                                                                                                                               δy)))
                                                                                                                      (new-posn
                                                                                                                       x8879
                                                                                                                       x8878))))
                                                                                                            (λ x8880
                                                                                                              x8877))))
                                                                                                  g8876)
                                                                                                (letrec ((x-cnd8881
                                                                                                          (equal?
                                                                                                           msg
                                                                                                           'draw-on/image)))
                                                                                                  (if x-cnd8881
                                                                                                    (letrec ((g8882
                                                                                                              (letrec ((x8884
                                                                                                                        (img
                                                                                                                         scn))
                                                                                                                       (x8883
                                                                                                                        (place-image
                                                                                                                         img
                                                                                                                         x
                                                                                                                         y
                                                                                                                         scn)))
                                                                                                                (λ x8884
                                                                                                                  x8883))))
                                                                                                      g8882)
                                                                                                    (letrec ((x-cnd8885
                                                                                                              (equal?
                                                                                                               msg
                                                                                                               'dist)))
                                                                                                      (if x-cnd8885
                                                                                                        (letrec ((g8886
                                                                                                                  (letrec ((x8897
                                                                                                                            (p))
                                                                                                                           (x8887
                                                                                                                            (letrec ((x8888
                                                                                                                                      (letrec ((x8893
                                                                                                                                                (letrec ((x8894
                                                                                                                                                          (letrec ((x8895
                                                                                                                                                                    (letrec ((x8896
                                                                                                                                                                              (p
                                                                                                                                                                               'y)))
                                                                                                                                                                      (x8896))))
                                                                                                                                                            (-
                                                                                                                                                             x8895
                                                                                                                                                             y))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8894)))
                                                                                                                                               (x8889
                                                                                                                                                (letrec ((x8890
                                                                                                                                                          (letrec ((x8891
                                                                                                                                                                    (letrec ((x8892
                                                                                                                                                                              (p
                                                                                                                                                                               'x)))
                                                                                                                                                                      (x8892))))
                                                                                                                                                            (-
                                                                                                                                                             x8891
                                                                                                                                                             x))))
                                                                                                                                                  (sqr
                                                                                                                                                   x8890))))
                                                                                                                                        (+
                                                                                                                                         x8893
                                                                                                                                         x8889))))
                                                                                                                              (sqrt
                                                                                                                               x8888))))
                                                                                                                    (λ x8897
                                                                                                                      x8887))))
                                                                                                          g8886)
                                                                                                        (letrec ((g8898
                                                                                                                  "unknown message"))
                                                                                                          g8898)))))))))))))))))
                                                                    (λ x8899
                                                                      x8836))))
                                                          (letrec ((g8900
                                                                    this))
                                                            g8900))))
                                                g8835)))
                                           (w0
                                            (letrec ((x8914
                                                      (letrec ((x8915
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8915)))
                                                     (x8913 (new-posn 0 0))
                                                     (x8901
                                                      (letrec ((x8906
                                                                (letrec ((x8911
                                                                          (letrec ((x8912
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8912)))
                                                                         (x8907
                                                                          (letrec ((x8909
                                                                                    (letrec ((x8910
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8910)))
                                                                                   (x8908
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8909
                                                                             x8908))))
                                                                  (new-cons-zombies
                                                                   x8911
                                                                   x8907)))
                                                               (x8902
                                                                (letrec ((x8904
                                                                          (letrec ((x8905
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8905)))
                                                                         (x8903
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8904
                                                                   x8903))))
                                                        (new-horde
                                                         x8906
                                                         x8902))))
                                              (new-world x8914 x8913 x8901))))
                                    (letrec ((g8916
                                              (parallel
                                               (parallel
                                                (letrec ((x8918
                                                          (letrec ((xj7792
                                                                    (loc
                                                                     'module))
                                                                   (xk7793
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8919
                                                                      ((lambda (j7795
                                                                                k7796
                                                                                f7797)
                                                                         (letrec ((g8920
                                                                                   (lambda (g7794)
                                                                                     (letrec ((g8921
                                                                                               (letrec ((x8922
                                                                                                         (letrec ((x8923
                                                                                                                   (any/c
                                                                                                                    j7795
                                                                                                                    k7796
                                                                                                                    g7794)))
                                                                                                           (f7797
                                                                                                            x8923))))
                                                                                                 (boolean?/c
                                                                                                  j7795
                                                                                                  k7796
                                                                                                  x8922))))
                                                                                       g8921))))
                                                                           g8920))
                                                                       xj7792
                                                                       xk7793
                                                                       image?)))
                                                              g8919)))
                                                         (x8917 (input)))
                                                  (x8918 x8917))
                                                (letrec ((x8926
                                                          (letrec ((xj7798
                                                                    (loc
                                                                     'module))
                                                                   (xk7799
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8927
                                                                      ((lambda (j7802
                                                                                k7803
                                                                                f7804)
                                                                         (letrec ((g8928
                                                                                   (lambda (g7800
                                                                                            g7801)
                                                                                     (letrec ((g8929
                                                                                               (letrec ((x8930
                                                                                                         (letrec ((x8932
                                                                                                                   (real?/c
                                                                                                                    j7802
                                                                                                                    k7803
                                                                                                                    g7800))
                                                                                                                  (x8931
                                                                                                                   (real?/c
                                                                                                                    j7802
                                                                                                                    k7803
                                                                                                                    g7801)))
                                                                                                           (f7804
                                                                                                            x8932
                                                                                                            x8931))))
                                                                                                 (image?
                                                                                                  j7802
                                                                                                  k7803
                                                                                                  x8930))))
                                                                                       g8929))))
                                                                           g8928))
                                                                       xj7798
                                                                       xk7799
                                                                       empty-scene)))
                                                              g8927)))
                                                         (x8925 (input))
                                                         (x8924 (input)))
                                                  (x8926 x8925 x8924))
                                                (letrec ((x8937
                                                          (letrec ((xj7805
                                                                    (loc
                                                                     'module))
                                                                   (xk7806
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8938
                                                                      ((lambda (j7811
                                                                                k7812
                                                                                f7813)
                                                                         (letrec ((g8939
                                                                                   (lambda (g7807
                                                                                            g7808
                                                                                            g7809
                                                                                            g7810)
                                                                                     (letrec ((g8940
                                                                                               (letrec ((x8941
                                                                                                         (letrec ((x8945
                                                                                                                   (image?/c
                                                                                                                    j7811
                                                                                                                    k7812
                                                                                                                    g7807))
                                                                                                                  (x8944
                                                                                                                   (real?/c
                                                                                                                    j7811
                                                                                                                    k7812
                                                                                                                    g7808))
                                                                                                                  (x8943
                                                                                                                   (real?/c
                                                                                                                    j7811
                                                                                                                    k7812
                                                                                                                    g7809))
                                                                                                                  (x8942
                                                                                                                   (image?
                                                                                                                    j7811
                                                                                                                    k7812
                                                                                                                    g7810)))
                                                                                                           (f7813
                                                                                                            x8945
                                                                                                            x8944
                                                                                                            x8943
                                                                                                            x8942))))
                                                                                                 (image?
                                                                                                  j7811
                                                                                                  k7812
                                                                                                  x8941))))
                                                                                       g8940))))
                                                                           g8939))
                                                                       xj7805
                                                                       xk7806
                                                                       place-image)))
                                                              g8938)))
                                                         (x8936 (input))
                                                         (x8935 (input))
                                                         (x8934 (input))
                                                         (x8933 (input)))
                                                  (x8937
                                                   x8936
                                                   x8935
                                                   x8934
                                                   x8933))
                                                (letrec ((x8949
                                                          (letrec ((xj7814
                                                                    (loc
                                                                     'module))
                                                                   (xk7815
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8950
                                                                      ((lambda (j7819
                                                                                k7820
                                                                                f7821)
                                                                         (letrec ((g8951
                                                                                   (lambda (g7816
                                                                                            g7817
                                                                                            g7818)
                                                                                     (letrec ((g8952
                                                                                               (letrec ((x8953
                                                                                                         (letrec ((x8956
                                                                                                                   (real?/c
                                                                                                                    j7819
                                                                                                                    k7820
                                                                                                                    g7816))
                                                                                                                  (x8955
                                                                                                                   (string?/c
                                                                                                                    j7819
                                                                                                                    k7820
                                                                                                                    g7817))
                                                                                                                  (x8954
                                                                                                                   (string?/c
                                                                                                                    j7819
                                                                                                                    k7820
                                                                                                                    g7818)))
                                                                                                           (f7821
                                                                                                            x8956
                                                                                                            x8955
                                                                                                            x8954))))
                                                                                                 (image?
                                                                                                  j7819
                                                                                                  k7820
                                                                                                  x8953))))
                                                                                       g8952))))
                                                                           g8951))
                                                                       xj7814
                                                                       xk7815
                                                                       circle)))
                                                              g8950)))
                                                         (x8948 (input))
                                                         (x8947 (input))
                                                         (x8946 (input)))
                                                  (x8949 x8948 x8947 x8946))
                                                (letrec ((x8960
                                                          (letrec ((xj7822
                                                                    (loc
                                                                     'module))
                                                                   (xk7823
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8961
                                                                      ((lambda (j7827
                                                                                k7828
                                                                                f7829)
                                                                         (letrec ((g8962
                                                                                   (lambda (g7824
                                                                                            g7825
                                                                                            g7826)
                                                                                     (letrec ((g8963
                                                                                               (letrec ((x8964
                                                                                                         (letrec ((x8967
                                                                                                                   (player/c
                                                                                                                    j7827
                                                                                                                    k7828
                                                                                                                    g7824))
                                                                                                                  (x8966
                                                                                                                   (posn/c
                                                                                                                    j7827
                                                                                                                    k7828
                                                                                                                    g7825))
                                                                                                                  (x8965
                                                                                                                   (horde/c
                                                                                                                    j7827
                                                                                                                    k7828
                                                                                                                    g7826)))
                                                                                                           (f7829
                                                                                                            x8967
                                                                                                            x8966
                                                                                                            x8965))))
                                                                                                 (world/c
                                                                                                  j7827
                                                                                                  k7828
                                                                                                  x8964))))
                                                                                       g8963))))
                                                                           g8962))
                                                                       xj7822
                                                                       xk7823
                                                                       new-world)))
                                                              g8961)))
                                                         (x8959 (input))
                                                         (x8958 (input))
                                                         (x8957 (input)))
                                                  (x8960 x8959 x8958 x8957))
                                                (letrec ((x8969
                                                          (letrec ((xj7830
                                                                    (loc
                                                                     'module))
                                                                   (xk7831
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8970
                                                                      ((lambda (j7833
                                                                                k7834
                                                                                f7835)
                                                                         (letrec ((g8971
                                                                                   (lambda (g7832)
                                                                                     (letrec ((g8972
                                                                                               (letrec ((x8973
                                                                                                         (letrec ((x8974
                                                                                                                   (posn/c
                                                                                                                    j7833
                                                                                                                    k7834
                                                                                                                    g7832)))
                                                                                                           (f7835
                                                                                                            x8974))))
                                                                                                 (player/c
                                                                                                  j7833
                                                                                                  k7834
                                                                                                  x8973))))
                                                                                       g8972))))
                                                                           g8971))
                                                                       xj7830
                                                                       xk7831
                                                                       new-player)))
                                                              g8970)))
                                                         (x8968 (input)))
                                                  (x8969 x8968))
                                                (letrec ((x8977
                                                          (letrec ((xj7836
                                                                    (loc
                                                                     'module))
                                                                   (xk7837
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8978
                                                                      ((lambda (j7840
                                                                                k7841
                                                                                f7842)
                                                                         (letrec ((g8979
                                                                                   (lambda (g7838
                                                                                            g7839)
                                                                                     (letrec ((g8980
                                                                                               (letrec ((x8981
                                                                                                         (letrec ((x8983
                                                                                                                   (zombies/c
                                                                                                                    j7840
                                                                                                                    k7841
                                                                                                                    g7838))
                                                                                                                  (x8982
                                                                                                                   (zombies/c
                                                                                                                    j7840
                                                                                                                    k7841
                                                                                                                    g7839)))
                                                                                                           (f7842
                                                                                                            x8983
                                                                                                            x8982))))
                                                                                                 (horde/c
                                                                                                  j7840
                                                                                                  k7841
                                                                                                  x8981))))
                                                                                       g8980))))
                                                                           g8979))
                                                                       xj7836
                                                                       xk7837
                                                                       new-horde)))
                                                              g8978)))
                                                         (x8976 (input))
                                                         (x8975 (input)))
                                                  (x8977 x8976 x8975))
                                                (letrec ((x8986
                                                          (letrec ((xj7843
                                                                    (loc
                                                                     'module))
                                                                   (xk7844
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8987
                                                                      ((lambda (j7847
                                                                                k7848
                                                                                f7849)
                                                                         (letrec ((g8988
                                                                                   (lambda (g7845
                                                                                            g7846)
                                                                                     (letrec ((g8989
                                                                                               (letrec ((x8990
                                                                                                         (letrec ((x8992
                                                                                                                   (zombie/c
                                                                                                                    j7847
                                                                                                                    k7848
                                                                                                                    g7845))
                                                                                                                  (x8991
                                                                                                                   (zombies/c
                                                                                                                    j7847
                                                                                                                    k7848
                                                                                                                    g7846)))
                                                                                                           (f7849
                                                                                                            x8992
                                                                                                            x8991))))
                                                                                                 (zombies/c
                                                                                                  j7847
                                                                                                  k7848
                                                                                                  x8990))))
                                                                                       g8989))))
                                                                           g8988))
                                                                       xj7843
                                                                       xk7844
                                                                       new-cons-zombies)))
                                                              g8987)))
                                                         (x8985 (input))
                                                         (x8984 (input)))
                                                  (x8986 x8985 x8984))
                                                (letrec ((xj7850 (loc 'module))
                                                         (xk7851
                                                          (loc 'importer)))
                                                  (letrec ((g8993
                                                            ((lambda (j7852
                                                                      k7853
                                                                      f7854)
                                                               (letrec ((g8994
                                                                         (lambda ()
                                                                           (letrec ((g8995
                                                                                     (letrec ((x8996
                                                                                               (f7854)))
                                                                                       (zombies/c
                                                                                        j7852
                                                                                        k7853
                                                                                        x8996))))
                                                                             g8995))))
                                                                 g8994))
                                                             xj7850
                                                             xk7851
                                                             new-mt-zombies)))
                                                    g8993))
                                                (letrec ((x8998
                                                          (letrec ((xj7855
                                                                    (loc
                                                                     'module))
                                                                   (xk7856
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8999
                                                                      ((lambda (j7858
                                                                                k7859
                                                                                f7860)
                                                                         (letrec ((g9000
                                                                                   (lambda (g7857)
                                                                                     (letrec ((g9001
                                                                                               (letrec ((x9002
                                                                                                         (letrec ((x9003
                                                                                                                   (posn/c
                                                                                                                    j7858
                                                                                                                    k7859
                                                                                                                    g7857)))
                                                                                                           (f7860
                                                                                                            x9003))))
                                                                                                 (zombie/c
                                                                                                  j7858
                                                                                                  k7859
                                                                                                  x9002))))
                                                                                       g9001))))
                                                                           g9000))
                                                                       xj7855
                                                                       xk7856
                                                                       new-zombie)))
                                                              g8999)))
                                                         (x8997 (input)))
                                                  (x8998 x8997))
                                                (letrec ((x9006
                                                          (letrec ((xj7861
                                                                    (loc
                                                                     'module))
                                                                   (xk7862
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9007
                                                                      ((lambda (j7865
                                                                                k7866
                                                                                f7867)
                                                                         (letrec ((g9008
                                                                                   (lambda (g7863
                                                                                            g7864)
                                                                                     (letrec ((g9009
                                                                                               (letrec ((x9010
                                                                                                         (letrec ((x9012
                                                                                                                   (real?/c
                                                                                                                    j7865
                                                                                                                    k7866
                                                                                                                    g7863))
                                                                                                                  (x9011
                                                                                                                   (real?/c
                                                                                                                    j7865
                                                                                                                    k7866
                                                                                                                    g7864)))
                                                                                                           (f7867
                                                                                                            x9012
                                                                                                            x9011))))
                                                                                                 (posn/c
                                                                                                  j7865
                                                                                                  k7866
                                                                                                  x9010))))
                                                                                       g9009))))
                                                                           g9008))
                                                                       xj7861
                                                                       xk7862
                                                                       new-posn)))
                                                              g9007)))
                                                         (x9005 (input))
                                                         (x9004 (input)))
                                                  (x9006 x9005 x9004))
                                                (letrec ((xj7868 (loc 'module))
                                                         (xk7869
                                                          (loc 'importer)))
                                                  (letrec ((g9013
                                                            (world/c
                                                             xj7868
                                                             xk7869
                                                             w0)))
                                                    g9013))))))
                                      g8916))))
                          g7884))))
              g7882)))
    g7881))
