(letrec ((any? (lambda (v) (letrec ((g7995 #t)) g7995)))
         (meta (lambda (v) (letrec ((g7996 v)) g7996)))
         (member
          (lambda (v lst)
            (letrec ((g7997
                      (letrec ((g7998
                                (letrec ((x-e7999 lst))
                                  (match
                                   x-e7999
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd8000 (eq? v v1)))
                                       (if x-cnd8000 #t (member v vs)))))))))
                        g7998)))
              g7997)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g8001 (lambda (v) (letrec ((g8002 v)) g8002)))) g8001)))
         (nonzero?
          (lambda (v)
            (letrec ((g8003 (letrec ((x8004 (= v 0))) (not x8004)))) g8003))))
  (letrec ((g8005
            (letrec ((g8006
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g8007 '())
                                 (g8008
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g8009
                                                        (lambda (k j lst)
                                                          (letrec ((g8010
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g8011
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g8011))
                                                                     lst)))
                                                            g8010))))
                                                g8009)))
                                           (real?/c
                                            (lambda (g7534 g7535 g7536)
                                              (letrec ((g8012
                                                        (letrec ((x-cnd8013
                                                                  (real?
                                                                   g7536)))
                                                          (if x-cnd8013
                                                            g7536
                                                            (blame
                                                             g7534
                                                             'real?)))))
                                                g8012)))
                                           (boolean?/c
                                            (lambda (g7537 g7538 g7539)
                                              (letrec ((g8014
                                                        (letrec ((x-cnd8015
                                                                  (boolean?
                                                                   g7539)))
                                                          (if x-cnd8015
                                                            g7539
                                                            (blame
                                                             g7537
                                                             'boolean?)))))
                                                g8014)))
                                           (number?/c
                                            (lambda (g7540 g7541 g7542)
                                              (letrec ((g8016
                                                        (letrec ((x-cnd8017
                                                                  (number?
                                                                   g7542)))
                                                          (if x-cnd8017
                                                            g7542
                                                            (blame
                                                             g7540
                                                             'number?)))))
                                                g8016)))
                                           (any/c
                                            (lambda (g7543 g7544 g7545)
                                              (letrec ((g8018
                                                        (letrec ((x-cnd8019
                                                                  ((lambda (v)
                                                                     (letrec ((g8020
                                                                               #t))
                                                                       g8020))
                                                                   g7545)))
                                                          (if x-cnd8019
                                                            g7545
                                                            (blame
                                                             g7543
                                                             '(lambda (v)
                                                                #t))))))
                                                g8018)))
                                           (any?/c
                                            (lambda (g7546 g7547 g7548)
                                              (letrec ((g8021
                                                        (letrec ((x-cnd8022
                                                                  ((lambda (v)
                                                                     (letrec ((g8023
                                                                               #t))
                                                                       g8023))
                                                                   g7548)))
                                                          (if x-cnd8022
                                                            g7548
                                                            (blame
                                                             g7546
                                                             '(lambda (v)
                                                                #t))))))
                                                g8021)))
                                           (cons?/c
                                            (lambda (g7549 g7550 g7551)
                                              (letrec ((g8024
                                                        (letrec ((x-cnd8025
                                                                  (pair?
                                                                   g7551)))
                                                          (if x-cnd8025
                                                            g7551
                                                            (blame
                                                             g7549
                                                             'pair?)))))
                                                g8024)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7552 g7553 g7554)
                                              (letrec ((g8026
                                                        (letrec ((x-cnd8027
                                                                  (pair?
                                                                   g7554)))
                                                          (if x-cnd8027
                                                            g7554
                                                            (blame
                                                             g7552
                                                             'pair?)))))
                                                g8026)))
                                           (integer?/c
                                            (lambda (g7555 g7556 g7557)
                                              (letrec ((g8028
                                                        (letrec ((x-cnd8029
                                                                  (integer?
                                                                   g7557)))
                                                          (if x-cnd8029
                                                            g7557
                                                            (blame
                                                             g7555
                                                             'integer?)))))
                                                g8028)))
                                           (symbol?/c
                                            (lambda (g7558 g7559 g7560)
                                              (letrec ((g8030
                                                        (letrec ((x-cnd8031
                                                                  (symbol?
                                                                   g7560)))
                                                          (if x-cnd8031
                                                            g7560
                                                            (blame
                                                             g7558
                                                             'symbol?)))))
                                                g8030)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g8032
                                                        (lambda (k j v)
                                                          (letrec ((g8033
                                                                    (letrec ((x-cnd8034
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd8034
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g8033))))
                                                g8032)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g8035
                                                        (lambda (k j v)
                                                          (letrec ((g8036
                                                                    (letrec ((x-cnd8037
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd8037
                                                                        '()
                                                                        (letrec ((x8041
                                                                                  (letrec ((x8042
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x8042)))
                                                                                 (x8038
                                                                                  (letrec ((x8040
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x8039
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x8040
                                                                                     k
                                                                                     j
                                                                                     x8039))))
                                                                          (orig-cons
                                                                           x8041
                                                                           x8038))))))
                                                            g8036))))
                                                g8035)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g8043 #t)) g8043)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g8044
                                                        (letrec ((x8045
                                                                  (= v 0)))
                                                          (not x8045))))
                                                g8044)))
                                           (nonzero?/c
                                            (lambda (g7561 g7562 g7563)
                                              (letrec ((g8046
                                                        (letrec ((x-cnd8047
                                                                  ((lambda (v)
                                                                     (letrec ((g8048
                                                                               (letrec ((x8049
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x8049))))
                                                                       g8048))
                                                                   g7563)))
                                                          (if x-cnd8047
                                                            g7563
                                                            (blame
                                                             g7561
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g8046)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g8050 v)) g8050)))
                                           (+
                                            (letrec ((xj7564 'server)
                                                     (xk7565 'client))
                                              (letrec ((g8051
                                                        ((lambda (j7568
                                                                  k7569
                                                                  f7570)
                                                           (letrec ((g8053
                                                                     (lambda (g7566
                                                                              g7567)
                                                                       (letrec ((g8054
                                                                                 (letrec ((x8055
                                                                                           (letrec ((x8057
                                                                                                     (number?/c
                                                                                                      j7568
                                                                                                      k7569
                                                                                                      g7566))
                                                                                                    (x8056
                                                                                                     (number?/c
                                                                                                      j7568
                                                                                                      k7569
                                                                                                      g7567)))
                                                                                             (f7570
                                                                                              x8057
                                                                                              x8056))))
                                                                                   (number?/c
                                                                                    j7568
                                                                                    k7569
                                                                                    x8055))))
                                                                         g8054))))
                                                             g8053))
                                                         xj7564
                                                         xk7565
                                                         (lambda (a b)
                                                           (letrec ((g8052
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g8052)))))
                                                g8051)))
                                           (-
                                            (letrec ((xj7571 'server)
                                                     (xk7572 'client))
                                              (letrec ((g8058
                                                        ((lambda (j7575
                                                                  k7576
                                                                  f7577)
                                                           (letrec ((g8060
                                                                     (lambda (g7573
                                                                              g7574)
                                                                       (letrec ((g8061
                                                                                 (letrec ((x8062
                                                                                           (letrec ((x8064
                                                                                                     (number?/c
                                                                                                      j7575
                                                                                                      k7576
                                                                                                      g7573))
                                                                                                    (x8063
                                                                                                     (number?/c
                                                                                                      j7575
                                                                                                      k7576
                                                                                                      g7574)))
                                                                                             (f7577
                                                                                              x8064
                                                                                              x8063))))
                                                                                   (number?/c
                                                                                    j7575
                                                                                    k7576
                                                                                    x8062))))
                                                                         g8061))))
                                                             g8060))
                                                         xj7571
                                                         xk7572
                                                         (lambda (a b)
                                                           (letrec ((g8059
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g8059)))))
                                                g8058)))
                                           (*
                                            (letrec ((xj7578 'server)
                                                     (xk7579 'client))
                                              (letrec ((g8065
                                                        ((lambda (j7582
                                                                  k7583
                                                                  f7584)
                                                           (letrec ((g8067
                                                                     (lambda (g7580
                                                                              g7581)
                                                                       (letrec ((g8068
                                                                                 (letrec ((x8069
                                                                                           (letrec ((x8071
                                                                                                     (number?/c
                                                                                                      j7582
                                                                                                      k7583
                                                                                                      g7580))
                                                                                                    (x8070
                                                                                                     (number?/c
                                                                                                      j7582
                                                                                                      k7583
                                                                                                      g7581)))
                                                                                             (f7584
                                                                                              x8071
                                                                                              x8070))))
                                                                                   (number?/c
                                                                                    j7582
                                                                                    k7583
                                                                                    x8069))))
                                                                         g8068))))
                                                             g8067))
                                                         xj7578
                                                         xk7579
                                                         (lambda (a b)
                                                           (letrec ((g8066
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g8066)))))
                                                g8065)))
                                           (/
                                            (letrec ((xj7585 'server)
                                                     (xk7586 'client))
                                              (letrec ((g8072
                                                        ((lambda (j7589
                                                                  k7590
                                                                  f7591)
                                                           (letrec ((g8074
                                                                     (lambda (g7587
                                                                              g7588)
                                                                       (letrec ((g8075
                                                                                 (letrec ((x8076
                                                                                           (letrec ((x8078
                                                                                                     (number?/c
                                                                                                      j7589
                                                                                                      k7590
                                                                                                      g7587))
                                                                                                    (x8077
                                                                                                     (number?/c
                                                                                                      j7589
                                                                                                      k7590
                                                                                                      g7588)))
                                                                                             (f7591
                                                                                              x8078
                                                                                              x8077))))
                                                                                   (number?/c
                                                                                    j7589
                                                                                    k7590
                                                                                    x8076))))
                                                                         g8075))))
                                                             g8074))
                                                         xj7585
                                                         xk7586
                                                         (lambda (a b)
                                                           (letrec ((g8073
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g8073)))))
                                                g8072)))
                                           (car
                                            (letrec ((xj7592 'server)
                                                     (xk7593 'client))
                                              (letrec ((g8079
                                                        ((lambda (j7595
                                                                  k7596
                                                                  f7597)
                                                           (letrec ((g8081
                                                                     (lambda (g7594)
                                                                       (letrec ((g8082
                                                                                 (letrec ((x8083
                                                                                           (letrec ((x8084
                                                                                                     (pair?/c
                                                                                                      j7595
                                                                                                      k7596
                                                                                                      g7594)))
                                                                                             (f7597
                                                                                              x8084))))
                                                                                   (any/c
                                                                                    j7595
                                                                                    k7596
                                                                                    x8083))))
                                                                         g8082))))
                                                             g8081))
                                                         xj7592
                                                         xk7593
                                                         (lambda (p)
                                                           (letrec ((g8080
                                                                     (orig-car
                                                                      p)))
                                                             g8080)))))
                                                g8079)))
                                           (cdr
                                            (letrec ((xj7598 'server)
                                                     (xk7599 'client))
                                              (letrec ((g8085
                                                        ((lambda (j7601
                                                                  k7602
                                                                  f7603)
                                                           (letrec ((g8087
                                                                     (lambda (g7600)
                                                                       (letrec ((g8088
                                                                                 (letrec ((x8089
                                                                                           (letrec ((x8090
                                                                                                     (pair?/c
                                                                                                      j7601
                                                                                                      k7602
                                                                                                      g7600)))
                                                                                             (f7603
                                                                                              x8090))))
                                                                                   (any/c
                                                                                    j7601
                                                                                    k7602
                                                                                    x8089))))
                                                                         g8088))))
                                                             g8087))
                                                         xj7598
                                                         xk7599
                                                         (lambda (p)
                                                           (letrec ((g8086
                                                                     (orig-cdr
                                                                      p)))
                                                             g8086)))))
                                                g8085)))
                                           (cons
                                            (letrec ((xj7604 'server)
                                                     (xk7605 'client))
                                              (letrec ((g8091
                                                        ((lambda (j7608
                                                                  k7609
                                                                  f7610)
                                                           (letrec ((g8093
                                                                     (lambda (g7606
                                                                              g7607)
                                                                       (letrec ((g8094
                                                                                 (letrec ((x8095
                                                                                           (letrec ((x8097
                                                                                                     (any/c
                                                                                                      j7608
                                                                                                      k7609
                                                                                                      g7606))
                                                                                                    (x8096
                                                                                                     (any/c
                                                                                                      j7608
                                                                                                      k7609
                                                                                                      g7607)))
                                                                                             (f7610
                                                                                              x8097
                                                                                              x8096))))
                                                                                   (pair?/c
                                                                                    j7608
                                                                                    k7609
                                                                                    x8095))))
                                                                         g8094))))
                                                             g8093))
                                                         xj7604
                                                         xk7605
                                                         (lambda (a b)
                                                           (letrec ((g8092
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g8092)))))
                                                g8091)))
                                           (vector-ref
                                            (letrec ((xj7611 'server)
                                                     (xk7612 'client))
                                              (letrec ((g8098
                                                        ((lambda (j7614
                                                                  k7615
                                                                  f7616)
                                                           (letrec ((g8100
                                                                     (lambda (g7613)
                                                                       (letrec ((g8101
                                                                                 (letrec ((x8102
                                                                                           (letrec ((x8103
                                                                                                     (vector?/c
                                                                                                      j7614
                                                                                                      k7615
                                                                                                      g7613)))
                                                                                             (f7616
                                                                                              x8103))))
                                                                                   (integer?/c
                                                                                    j7614
                                                                                    k7615
                                                                                    x8102))))
                                                                         g8101))))
                                                             g8100))
                                                         xj7611
                                                         xk7612
                                                         (lambda (v i)
                                                           (letrec ((g8099
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g8099)))))
                                                g8098)))
                                           (vector-set!
                                            (letrec ((xj7617 'server)
                                                     (xk7618 'client))
                                              (letrec ((g8104
                                                        ((lambda (j7621
                                                                  k7622
                                                                  f7623)
                                                           (letrec ((g8106
                                                                     (lambda (g7619
                                                                              g7620)
                                                                       (letrec ((g8107
                                                                                 (letrec ((x8108
                                                                                           (letrec ((x8110
                                                                                                     (vector?/c
                                                                                                      j7621
                                                                                                      k7622
                                                                                                      g7619))
                                                                                                    (x8109
                                                                                                     (integer?/c
                                                                                                      j7621
                                                                                                      k7622
                                                                                                      g7620)))
                                                                                             (f7623
                                                                                              x8110
                                                                                              x8109))))
                                                                                   (any/c
                                                                                    j7621
                                                                                    k7622
                                                                                    x8108))))
                                                                         g8107))))
                                                             g8106))
                                                         xj7617
                                                         xk7618
                                                         (lambda (vec i v)
                                                           (letrec ((g8105
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g8105)))))
                                                g8104)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g8111
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g8111)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g8112
                                                        (letrec ((x8113
                                                                  (letrec ((x8114
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8114))))
                                                          (cdr x8113))))
                                                g8112)))
                                           (__toplevel_set-car! set-car!)
                                           (map
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
                                                            '()
                                                            (letrec ((x8123
                                                                      (letrec ((x8124
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x8124)))
                                                                     (x8121
                                                                      (letrec ((x8122
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x8122))))
                                                              (cons
                                                               x8123
                                                               x8121))))))
                                                g8117)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g8125
                                                        (letrec ((x8126
                                                                  (car x)))
                                                          (cdr x8126))))
                                                g8125)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g8127
                                                        (letrec ((x8128
                                                                  (letrec ((x8129
                                                                            (letrec ((x8130
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8130))))
                                                                    (cdr
                                                                     x8129))))
                                                          (car x8128))))
                                                g8127)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g8131
                                                        (letrec ((x8132
                                                                  (letrec ((x8133
                                                                            (letrec ((x8134
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8134))))
                                                                    (car
                                                                     x8133))))
                                                          (cdr x8132))))
                                                g8131)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g8135
                                                        (letrec ((x8138
                                                                  (string?
                                                                   filename)))
                                                          (assert x8138)))
                                                       (g8136
                                                        (letrec ((x8139
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8139)))
                                                       (g8137
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g8140
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g8141 res))
                                                            g8141))))
                                                g8137)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8144))))
                                                          (car x8143))))
                                                g8142)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g8145
                                                        (letrec ((x8146
                                                                  (letrec ((x8147
                                                                            (letrec ((x8148
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8148))))
                                                                    (car
                                                                     x8147))))
                                                          (cdr x8146))))
                                                g8145)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g8149
                                                        (letrec ((x8151
                                                                  (list? l)))
                                                          (assert x8151)))
                                                       (g8150
                                                        (letrec ((x-cnd8152
                                                                  (null? l)))
                                                          (if x-cnd8152
                                                            #f
                                                            (letrec ((x-cnd8153
                                                                      (letrec ((x8154
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x8154
                                                                         k))))
                                                              (if x-cnd8153
                                                                (car l)
                                                                (letrec ((x8155
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8155))))))))
                                                g8150)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8156
                                                        (letrec ((x8157
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8157))))
                                                g8156)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8158
                                                        (letrec ((x8160
                                                                  (list? l)))
                                                          (assert x8160)))
                                                       (g8159
                                                        (letrec ((x-cnd8161
                                                                  (null? l)))
                                                          (if x-cnd8161
                                                            ""
                                                            (letrec ((x8164
                                                                      (letrec ((x8165
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8165)))
                                                                     (x8162
                                                                      (letrec ((x8163
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8163))))
                                                              (string-append
                                                               x8164
                                                               x8162))))))
                                                g8159)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8166
                                                        (letrec ((x8169
                                                                  (char? c1)))
                                                          (assert x8169)))
                                                       (g8167
                                                        (letrec ((x8170
                                                                  (char? c2)))
                                                          (assert x8170)))
                                                       (g8168
                                                        (letrec ((val7515
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8171
                                                                    (if val7515
                                                                      val7515
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8171))))
                                                g8168)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8172
                                                        (letrec ((x8173
                                                                  (letrec ((x8174
                                                                            (letrec ((x8175
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8175))))
                                                                    (cdr
                                                                     x8174))))
                                                          (cdr x8173))))
                                                g8172)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8176
                                                        (letrec ((x8179
                                                                  (list? l)))
                                                          (assert x8179)))
                                                       (g8177
                                                        (letrec ((x8180
                                                                  (number?)))
                                                          (assert x8180)))
                                                       (g8178
                                                        (letrec ((x-cnd8181
                                                                  (zero? k)))
                                                          (if x-cnd8181
                                                            x
                                                            (letrec ((x8183
                                                                      (cdr x))
                                                                     (x8182
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8183
                                                               x8182))))))
                                                g8178)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8184 '())) g8184)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8185
                                                        (letrec ((x-cnd8186
                                                                  (letrec ((x8187
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8187))))
                                                          (if x-cnd8186
                                                            (letrec ((x8188
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8188))
                                                            #f))))
                                                g8185)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g8189
                                                        (letrec ((x8191
                                                                  (number? x)))
                                                          (assert x8191)))
                                                       (g8190
                                                        (letrec ((val7516
                                                                  (< x y)))
                                                          (letrec ((g8192
                                                                    (if val7516
                                                                      val7516
                                                                      (letrec ((val7517
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8193
                                                                                  (if val7517
                                                                                    val7517
                                                                                    #f)))
                                                                          g8193)))))
                                                            g8192))))
                                                g8190)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8194
                                                        (letrec ((val7518
                                                                  (letrec ((x8195
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8195
                                                                     9))))
                                                          (letrec ((g8196
                                                                    (if val7518
                                                                      val7518
                                                                      (letrec ((val7519
                                                                                (letrec ((x8197
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8197
                                                                                   10))))
                                                                        (letrec ((g8198
                                                                                  (if val7519
                                                                                    val7519
                                                                                    (letrec ((x8199
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8199
                                                                                       32)))))
                                                                          g8198)))))
                                                            g8196))))
                                                g8194)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8200
                                                        (letrec ((x8201
                                                                  (letrec ((x8202
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8202))))
                                                          (cdr x8201))))
                                                g8200)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8203
                                                        (letrec ((x8205
                                                                  (number? x)))
                                                          (assert x8205)))
                                                       (g8204 (> x 0)))
                                                g8204)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8206 #f)) g8206)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8207
                                                        (letrec ((x8208
                                                                  (cdr x)))
                                                          (cdr x8208))))
                                                g8207)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8209
                                                        (letrec ((x8211
                                                                  (number? x)))
                                                          (assert x8211)))
                                                       (g8210
                                                        (letrec ((x-cnd8212
                                                                  (< x 0)))
                                                          (if x-cnd8212
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8210)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8213
                                                        (letrec ((val7520
                                                                  (eq? a b)))
                                                          (letrec ((g8214
                                                                    (if val7520
                                                                      val7520
                                                                      (letrec ((val7521
                                                                                (letrec ((x-cnd8215
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8215
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8216
                                                                                  (if val7521
                                                                                    val7521
                                                                                    (letrec ((val7522
                                                                                              (letrec ((x-cnd8217
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8217
                                                                                                  (letrec ((x-cnd8218
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8218
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8219
                                                                                                (if val7522
                                                                                                  val7522
                                                                                                  (letrec ((val7523
                                                                                                            (letrec ((x-cnd8220
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8220
                                                                                                                (letrec ((x-cnd8221
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8221
                                                                                                                    (letrec ((x-cnd8222
                                                                                                                              (letrec ((x8224
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8223
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8224
                                                                                                                                 x8223))))
                                                                                                                      (if x-cnd8222
                                                                                                                        (letrec ((x8226
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8225
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8226
                                                                                                                           x8225))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8227
                                                                                                              (if val7523
                                                                                                                val7523
                                                                                                                (letrec ((x-cnd8228
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8228
                                                                                                                    (letrec ((x-cnd8229
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8229
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8230
                                                                                                                                    (letrec ((x-cnd8231
                                                                                                                                              (letrec ((x8232
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8232
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8231
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8233
                                                                                                                                                              (letrec ((val7524
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8234
                                                                                                                                                                          (if val7524
                                                                                                                                                                            val7524
                                                                                                                                                                            (letrec ((x-cnd8235
                                                                                                                                                                                      (letrec ((x8237
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8236
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8237
                                                                                                                                                                                         x8236))))
                                                                                                                                                                              (if x-cnd8235
                                                                                                                                                                                (letrec ((x8238
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8238))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8234))))
                                                                                                                                                      g8233))))
                                                                                                                                          (letrec ((g8239
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8239))
                                                                                                                                        #f))))
                                                                                                                            g8230))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8227)))))
                                                                                        g8219)))))
                                                                          g8216)))))
                                                            g8214))))
                                                g8213)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8240
                                                        (letrec ((x8241
                                                                  (letrec ((x8242
                                                                            (letrec ((x8243
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8243))))
                                                                    (car
                                                                     x8242))))
                                                          (cdr x8241))))
                                                g8240)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8244
                                                        (letrec ((x8245
                                                                  (letrec ((x8246
                                                                            (letrec ((x8247
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8247))))
                                                                    (car
                                                                     x8246))))
                                                          (car x8245))))
                                                g8244)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8248 (eq? x y)))
                                                g8248)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g8249
                                                        (letrec ((x8251
                                                                  (number? x)))
                                                          (assert x8251)))
                                                       (g8250
                                                        (letrec ((val7525
                                                                  (> x y)))
                                                          (letrec ((g8252
                                                                    (if val7525
                                                                      val7525
                                                                      (letrec ((val7526
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8253
                                                                                  (if val7526
                                                                                    val7526
                                                                                    #f)))
                                                                          g8253)))))
                                                            g8252))))
                                                g8250)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8254
                                                        (letrec ((x8257
                                                                  (string?
                                                                   filename)))
                                                          (assert x8257)))
                                                       (g8255
                                                        (letrec ((x8258
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8258)))
                                                       (g8256
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8259
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8260 res))
                                                            g8260))))
                                                g8256)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8261 (cons x '())))
                                                g8261)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8262
                                                        (letrec ((x8265
                                                                  (char? c1)))
                                                          (assert x8265)))
                                                       (g8263
                                                        (letrec ((x8266
                                                                  (char? c2)))
                                                          (assert x8266)))
                                                       (g8264
                                                        (letrec ((val7527
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8267
                                                                    (if val7527
                                                                      val7527
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8267))))
                                                g8264)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8268
                                                        (letrec ((x8269
                                                                  (letrec ((x8270
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8270))))
                                                          (cdr x8269))))
                                                g8268)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8271
                                                        (letrec ((x8272
                                                                  (letrec ((x8273
                                                                            (letrec ((x8274
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8274))))
                                                                    (car
                                                                     x8273))))
                                                          (cdr x8272))))
                                                g8271)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8275
                                                        (letrec ((x8276
                                                                  (letrec ((x8277
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8277))))
                                                          (car x8276))))
                                                g8275)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8278
                                                        (letrec ((x8279
                                                                  (letrec ((x8280
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8280))))
                                                          (car x8279))))
                                                g8278)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8281
                                                        (letrec ((x8284
                                                                  (char? c1)))
                                                          (assert x8284)))
                                                       (g8282
                                                        (letrec ((x8285
                                                                  (char? c2)))
                                                          (assert x8285)))
                                                       (g8283
                                                        (letrec ((x8286
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8286))))
                                                g8283)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8287
                                                        (letrec ((x8288
                                                                  (letrec ((x8289
                                                                            (letrec ((x8290
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8290))))
                                                                    (car
                                                                     x8289))))
                                                          (car x8288))))
                                                g8287)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8291
                                                        (letrec ((x8293
                                                                  (number? x)))
                                                          (assert x8293)))
                                                       (g8292 (< x 0)))
                                                g8292)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8294 (memq e l)))
                                                g8294)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8295
                                                        (letrec ((x8296
                                                                  (letrec ((x8297
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8297))))
                                                          (car x8296))))
                                                g8295)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8298 '())) g8298)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8299
                                                        (letrec ((x8301
                                                                  (list? l)))
                                                          (assert x8301)))
                                                       (g8300
                                                        (letrec ((x-cnd8302
                                                                  (null? l)))
                                                          (if x-cnd8302
                                                            '()
                                                            (letrec ((x8305
                                                                      (letrec ((x8306
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8306)))
                                                                     (x8303
                                                                      (letrec ((x8304
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8304))))
                                                              (append
                                                               x8305
                                                               x8303))))))
                                                g8300)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8307
                                                        (letrec ((x8308
                                                                  (letrec ((x8309
                                                                            (letrec ((x8310
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8310))))
                                                                    (car
                                                                     x8309))))
                                                          (car x8308))))
                                                g8307)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8311
                                                        (letrec ((x8312
                                                                  (letrec ((x8313
                                                                            (letrec ((x8314
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8314))))
                                                                    (cdr
                                                                     x8313))))
                                                          (cdr x8312))))
                                                g8311)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8315
                                                        (letrec ((x8317
                                                                  (number? x)))
                                                          (assert x8317)))
                                                       (g8316
                                                        (letrec ((x8318
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8318))))
                                                g8316)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8319
                                                        (letrec ((x8320
                                                                  (letrec ((x8321
                                                                            (letrec ((x8322
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8322))))
                                                                    (car
                                                                     x8321))))
                                                          (car x8320))))
                                                g8319)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8323
                                                        (letrec ((x8326
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8326)))
                                                       (g8324
                                                        (letrec ((x8327
                                                                  (list?
                                                                   args)))
                                                          (assert x8327)))
                                                       (g8325
                                                        (letrec ((x-cnd8328
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8328
                                                            (letrec ((g8329
                                                                      (proc)))
                                                              g8329)
                                                            (letrec ((x-cnd8330
                                                                      (letrec ((x8331
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8331))))
                                                              (if x-cnd8330
                                                                (letrec ((g8332
                                                                          (letrec ((x8333
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8333))))
                                                                  g8332)
                                                                (letrec ((x-cnd8334
                                                                          (letrec ((x8335
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8335))))
                                                                  (if x-cnd8334
                                                                    (letrec ((g8336
                                                                              (letrec ((x8338
                                                                                        (car
                                                                                         args))
                                                                                       (x8337
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8338
                                                                                 x8337))))
                                                                      g8336)
                                                                    (letrec ((x-cnd8339
                                                                              (letrec ((x8340
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8340))))
                                                                      (if x-cnd8339
                                                                        (letrec ((g8341
                                                                                  (letrec ((x8344
                                                                                            (car
                                                                                             args))
                                                                                           (x8343
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8342
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8344
                                                                                     x8343
                                                                                     x8342))))
                                                                          g8341)
                                                                        (letrec ((x-cnd8345
                                                                                  (letrec ((x8346
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8346))))
                                                                          (if x-cnd8345
                                                                            (letrec ((g8347
                                                                                      (letrec ((x8351
                                                                                                (car
                                                                                                 args))
                                                                                               (x8350
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8349
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8348
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8351
                                                                                         x8350
                                                                                         x8349
                                                                                         x8348))))
                                                                              g8347)
                                                                            (letrec ((x-cnd8352
                                                                                      (letrec ((x8353
                                                                                                (letrec ((x8354
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8354))))
                                                                                        (null?
                                                                                         x8353))))
                                                                              (if x-cnd8352
                                                                                (letrec ((g8355
                                                                                          (letrec ((x8361
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8360
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8359
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8358
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8356
                                                                                                    (letrec ((x8357
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8357))))
                                                                                            (proc
                                                                                             x8361
                                                                                             x8360
                                                                                             x8359
                                                                                             x8358
                                                                                             x8356))))
                                                                                  g8355)
                                                                                (letrec ((x-cnd8362
                                                                                          (letrec ((x8363
                                                                                                    (letrec ((x8364
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8364))))
                                                                                            (null?
                                                                                             x8363))))
                                                                                  (if x-cnd8362
                                                                                    (letrec ((g8365
                                                                                              (letrec ((x8373
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8372
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8371
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8370
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8368
                                                                                                        (letrec ((x8369
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8369)))
                                                                                                       (x8366
                                                                                                        (letrec ((x8367
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8367))))
                                                                                                (proc
                                                                                                 x8373
                                                                                                 x8372
                                                                                                 x8371
                                                                                                 x8370
                                                                                                 x8368
                                                                                                 x8366))))
                                                                                      g8365)
                                                                                    (letrec ((x-cnd8374
                                                                                              (letrec ((x8375
                                                                                                        (letrec ((x8376
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8376))))
                                                                                                (null?
                                                                                                 x8375))))
                                                                                      (if x-cnd8374
                                                                                        (letrec ((g8377
                                                                                                  (letrec ((x8387
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8386
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8385
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8384
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8382
                                                                                                            (letrec ((x8383
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8383)))
                                                                                                           (x8380
                                                                                                            (letrec ((x8381
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8381)))
                                                                                                           (x8378
                                                                                                            (letrec ((x8379
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8379))))
                                                                                                    (proc
                                                                                                     x8387
                                                                                                     x8386
                                                                                                     x8385
                                                                                                     x8384
                                                                                                     x8382
                                                                                                     x8380
                                                                                                     x8378))))
                                                                                          g8377)
                                                                                        (letrec ((g8388
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8388)))))))))))))))))))
                                                g8325)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8389
                                                        (letrec ((x8391
                                                                  (list? l)))
                                                          (assert x8391)))
                                                       (g8390
                                                        (letrec ((x-cnd8392
                                                                  (null? l)))
                                                          (if x-cnd8392
                                                            #f
                                                            (letrec ((x-cnd8393
                                                                      (letrec ((x8394
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8394
                                                                         e))))
                                                              (if x-cnd8393
                                                                l
                                                                (letrec ((x8395
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8395))))))))
                                                g8390)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8396
                                                        (letrec ((x8397
                                                                  (letrec ((x8398
                                                                            (letrec ((x8399
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8399))))
                                                                    (cdr
                                                                     x8398))))
                                                          (cdr x8397))))
                                                g8396)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8400
                                                        (letrec ((x8401
                                                                  (letrec ((x8402
                                                                            (letrec ((x8403
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8403))))
                                                                    (cdr
                                                                     x8402))))
                                                          (car x8401))))
                                                g8400)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8404 (random 42)))
                                                g8404)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8405
                                                        (letrec ((x8407
                                                                  (number? x)))
                                                          (assert x8407)))
                                                       (g8406 (= x 0)))
                                                g8406)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8408
                                                        (letrec ((val7528
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8409
                                                                    (if val7528
                                                                      val7528
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8409))))
                                                g8408)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8410
                                                        (letrec ((x8411
                                                                  (cdr x)))
                                                          (car x8411))))
                                                g8410)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8412
                                                        (letrec ((val7529
                                                                  (letrec ((x-cnd8413
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8413
                                                                      (letrec ((x8414
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8414))
                                                                      #f))))
                                                          (letrec ((g8415
                                                                    (if val7529
                                                                      val7529
                                                                      (null?
                                                                       l))))
                                                            g8415))))
                                                g8412)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8416
                                                        (letrec ((x8417
                                                                  (letrec ((x8418
                                                                            (letrec ((x8419
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8419))))
                                                                    (cdr
                                                                     x8418))))
                                                          (cdr x8417))))
                                                g8416)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8420
                                                        (letrec ((x-cnd8421
                                                                  (letrec ((x8422
                                                                            #\0))
                                                                    (char<=?
                                                                     x8422
                                                                     c))))
                                                          (if x-cnd8421
                                                            (letrec ((x8423
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8423))
                                                            #f))))
                                                g8420)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8424
                                                        (letrec ((x8426
                                                                  (list? l)))
                                                          (assert x8426)))
                                                       (g8425
                                                        (letrec ((x-cnd8427
                                                                  (null? l)))
                                                          (if x-cnd8427
                                                            #f
                                                            (letrec ((x-cnd8428
                                                                      (letrec ((x8429
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8429
                                                                         k))))
                                                              (if x-cnd8428
                                                                (car l)
                                                                (letrec ((x8430
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8430))))))))
                                                g8425)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8431 (if x #f #t)))
                                                g8431)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8432 (append l1 l2)))
                                                g8432)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8433
                                                        (letrec ((x8435
                                                                  (list? l)))
                                                          (assert x8435)))
                                                       (g8434
                                                        (letrec ((x-cnd8436
                                                                  (null? l)))
                                                          (if x-cnd8436
                                                            #f
                                                            (letrec ((x-cnd8437
                                                                      (letrec ((x8438
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8438
                                                                         e))))
                                                              (if x-cnd8437
                                                                l
                                                                (letrec ((x8439
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8439))))))))
                                                g8434)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8440
                                                        (letrec ((x8441
                                                                  (letrec ((x8442
                                                                            (letrec ((x8443
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8443))))
                                                                    (cdr
                                                                     x8442))))
                                                          (car x8441))))
                                                g8440)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8444
                                                        (letrec ((x8446
                                                                  (list? l)))
                                                          (assert x8446)))
                                                       (g8445
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8447
                                                                              (letrec ((x-cnd8448
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8448
                                                                                  0
                                                                                  (letrec ((x8449
                                                                                            (letrec ((x8450
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8450))))
                                                                                    (+
                                                                                     1
                                                                                     x8449))))))
                                                                      g8447))))
                                                          (letrec ((g8451
                                                                    (rec l)))
                                                            g8451))))
                                                g8445)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8452
                                                        (letrec ((x8455
                                                                  (char? c1)))
                                                          (assert x8455)))
                                                       (g8453
                                                        (letrec ((x8456
                                                                  (char? c2)))
                                                          (assert x8456)))
                                                       (g8454
                                                        (letrec ((val7530
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8457
                                                                    (if val7530
                                                                      val7530
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8457))))
                                                g8454)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8458
                                                        (letrec ((x8459
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8459))))
                                                g8458)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8460
                                                        (letrec ((x8461
                                                                  (letrec ((x8462
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8462))))
                                                          (cdr x8461))))
                                                g8460)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8463
                                                        (letrec ((x8465
                                                                  (list? l)))
                                                          (assert x8465)))
                                                       (g8464
                                                        (letrec ((x-cnd8466
                                                                  (null? l)))
                                                          (if x-cnd8466
                                                            #f
                                                            (letrec ((x-cnd8467
                                                                      (letrec ((x8468
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8468
                                                                         k))))
                                                              (if x-cnd8467
                                                                (car l)
                                                                (letrec ((x8469
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8469))))))))
                                                g8464)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8470
                                                        (letrec ((x8471
                                                                  (car x)))
                                                          (car x8471))))
                                                g8470)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8472
                                                        (letrec ((x8475
                                                                  (char? c1)))
                                                          (assert x8475)))
                                                       (g8473
                                                        (letrec ((x8476
                                                                  (char? c2)))
                                                          (assert x8476)))
                                                       (g8474
                                                        (letrec ((x8477
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8477))))
                                                g8474)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8478
                                                        (letrec ((val7531
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8479
                                                                    (if val7531
                                                                      val7531
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8479))))
                                                g8478)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8480
                                                        (letrec ((x8483
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8483)))
                                                       (g8481
                                                        (letrec ((x8484
                                                                  (list? l)))
                                                          (assert x8484)))
                                                       (g8482
                                                        (letrec ((x-cnd8485
                                                                  (null? l)))
                                                          (if x-cnd8485
                                                            #t
                                                            (letrec ((x-cnd8486
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8486
                                                                (letrec ((g8487
                                                                          (letrec ((x8489
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8489)))
                                                                         (g8488
                                                                          (letrec ((x8490
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8490))))
                                                                  g8488)
                                                                '()))))))
                                                g8482)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8491
                                                        (letrec ((x8493
                                                                  (number? x)))
                                                          (assert x8493)))
                                                       (g8492
                                                        (letrec ((x-cnd8494
                                                                  (< x 0)))
                                                          (if x-cnd8494
                                                            (- 0 x)
                                                            x))))
                                                g8492)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8495
                                                        (letrec ((x8498
                                                                  (char? c1)))
                                                          (assert x8498)))
                                                       (g8496
                                                        (letrec ((x8499
                                                                  (char? c2)))
                                                          (assert x8499)))
                                                       (g8497
                                                        (letrec ((val7532
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8500
                                                                    (if val7532
                                                                      val7532
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8500))))
                                                g8497)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8501
                                                        (letrec ((x8502
                                                                  (letrec ((x8503
                                                                            (letrec ((x8504
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8504))))
                                                                    (cdr
                                                                     x8503))))
                                                          (car x8502))))
                                                g8501)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8505 #f)) g8505)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8506
                                                        (letrec ((x8508
                                                                  (letrec ((x8509
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8509)))
                                                                 (x8507
                                                                  (gcd m n)))
                                                          (/ x8508 x8507))))
                                                g8506)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8510
                                                        (letrec ((x8512
                                                                  (number? x)))
                                                          (assert x8512)))
                                                       (g8511
                                                        (letrec ((x8513
                                                                  (<= x y)))
                                                          (not x8513))))
                                                g8511)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8514
                                                        (letrec ((x8518
                                                                  (list? l)))
                                                          (assert x8518)))
                                                       (g8515
                                                        (letrec ((x8519
                                                                  (number?
                                                                   index)))
                                                          (assert x8519)))
                                                       (g8516
                                                        (letrec ((x8520
                                                                  (letrec ((x8521
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8521))))
                                                          (assert x8520)))
                                                       (g8517
                                                        (letrec ((x-cnd8522
                                                                  (= index 0)))
                                                          (if x-cnd8522
                                                            (car l)
                                                            (letrec ((x8524
                                                                      (cdr l))
                                                                     (x8523
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8524
                                                               x8523))))))
                                                g8517)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8525
                                                        (letrec ((x-cnd8526
                                                                  (= b 0)))
                                                          (if x-cnd8526
                                                            a
                                                            (letrec ((x8527
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8527))))))
                                                g8525)))
                                           (block
                                            (lambda (x7973 y7974 color7975)
                                              (letrec ((g8528
                                                        (letrec ((x8529
                                                                  (letrec ((x8530
                                                                            (letrec ((x8531
                                                                                      (orig-cons
                                                                                       color7975
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7974
                                                                               x8531))))
                                                                    (orig-cons
                                                                     x7973
                                                                     x8530))))
                                                          (orig-cons
                                                           'block
                                                           x8529))))
                                                g8528)))
                                           (block?
                                            (lambda (block7972)
                                              (letrec ((g8532
                                                        (letrec ((x8533
                                                                  (car
                                                                   block7972)))
                                                          (eq? x8533 'block))))
                                                g8532)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8534
                                                        (letrec ((x8535
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8535))))
                                                g8534)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8536
                                                        (letrec ((x8537
                                                                  (letrec ((x8538
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8538))))
                                                          (orig-car x8537))))
                                                g8536)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8539
                                                        (letrec ((x8540
                                                                  (letrec ((x8541
                                                                            (letrec ((x8542
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8542))))
                                                                    (orig-cdr
                                                                     x8541))))
                                                          (orig-car x8540))))
                                                g8539)))
                                           (tetra
                                            (lambda (center7980 blocks7981)
                                              (letrec ((g8543
                                                        (letrec ((x8544
                                                                  (letrec ((x8545
                                                                            (orig-cons
                                                                             blocks7981
                                                                             '())))
                                                                    (orig-cons
                                                                     center7980
                                                                     x8545))))
                                                          (orig-cons
                                                           'tetra
                                                           x8544))))
                                                g8543)))
                                           (tetra?
                                            (lambda (tetra7979)
                                              (letrec ((g8546
                                                        (letrec ((x8547
                                                                  (car
                                                                   tetra7979)))
                                                          (eq? x8547 'tetra))))
                                                g8546)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8548
                                                        (letrec ((x8549
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8549))))
                                                g8548)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8550
                                                        (letrec ((x8551
                                                                  (letrec ((x8552
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8552))))
                                                          (orig-car x8551))))
                                                g8550)))
                                           (world
                                            (lambda (tetra7985 blocks7986)
                                              (letrec ((g8553
                                                        (letrec ((x8554
                                                                  (letrec ((x8555
                                                                            (orig-cons
                                                                             blocks7986
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7985
                                                                     x8555))))
                                                          (orig-cons
                                                           'world
                                                           x8554))))
                                                g8553)))
                                           (world?
                                            (lambda (world7984)
                                              (letrec ((g8556
                                                        (letrec ((x8557
                                                                  (car
                                                                   world7984)))
                                                          (eq? x8557 'world))))
                                                g8556)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8558
                                                        (letrec ((x8559
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8559))))
                                                g8558)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8560
                                                        (letrec ((x8561
                                                                  (letrec ((x8562
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8562))))
                                                          (orig-car x8561))))
                                                g8560)))
                                           (posn
                                            (lambda (x7990 y7991)
                                              (letrec ((g8563
                                                        (letrec ((x8564
                                                                  (letrec ((x8565
                                                                            (orig-cons
                                                                             y7991
                                                                             '())))
                                                                    (orig-cons
                                                                     x7990
                                                                     x8565))))
                                                          (orig-cons
                                                           'posn
                                                           x8564))))
                                                g8563)))
                                           (posn?
                                            (lambda (posn7989)
                                              (letrec ((g8566
                                                        (letrec ((x8567
                                                                  (car
                                                                   posn7989)))
                                                          (eq? x8567 'posn))))
                                                g8566)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8568
                                                        (letrec ((x8569
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8569))))
                                                g8568)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8570
                                                        (letrec ((x8571
                                                                  (letrec ((x8572
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8572))))
                                                          (orig-car x8571))))
                                                g8570)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7625 k7626 v7624)
                                              (letrec ((g8573
                                                        (letrec ((checked7627
                                                                  (letrec ((x8574
                                                                            (letrec ((x8575
                                                                                      (orig-cdr
                                                                                       v7624)))
                                                                              (orig-car
                                                                               x8575))))
                                                                    (real?/c
                                                                     j7625
                                                                     k7626
                                                                     x8574))))
                                                          (letrec ((g8576
                                                                    (letrec ((checked7628
                                                                              (letrec ((x8577
                                                                                        (letrec ((x8578
                                                                                                  (letrec ((x8579
                                                                                                            (orig-cdr
                                                                                                             v7624)))
                                                                                                    (orig-cdr
                                                                                                     x8579))))
                                                                                          (orig-car
                                                                                           x8578))))
                                                                                (real?/c
                                                                                 j7625
                                                                                 k7626
                                                                                 x8577))))
                                                                      (letrec ((g8580
                                                                                (letrec ((x8581
                                                                                          (letrec ((x8582
                                                                                                    (cons
                                                                                                     checked7628
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7627
                                                                                             x8582))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8581))))
                                                                        g8580))))
                                                            g8576))))
                                                g8573)))
                                           (BLOCK/C
                                            (lambda (j7631 k7632 v7630)
                                              (letrec ((g8583
                                                        (letrec ((checked7633
                                                                  (letrec ((x8584
                                                                            (letrec ((x8585
                                                                                      (orig-cdr
                                                                                       v7630)))
                                                                              (orig-car
                                                                               x8585))))
                                                                    (real?/c
                                                                     j7631
                                                                     k7632
                                                                     x8584))))
                                                          (letrec ((g8586
                                                                    (letrec ((checked7634
                                                                              (letrec ((x8587
                                                                                        (letrec ((x8588
                                                                                                  (letrec ((x8589
                                                                                                            (orig-cdr
                                                                                                             v7630)))
                                                                                                    (orig-cdr
                                                                                                     x8589))))
                                                                                          (orig-car
                                                                                           x8588))))
                                                                                (real?/c
                                                                                 j7631
                                                                                 k7632
                                                                                 x8587))))
                                                                      (letrec ((g8590
                                                                                (letrec ((checked7635
                                                                                          (letrec ((x8591
                                                                                                    (letrec ((x8592
                                                                                                              (letrec ((x8593
                                                                                                                        (letrec ((x8594
                                                                                                                                  (orig-cdr
                                                                                                                                   v7630)))
                                                                                                                          (orig-cdr
                                                                                                                           x8594))))
                                                                                                                (orig-cdr
                                                                                                                 x8593))))
                                                                                                      (orig-car
                                                                                                       x8592))))
                                                                                            (COLOR/C
                                                                                             j7631
                                                                                             k7632
                                                                                             x8591))))
                                                                                  (letrec ((g8595
                                                                                            (letrec ((x8596
                                                                                                      (letrec ((x8597
                                                                                                                (letrec ((x8598
                                                                                                                          (cons
                                                                                                                           checked7635
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7634
                                                                                                                   x8598))))
                                                                                                        (cons
                                                                                                         checked7633
                                                                                                         x8597))))
                                                                                              (cons
                                                                                               block
                                                                                               x8596))))
                                                                                    g8595))))
                                                                        g8590))))
                                                            g8586))))
                                                g8583)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7638 k7639 v7637)
                                              (letrec ((g8599
                                                        (letrec ((checked7640
                                                                  (letrec ((x8600
                                                                            (letrec ((x8601
                                                                                      (orig-cdr
                                                                                       v7637)))
                                                                              (orig-car
                                                                               x8601))))
                                                                    (POSN/C
                                                                     j7638
                                                                     k7639
                                                                     x8600))))
                                                          (letrec ((g8602
                                                                    (letrec ((checked7641
                                                                              (letrec ((x8603
                                                                                        (letrec ((x8604
                                                                                                  (letrec ((x8605
                                                                                                            (orig-cdr
                                                                                                             v7637)))
                                                                                                    (orig-cdr
                                                                                                     x8605))))
                                                                                          (orig-car
                                                                                           x8604))))
                                                                                (BSET/C
                                                                                 j7638
                                                                                 k7639
                                                                                 x8603))))
                                                                      (letrec ((g8606
                                                                                (letrec ((x8607
                                                                                          (letrec ((x8608
                                                                                                    (cons
                                                                                                     checked7641
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7640
                                                                                             x8608))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8607))))
                                                                        g8606))))
                                                            g8602))))
                                                g8599)))
                                           (WORLD/C
                                            (lambda (j7644 k7645 v7643)
                                              (letrec ((g8609
                                                        (letrec ((checked7646
                                                                  (letrec ((x8610
                                                                            (letrec ((x8611
                                                                                      (orig-cdr
                                                                                       v7643)))
                                                                              (orig-car
                                                                               x8611))))
                                                                    (TETRA/C
                                                                     j7644
                                                                     k7645
                                                                     x8610))))
                                                          (letrec ((g8612
                                                                    (letrec ((checked7647
                                                                              (letrec ((x8613
                                                                                        (letrec ((x8614
                                                                                                  (letrec ((x8615
                                                                                                            (orig-cdr
                                                                                                             v7643)))
                                                                                                    (orig-cdr
                                                                                                     x8615))))
                                                                                          (orig-car
                                                                                           x8614))))
                                                                                (BSET/C
                                                                                 j7644
                                                                                 k7645
                                                                                 x8613))))
                                                                      (letrec ((g8616
                                                                                (letrec ((x8617
                                                                                          (letrec ((x8618
                                                                                                    (cons
                                                                                                     checked7647
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7646
                                                                                             x8618))))
                                                                                  (cons
                                                                                   world
                                                                                   x8617))))
                                                                        g8616))))
                                                            g8612))))
                                                g8609)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8619
                                                        (letrec ((x-cnd8620
                                                                  (letrec ((x8622
                                                                            (posn-x
                                                                             p1))
                                                                           (x8621
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8622
                                                                     x8621))))
                                                          (if x-cnd8620
                                                            (letrec ((x8624
                                                                      (posn-y
                                                                       p1))
                                                                     (x8623
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8624 x8623))
                                                            #f))))
                                                g8619)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8625
                                                        (letrec ((x-cnd8626
                                                                  (letrec ((x8628
                                                                            (block-x
                                                                             b1))
                                                                           (x8627
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8628
                                                                     x8627))))
                                                          (if x-cnd8626
                                                            (letrec ((x8630
                                                                      (block-y
                                                                       b1))
                                                                     (x8629
                                                                      (block-y
                                                                       b2)))
                                                              (= x8630 x8629))
                                                            #f))))
                                                g8625)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8631
                                                        (letrec ((x8635
                                                                  (letrec ((x8636
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8636)))
                                                                 (x8633
                                                                  (letrec ((x8634
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8634)))
                                                                 (x8632
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8635
                                                           x8633
                                                           x8632))))
                                                g8631)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8637
                                                        (letrec ((x8644
                                                                  (letrec ((x8648
                                                                            (posn-x
                                                                             c))
                                                                           (x8645
                                                                            (letrec ((x8647
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8646
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8647
                                                                               x8646))))
                                                                    (+
                                                                     x8648
                                                                     x8645)))
                                                                 (x8639
                                                                  (letrec ((x8643
                                                                            (posn-y
                                                                             c))
                                                                           (x8640
                                                                            (letrec ((x8642
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8641
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8642
                                                                               x8641))))
                                                                    (+
                                                                     x8643
                                                                     x8640)))
                                                                 (x8638
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8644
                                                           x8639
                                                           x8638))))
                                                g8637)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8649
                                                        (letrec ((x8650
                                                                  (letrec ((x8651
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8651))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8650))))
                                                g8649)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8652
                                                        (letrec ((x-cnd8653
                                                                  (null? xs)))
                                                          (if x-cnd8653
                                                            (letrec ((g8654
                                                                      #f))
                                                              g8654)
                                                            (letrec ((g8655
                                                                      (letrec ((x8658
                                                                                (letrec ((x8659
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8659)))
                                                                               (x8656
                                                                                (letrec ((x8657
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8657))))
                                                                        (or x8658
                                                                            x8656))))
                                                              g8655)))))
                                                g8652)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8660
                                                        (letrec ((x-cnd8661
                                                                  (null? xs)))
                                                          (if x-cnd8661
                                                            (letrec ((g8662
                                                                      #t))
                                                              g8662)
                                                            (letrec ((g8663
                                                                      (letrec ((x8666
                                                                                (letrec ((x8667
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8667)))
                                                                               (x8664
                                                                                (letrec ((x8665
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8665))))
                                                                        (and x8666
                                                                             x8664))))
                                                              g8663)))))
                                                g8660)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8668
                                                        (letrec ((x-cnd8669
                                                                  (null? xs)))
                                                          (if x-cnd8669
                                                            (letrec ((g8670
                                                                      null))
                                                              g8670)
                                                            (letrec ((x-cnd8671
                                                                      (letrec ((x8672
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8672))))
                                                              (if x-cnd8671
                                                                (letrec ((g8673
                                                                          (letrec ((x8676
                                                                                    (car
                                                                                     xs))
                                                                                   (x8674
                                                                                    (letrec ((x8675
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8675))))
                                                                            (cons
                                                                             x8676
                                                                             x8674))))
                                                                  g8673)
                                                                (letrec ((g8677
                                                                          (letrec ((x8678
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8678))))
                                                                  g8677)))))))
                                                g8668)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8679
                                                        (letrec ((x-cnd8680
                                                                  (null? l)))
                                                          (if x-cnd8680
                                                            (letrec ((g8681 r))
                                                              g8681)
                                                            (letrec ((g8682
                                                                      (letrec ((x8685
                                                                                (car
                                                                                 l))
                                                                               (x8683
                                                                                (letrec ((x8684
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8684
                                                                                   r))))
                                                                        (cons
                                                                         x8685
                                                                         x8683))))
                                                              g8682)))))
                                                g8679)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8686
                                                        (letrec ((x-cnd8687
                                                                  (null? xs)))
                                                          (if x-cnd8687
                                                            (letrec ((g8688 a))
                                                              g8688)
                                                            (letrec ((g8689
                                                                      (letrec ((x8692
                                                                                (car
                                                                                 xs))
                                                                               (x8690
                                                                                (letrec ((x8691
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8691))))
                                                                        (f
                                                                         x8692
                                                                         x8690))))
                                                              g8689)))))
                                                g8686)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8693
                                                        (letrec ((x8694
                                                                  (letrec ((x8696
                                                                            (c))
                                                                           (x8695
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x8696
                                                                      x8695))))
                                                          (ormap x8694 bs))))
                                                g8693)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8697
                                                        (letrec ((x8698
                                                                  (letrec ((x8700
                                                                            (b))
                                                                           (x8699
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8700
                                                                      x8699))))
                                                          (andmap x8698 bs1))))
                                                g8697)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8701
                                                        (letrec ((x-cnd8702
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8702
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8701)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8703
                                                        (letrec ((x8704
                                                                  (letrec ((x8706
                                                                            (b))
                                                                           (x8705
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8706
                                                                      x8705))))
                                                          (filter x8704 bs1))))
                                                g8703)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8707 (length bs)))
                                                g8707)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8708
                                                        (letrec ((x8709
                                                                  (letrec ((x8711
                                                                            (b))
                                                                           (x8710
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x8711
                                                                      x8710))))
                                                          (map x8709 bs))))
                                                g8708)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8712
                                                        (letrec ((x8713
                                                                  (letrec ((x8715
                                                                            (b))
                                                                           (x8714
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x8715
                                                                      x8714))))
                                                          (map x8713 bs))))
                                                g8712)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8716
                                                        (letrec ((x8717
                                                                  (letrec ((x8719
                                                                            (b))
                                                                           (x8718
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x8719
                                                                      x8718))))
                                                          (map x8717 bs))))
                                                g8716)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8720
                                                        (letrec ((x8721
                                                                  (letrec ((x8725
                                                                            (b))
                                                                           (x8722
                                                                            (letrec ((x8724
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8723
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x8724
                                                                               x8723
                                                                               c))))
                                                                    (λ x8725
                                                                      x8722))))
                                                          (map x8721 bs))))
                                                g8720)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8726
                                                        (letrec ((x8727
                                                                  (letrec ((x8730
                                                                            (b))
                                                                           (x8728
                                                                            (letrec ((x8729
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x8729))))
                                                                    (λ x8730
                                                                      x8728))))
                                                          (filter x8727 bs))))
                                                g8726)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8731
                                                        (letrec ((x8732
                                                                  (letrec ((x8733
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8733))))
                                                          (=
                                                           board-width
                                                           x8732))))
                                                g8731)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8734
                                                        (letrec ((x8735
                                                                  (letrec ((x8738
                                                                            (b))
                                                                           (x8736
                                                                            (letrec ((x8737
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x8737
                                                                               0))))
                                                                    (λ x8738
                                                                      x8736))))
                                                          (ormap x8735 bs))))
                                                g8734)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8739
                                                        (letrec ((x8740
                                                                  (letrec ((x8745
                                                                            (b
                                                                             bs))
                                                                           (x8741
                                                                            (letrec ((x-cnd8742
                                                                                      (blocks-contains?
                                                                                       bs
                                                                                       b)))
                                                                              (if x-cnd8742
                                                                                (letrec ((g8743
                                                                                          bs))
                                                                                  g8743)
                                                                                (letrec ((g8744
                                                                                          (cons
                                                                                           b
                                                                                           bs)))
                                                                                  g8744)))))
                                                                    (λ x8745
                                                                      x8741))))
                                                          (foldr
                                                           x8740
                                                           bs2
                                                           bs1))))
                                                g8739)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8746
                                                        (letrec ((x8747
                                                                  (letrec ((x8750
                                                                            (b
                                                                             n))
                                                                           (x8748
                                                                            (letrec ((x8749
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x8749
                                                                               n))))
                                                                    (λ x8750
                                                                      x8748))))
                                                          (foldr x8747 0 bs))))
                                                g8746)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8751
                                                        (letrec ((x8752
                                                                  (letrec ((x8755
                                                                            (b
                                                                             n))
                                                                           (x8753
                                                                            (letrec ((x8754
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x8754
                                                                               n))))
                                                                    (λ x8755
                                                                      x8753))))
                                                          (foldr
                                                           x8752
                                                           board-width
                                                           bs))))
                                                g8751)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8756
                                                        (letrec ((x8757
                                                                  (letrec ((x8760
                                                                            (b
                                                                             n))
                                                                           (x8758
                                                                            (letrec ((x8759
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x8759
                                                                               n))))
                                                                    (λ x8760
                                                                      x8758))))
                                                          (foldr x8757 0 bs))))
                                                g8756)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8761
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8761)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8762
                                                        (letrec ((x-cnd8763
                                                                  (< i 0)))
                                                          (if x-cnd8763
                                                            (letrec ((g8764
                                                                      empty))
                                                              g8764)
                                                            (letrec ((x-cnd8765
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8765
                                                                (letrec ((g8766
                                                                          (letrec ((x8768
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8767
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8768
                                                                             x8767))))
                                                                  g8766)
                                                                (letrec ((g8769
                                                                          (letrec ((x8772
                                                                                    (letrec ((x8773
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8773
                                                                                       offset)))
                                                                                   (x8770
                                                                                    (letrec ((x8771
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8771))))
                                                                            (blocks-union
                                                                             x8772
                                                                             x8770))))
                                                                  g8769)))))))
                                                g8762)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8774
                                                        (letrec ((x8777
                                                                  (letrec ((x8781
                                                                            (letrec ((x8782
                                                                                      (letrec ((x8783
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8783))))
                                                                              (+
                                                                               dx
                                                                               x8782)))
                                                                           (x8778
                                                                            (letrec ((x8779
                                                                                      (letrec ((x8780
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8780))))
                                                                              (+
                                                                               dy
                                                                               x8779))))
                                                                    (posn
                                                                     x8781
                                                                     x8778)))
                                                                 (x8775
                                                                  (letrec ((x8776
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8776))))
                                                          (tetra
                                                           x8777
                                                           x8775))))
                                                g8774)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8784
                                                        (letrec ((x8788
                                                                  (tetra-center
                                                                   t))
                                                                 (x8785
                                                                  (letrec ((x8787
                                                                            (tetra-center
                                                                             t))
                                                                           (x8786
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8787
                                                                     x8786))))
                                                          (tetra
                                                           x8788
                                                           x8785))))
                                                g8784)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8789
                                                        (letrec ((x8793
                                                                  (tetra-center
                                                                   t))
                                                                 (x8790
                                                                  (letrec ((x8792
                                                                            (tetra-center
                                                                             t))
                                                                           (x8791
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8792
                                                                     x8791))))
                                                          (tetra
                                                           x8793
                                                           x8790))))
                                                g8789)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8794
                                                        (letrec ((x8795
                                                                  (letrec ((x8796
                                                                            (letrec ((x8797
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8797
                                                                               bs))))
                                                                    (false?
                                                                     x8796))))
                                                          (false? x8795))))
                                                g8794)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8798
                                                        (letrec ((x8801
                                                                  (tetra-center
                                                                   t))
                                                                 (x8799
                                                                  (letrec ((x8800
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8800
                                                                     c))))
                                                          (tetra
                                                           x8801
                                                           x8799))))
                                                g8798)))
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
                                              (letrec ((g8802
                                                        (letrec ((x8803
                                                                  (letrec ((x8809
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8804
                                                                            (letrec ((x8808
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8807
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8806
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8805
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8808
                                                                               x8807
                                                                               x8806
                                                                               x8805))))
                                                                    (tetra
                                                                     x8809
                                                                     x8804))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8803))))
                                                g8802)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8810
                                                        (letrec ((x8816
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8811
                                                                  (letrec ((x8812
                                                                            (letrec ((x8814
                                                                                      (letrec ((x8815
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8815)))
                                                                                     (x8813
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8814
                                                                               x8813))))
                                                                    (eliminate-full-rows
                                                                     x8812))))
                                                          (world
                                                           x8816
                                                           x8811))))
                                                g8810)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8817
                                                        (letrec ((x-cnd8818
                                                                  (landed? w)))
                                                          (if x-cnd8818
                                                            (letrec ((g8819 w))
                                                              g8819)
                                                            (letrec ((g8820
                                                                      (letrec ((x8821
                                                                                (letrec ((x8823
                                                                                          (letrec ((x8824
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8824)))
                                                                                         (x8822
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8823
                                                                                   x8822))))
                                                                        (world-jump-down
                                                                         x8821))))
                                                              g8820)))))
                                                g8817)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8825
                                                        (letrec ((x8827
                                                                  (letrec ((x8828
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8828)))
                                                                 (x8826
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8827
                                                           x8826))))
                                                g8825)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8829
                                                        (letrec ((x8831
                                                                  (letrec ((x8832
                                                                            (letrec ((x8833
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8833))))
                                                                    (blocks-max-y
                                                                     x8832)))
                                                                 (x8830
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8831 x8830))))
                                                g8829)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8834
                                                        (letrec ((val7533
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8835
                                                                    (if val7533
                                                                      val7533
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8835))))
                                                g8834)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8836
                                                        (letrec ((x-cnd8837
                                                                  (landed? w)))
                                                          (if x-cnd8837
                                                            (letrec ((g8838
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8838)
                                                            (letrec ((g8839
                                                                      (letrec ((x8841
                                                                                (letrec ((x8842
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8842)))
                                                                               (x8840
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8841
                                                                         x8840))))
                                                              g8839)))))
                                                g8836)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8843
                                                        (letrec ((x-cnd8844
                                                                  (letrec ((x8850
                                                                            (letrec ((x8851
                                                                                      (letrec ((x8852
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8852))))
                                                                              (<
                                                                               x8851
                                                                               0)))
                                                                           (x8847
                                                                            (letrec ((x8848
                                                                                      (letrec ((x8849
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-max-x
                                                                                         x8849))))
                                                                              (>=
                                                                               x8848
                                                                               board-width)))
                                                                           (x8845
                                                                            (letrec ((x8846
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (tetra-overlaps-blocks?
                                                                               new-tetra
                                                                               x8846))))
                                                                    (or x8850
                                                                        x8847
                                                                        x8845))))
                                                          (if x-cnd8844
                                                            (letrec ((g8853 w))
                                                              g8853)
                                                            (letrec ((g8854
                                                                      (letrec ((x8855
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8855))))
                                                              g8854)))))
                                                g8843)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8856
                                                        (letrec ((x8857
                                                                  (letrec ((x8858
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8858))))
                                                          (try-new-tetra
                                                           w
                                                           x8857))))
                                                g8856)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8859
                                                        (letrec ((x8860
                                                                  (letrec ((x8861
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8861))))
                                                          (try-new-tetra
                                                           w
                                                           x8860))))
                                                g8859)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8862
                                                        (letrec ((x8863
                                                                  (letrec ((x8864
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8864))))
                                                          (try-new-tetra
                                                           w
                                                           x8863))))
                                                g8862)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8865
                                                        (letrec ((x8866
                                                                  (letrec ((x8867
                                                                            (letrec ((x8868
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8868))))
                                                                    (tetra-change-color
                                                                     x8867
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8866))))
                                                g8865)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8869
                                                        (letrec ((x-cnd8870
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8870
                                                            (letrec ((g8871
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8871)
                                                            (letrec ((x-cnd8872
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8872
                                                                (letrec ((g8873
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8873)
                                                                (letrec ((x-cnd8874
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8874
                                                                    (letrec ((g8875
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8875)
                                                                    (letrec ((x-cnd8876
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8876
                                                                        (letrec ((g8877
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8877)
                                                                        (letrec ((x-cnd8878
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8878
                                                                            (letrec ((g8879
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8879)
                                                                            (letrec ((g8880
                                                                                      w))
                                                                              g8880)))))))))))))
                                                g8869)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8881
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8881)))
                                           (image?
                                            (lambda (image7994)
                                              (letrec ((g8882
                                                        (letrec ((x8883
                                                                  (car
                                                                   image7994)))
                                                          (eq? x8883 'image))))
                                                g8882)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8884 (image)))
                                                g8884)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8885 (image)))
                                                g8885)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8886 (image)))
                                                g8886)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8887 (image)))
                                                g8887)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8888 (image)))
                                                g8888)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8889
                                                        (letrec ((x-cnd8890
                                                                  (letrec ((x8891
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8891))))
                                                          (if x-cnd8890
                                                            (letrec ((g8892
                                                                      (car
                                                                       xs)))
                                                              g8892)
                                                            (letrec ((g8893
                                                                      (letrec ((x8894
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8894))))
                                                              g8893)))))
                                                g8889)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8895
                                                        (letrec ((x8899
                                                                  (letrec ((x8900
                                                                            (letrec ((x8904
                                                                                      (letrec ((x8905
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8905)))
                                                                                     (x8901
                                                                                      (letrec ((x8903
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8902
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8903
                                                                                         x8902))))
                                                                              (append
                                                                               x8904
                                                                               x8901))))
                                                                    (blocks->image
                                                                     x8900)))
                                                                 (x8896
                                                                  (letrec ((x8898
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8897
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8898
                                                                     x8897))))
                                                          (place-image
                                                           x8899
                                                           0
                                                           0
                                                           x8896))))
                                                g8895)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8906
                                                        (letrec ((x8912
                                                                  (letrec ((x8918
                                                                            (b
                                                                             img))
                                                                           (x8913
                                                                            (letrec ((x-cnd8914
                                                                                      (letrec ((x8915
                                                                                                (block-y
                                                                                                 b)))
                                                                                        (<=
                                                                                         0
                                                                                         x8915))))
                                                                              (if x-cnd8914
                                                                                (letrec ((g8916
                                                                                          (place-block
                                                                                           b
                                                                                           img)))
                                                                                  g8916)
                                                                                (letrec ((g8917
                                                                                          img))
                                                                                  g8917)))))
                                                                    (λ x8918
                                                                      x8913)))
                                                                 (x8907
                                                                  (letrec ((x8910
                                                                            (letrec ((x8911
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8911)))
                                                                           (x8908
                                                                            (letrec ((x8909
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8909))))
                                                                    (empty-scene
                                                                     x8910
                                                                     x8908))))
                                                          (foldr
                                                           x8912
                                                           x8907
                                                           bs))))
                                                g8906)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8919
                                                        (letrec ((x8923
                                                                  (letrec ((x8926
                                                                            (add1
                                                                             block-size))
                                                                           (x8925
                                                                            (add1
                                                                             block-size))
                                                                           (x8924
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8926
                                                                     x8925
                                                                     'solid
                                                                     x8924)))
                                                                 (x8920
                                                                  (letrec ((x8922
                                                                            (add1
                                                                             block-size))
                                                                           (x8921
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8922
                                                                     x8921
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8923
                                                           x8920))))
                                                g8919)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8927
                                                        (letrec ((x8936
                                                                  (block->image
                                                                   b))
                                                                 (x8932
                                                                  (letrec ((x8934
                                                                            (letrec ((x8935
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8935
                                                                               block-size)))
                                                                           (x8933
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8934
                                                                     x8933)))
                                                                 (x8928
                                                                  (letrec ((x8930
                                                                            (letrec ((x8931
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8931
                                                                               block-size)))
                                                                           (x8929
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8930
                                                                     x8929))))
                                                          (place-image
                                                           x8936
                                                           x8932
                                                           x8928
                                                           scene))))
                                                g8927)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8937
                                                        (letrec ((x8938
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8938 null))))
                                                g8937))))
                                    (letrec ((g8939
                                              (parallel
                                               (parallel
                                                (letrec ((x8950
                                                          (letrec ((xj7649
                                                                    (loc
                                                                     'module))
                                                                   (xk7650
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8951
                                                                      ((lambda (j7653
                                                                                k7654
                                                                                f7655)
                                                                         (letrec ((g8952
                                                                                   (lambda (g7651
                                                                                            g7652)
                                                                                     (letrec ((g8953
                                                                                               (letrec ((x8954
                                                                                                         (letrec ((x8956
                                                                                                                   (POSN/C
                                                                                                                    j7653
                                                                                                                    k7654
                                                                                                                    g7651))
                                                                                                                  (x8955
                                                                                                                   (POSN/C
                                                                                                                    j7653
                                                                                                                    k7654
                                                                                                                    g7652)))
                                                                                                           (f7655
                                                                                                            x8956
                                                                                                            x8955))))
                                                                                                 (boolean?/c
                                                                                                  j7653
                                                                                                  k7654
                                                                                                  x8954))))
                                                                                       g8953))))
                                                                           g8952))
                                                                       xj7649
                                                                       xk7650
                                                                       posn=?)))
                                                              g8951)))
                                                         (x8945
                                                          (letrec ((x8946
                                                                    (letrec ((x8949
                                                                              (input))
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
                                                             'posn
                                                             x8946)))
                                                         (x8940
                                                          (letrec ((x8941
                                                                    (letrec ((x8944
                                                                              (input))
                                                                             (x8942
                                                                              (letrec ((x8943
                                                                                        (input)))
                                                                                (cons
                                                                                 x8943
                                                                                 '()))))
                                                                      (cons
                                                                       x8944
                                                                       x8942))))
                                                            (cons
                                                             'posn
                                                             x8941))))
                                                  (x8950 x8945 x8940))
                                                (letrec ((xj7656 (loc 'module))
                                                         (xk7657
                                                          (loc 'importer)))
                                                  (letrec ((g8957
                                                            (any/c
                                                             xj7656
                                                             xk7657
                                                             COLOR/C)))
                                                    g8957))
                                                (letrec ((xj7658 (loc 'module))
                                                         (xk7659
                                                          (loc 'importer)))
                                                  (letrec ((g8958
                                                            (any/c
                                                             xj7658
                                                             xk7659
                                                             POSN/C)))
                                                    g8958))
                                                (letrec ((xj7660 (loc 'module))
                                                         (xk7661
                                                          (loc 'importer)))
                                                  (letrec ((g8959
                                                            (any/c
                                                             xj7660
                                                             xk7661
                                                             BLOCK/C)))
                                                    g8959))
                                                (letrec ((xj7662 (loc 'module))
                                                         (xk7663
                                                          (loc 'importer)))
                                                  (letrec ((g8960
                                                            (any/c
                                                             xj7662
                                                             xk7663
                                                             TETRA/C)))
                                                    g8960))
                                                (letrec ((xj7664 (loc 'module))
                                                         (xk7665
                                                          (loc 'importer)))
                                                  (letrec ((g8961
                                                            (any/c
                                                             xj7664
                                                             xk7665
                                                             WORLD/C)))
                                                    g8961))
                                                (letrec ((xj7666 (loc 'module))
                                                         (xk7667
                                                          (loc 'importer)))
                                                  (letrec ((g8962
                                                            (any/c
                                                             xj7666
                                                             xk7667
                                                             BSET/C)))
                                                    g8962))
                                                (letrec ((xj7668 (loc 'module))
                                                         (xk7669
                                                          (loc 'importer)))
                                                  (letrec ((g8963
                                                            (integer?/c
                                                             xj7668
                                                             xk7669
                                                             block-size)))
                                                    g8963))
                                                (letrec ((xj7670 (loc 'module))
                                                         (xk7671
                                                          (loc 'importer)))
                                                  (letrec ((g8964
                                                            (integer?/c
                                                             xj7670
                                                             xk7671
                                                             board-width)))
                                                    g8964))
                                                (letrec ((xj7672 (loc 'module))
                                                         (xk7673
                                                          (loc 'importer)))
                                                  (letrec ((g8965
                                                            (integer?/c
                                                             xj7672
                                                             xk7673
                                                             board-height)))
                                                    g8965))
                                                (letrec ((x8978
                                                          (letrec ((xj7674
                                                                    (loc
                                                                     'module))
                                                                   (xk7675
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8979
                                                                      ((lambda (j7678
                                                                                k7679
                                                                                f7680)
                                                                         (letrec ((g8980
                                                                                   (lambda (g7676
                                                                                            g7677)
                                                                                     (letrec ((g8981
                                                                                               (letrec ((x8982
                                                                                                         (letrec ((x8984
                                                                                                                   (POSN/C
                                                                                                                    j7678
                                                                                                                    k7679
                                                                                                                    g7676))
                                                                                                                  (x8983
                                                                                                                   (BLOCK/C
                                                                                                                    j7678
                                                                                                                    k7679
                                                                                                                    g7677)))
                                                                                                           (f7680
                                                                                                            x8984
                                                                                                            x8983))))
                                                                                                 (BLOCK/C
                                                                                                  j7678
                                                                                                  k7679
                                                                                                  x8982))))
                                                                                       g8981))))
                                                                           g8980))
                                                                       xj7674
                                                                       xk7675
                                                                       block-rotate-ccw)))
                                                              g8979)))
                                                         (x8973
                                                          (letrec ((x8974
                                                                    (letrec ((x8977
                                                                              (input))
                                                                             (x8975
                                                                              (letrec ((x8976
                                                                                        (input)))
                                                                                (cons
                                                                                 x8976
                                                                                 '()))))
                                                                      (cons
                                                                       x8977
                                                                       x8975))))
                                                            (cons
                                                             'posn
                                                             x8974)))
                                                         (x8966
                                                          (letrec ((x8967
                                                                    (letrec ((x8972
                                                                              (input))
                                                                             (x8968
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
                                                                       x8972
                                                                       x8968))))
                                                            (cons
                                                             'block
                                                             x8967))))
                                                  (x8978 x8973 x8966))
                                                (letrec ((x8997
                                                          (letrec ((xj7681
                                                                    (loc
                                                                     'module))
                                                                   (xk7682
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8998
                                                                      ((lambda (j7685
                                                                                k7686
                                                                                f7687)
                                                                         (letrec ((g8999
                                                                                   (lambda (g7683
                                                                                            g7684)
                                                                                     (letrec ((g9000
                                                                                               (letrec ((x9001
                                                                                                         (letrec ((x9003
                                                                                                                   (POSN/C
                                                                                                                    j7685
                                                                                                                    k7686
                                                                                                                    g7683))
                                                                                                                  (x9002
                                                                                                                   (BLOCK/C
                                                                                                                    j7685
                                                                                                                    k7686
                                                                                                                    g7684)))
                                                                                                           (f7687
                                                                                                            x9003
                                                                                                            x9002))))
                                                                                                 (BLOCK/C
                                                                                                  j7685
                                                                                                  k7686
                                                                                                  x9001))))
                                                                                       g9000))))
                                                                           g8999))
                                                                       xj7681
                                                                       xk7682
                                                                       block-rotate-cw)))
                                                              g8998)))
                                                         (x8992
                                                          (letrec ((x8993
                                                                    (letrec ((x8996
                                                                              (input))
                                                                             (x8994
                                                                              (letrec ((x8995
                                                                                        (input)))
                                                                                (cons
                                                                                 x8995
                                                                                 '()))))
                                                                      (cons
                                                                       x8996
                                                                       x8994))))
                                                            (cons
                                                             'posn
                                                             x8993)))
                                                         (x8985
                                                          (letrec ((x8986
                                                                    (letrec ((x8991
                                                                              (input))
                                                                             (x8987
                                                                              (letrec ((x8990
                                                                                        (input))
                                                                                       (x8988
                                                                                        (letrec ((x8989
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8989
                                                                                           '()))))
                                                                                (cons
                                                                                 x8990
                                                                                 x8988))))
                                                                      (cons
                                                                       x8991
                                                                       x8987))))
                                                            (cons
                                                             'block
                                                             x8986))))
                                                  (x8997 x8992 x8985))
                                                (letrec ((x9018
                                                          (letrec ((xj7688
                                                                    (loc
                                                                     'module))
                                                                   (xk7689
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9019
                                                                      ((lambda (j7692
                                                                                k7693
                                                                                f7694)
                                                                         (letrec ((g9020
                                                                                   (lambda (g7690
                                                                                            g7691)
                                                                                     (letrec ((g9021
                                                                                               (letrec ((x9022
                                                                                                         (letrec ((x9024
                                                                                                                   (BLOCK/C
                                                                                                                    j7692
                                                                                                                    k7693
                                                                                                                    g7690))
                                                                                                                  (x9023
                                                                                                                   (BLOCK/C
                                                                                                                    j7692
                                                                                                                    k7693
                                                                                                                    g7691)))
                                                                                                           (f7694
                                                                                                            x9024
                                                                                                            x9023))))
                                                                                                 (boolean?/c
                                                                                                  j7692
                                                                                                  k7693
                                                                                                  x9022))))
                                                                                       g9021))))
                                                                           g9020))
                                                                       xj7688
                                                                       xk7689
                                                                       block=?)))
                                                              g9019)))
                                                         (x9011
                                                          (letrec ((x9012
                                                                    (letrec ((x9017
                                                                              (input))
                                                                             (x9013
                                                                              (letrec ((x9016
                                                                                        (input))
                                                                                       (x9014
                                                                                        (letrec ((x9015
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9015
                                                                                           '()))))
                                                                                (cons
                                                                                 x9016
                                                                                 x9014))))
                                                                      (cons
                                                                       x9017
                                                                       x9013))))
                                                            (cons
                                                             'block
                                                             x9012)))
                                                         (x9004
                                                          (letrec ((x9005
                                                                    (letrec ((x9010
                                                                              (input))
                                                                             (x9006
                                                                              (letrec ((x9009
                                                                                        (input))
                                                                                       (x9007
                                                                                        (letrec ((x9008
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9008
                                                                                           '()))))
                                                                                (cons
                                                                                 x9009
                                                                                 x9007))))
                                                                      (cons
                                                                       x9010
                                                                       x9006))))
                                                            (cons
                                                             'block
                                                             x9005))))
                                                  (x9018 x9011 x9004))
                                                (letrec ((x9034
                                                          (letrec ((xj7695
                                                                    (loc
                                                                     'module))
                                                                   (xk7696
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9035
                                                                      ((lambda (j7700
                                                                                k7701
                                                                                f7702)
                                                                         (letrec ((g9036
                                                                                   (lambda (g7697
                                                                                            g7698
                                                                                            g7699)
                                                                                     (letrec ((g9037
                                                                                               (letrec ((x9038
                                                                                                         (letrec ((x9041
                                                                                                                   (real?/c
                                                                                                                    j7700
                                                                                                                    k7701
                                                                                                                    g7697))
                                                                                                                  (x9040
                                                                                                                   (real?/c
                                                                                                                    j7700
                                                                                                                    k7701
                                                                                                                    g7698))
                                                                                                                  (x9039
                                                                                                                   (BLOCK/C
                                                                                                                    j7700
                                                                                                                    k7701
                                                                                                                    g7699)))
                                                                                                           (f7702
                                                                                                            x9041
                                                                                                            x9040
                                                                                                            x9039))))
                                                                                                 (BLOCK/C
                                                                                                  j7700
                                                                                                  k7701
                                                                                                  x9038))))
                                                                                       g9037))))
                                                                           g9036))
                                                                       xj7695
                                                                       xk7696
                                                                       block-move)))
                                                              g9035)))
                                                         (x9033 (input))
                                                         (x9032 (input))
                                                         (x9025
                                                          (letrec ((x9026
                                                                    (letrec ((x9031
                                                                              (input))
                                                                             (x9027
                                                                              (letrec ((x9030
                                                                                        (input))
                                                                                       (x9028
                                                                                        (letrec ((x9029
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9029
                                                                                           '()))))
                                                                                (cons
                                                                                 x9030
                                                                                 x9028))))
                                                                      (cons
                                                                       x9031
                                                                       x9027))))
                                                            (cons
                                                             'block
                                                             x9026))))
                                                  (x9034 x9033 x9032 x9025))
                                                (letrec ((x9050
                                                          (letrec ((xj7703
                                                                    (loc
                                                                     'module))
                                                                   (xk7704
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9051
                                                                      ((lambda (j7707
                                                                                k7708
                                                                                f7709)
                                                                         (letrec ((g9052
                                                                                   (lambda (g7705
                                                                                            g7706)
                                                                                     (letrec ((g9053
                                                                                               (letrec ((x9054
                                                                                                         (letrec ((x9056
                                                                                                                   (BSET/C
                                                                                                                    j7707
                                                                                                                    k7708
                                                                                                                    g7705))
                                                                                                                  (x9055
                                                                                                                   (BLOCK/C
                                                                                                                    j7707
                                                                                                                    k7708
                                                                                                                    g7706)))
                                                                                                           (f7709
                                                                                                            x9056
                                                                                                            x9055))))
                                                                                                 (boolean?/c
                                                                                                  j7707
                                                                                                  k7708
                                                                                                  x9054))))
                                                                                       g9053))))
                                                                           g9052))
                                                                       xj7703
                                                                       xk7704
                                                                       blocks-contains?)))
                                                              g9051)))
                                                         (x9049 (input))
                                                         (x9042
                                                          (letrec ((x9043
                                                                    (letrec ((x9048
                                                                              (input))
                                                                             (x9044
                                                                              (letrec ((x9047
                                                                                        (input))
                                                                                       (x9045
                                                                                        (letrec ((x9046
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9046
                                                                                           '()))))
                                                                                (cons
                                                                                 x9047
                                                                                 x9045))))
                                                                      (cons
                                                                       x9048
                                                                       x9044))))
                                                            (cons
                                                             'block
                                                             x9043))))
                                                  (x9050 x9049 x9042))
                                                (letrec ((x9059
                                                          (letrec ((xj7710
                                                                    (loc
                                                                     'module))
                                                                   (xk7711
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9060
                                                                      ((lambda (j7714
                                                                                k7715
                                                                                f7716)
                                                                         (letrec ((g9061
                                                                                   (lambda (g7712
                                                                                            g7713)
                                                                                     (letrec ((g9062
                                                                                               (letrec ((x9063
                                                                                                         (letrec ((x9065
                                                                                                                   (BSET/C
                                                                                                                    j7714
                                                                                                                    k7715
                                                                                                                    g7712))
                                                                                                                  (x9064
                                                                                                                   (BSET/C
                                                                                                                    j7714
                                                                                                                    k7715
                                                                                                                    g7713)))
                                                                                                           (f7716
                                                                                                            x9065
                                                                                                            x9064))))
                                                                                                 (boolean?/c
                                                                                                  j7714
                                                                                                  k7715
                                                                                                  x9063))))
                                                                                       g9062))))
                                                                           g9061))
                                                                       xj7710
                                                                       xk7711
                                                                       blocks=?)))
                                                              g9060)))
                                                         (x9058 (input))
                                                         (x9057 (input)))
                                                  (x9059 x9058 x9057))
                                                (letrec ((x9068
                                                          (letrec ((xj7717
                                                                    (loc
                                                                     'module))
                                                                   (xk7718
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9069
                                                                      ((lambda (j7721
                                                                                k7722
                                                                                f7723)
                                                                         (letrec ((g9070
                                                                                   (lambda (g7719
                                                                                            g7720)
                                                                                     (letrec ((g9071
                                                                                               (letrec ((x9072
                                                                                                         (letrec ((x9074
                                                                                                                   (BSET/C
                                                                                                                    j7721
                                                                                                                    k7722
                                                                                                                    g7719))
                                                                                                                  (x9073
                                                                                                                   (BSET/C
                                                                                                                    j7721
                                                                                                                    k7722
                                                                                                                    g7720)))
                                                                                                           (f7723
                                                                                                            x9074
                                                                                                            x9073))))
                                                                                                 (boolean?/c
                                                                                                  j7721
                                                                                                  k7722
                                                                                                  x9072))))
                                                                                       g9071))))
                                                                           g9070))
                                                                       xj7717
                                                                       xk7718
                                                                       blocks-subset?)))
                                                              g9069)))
                                                         (x9067 (input))
                                                         (x9066 (input)))
                                                  (x9068 x9067 x9066))
                                                (letrec ((x9077
                                                          (letrec ((xj7724
                                                                    (loc
                                                                     'module))
                                                                   (xk7725
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9078
                                                                      ((lambda (j7728
                                                                                k7729
                                                                                f7730)
                                                                         (letrec ((g9079
                                                                                   (lambda (g7726
                                                                                            g7727)
                                                                                     (letrec ((g9080
                                                                                               (letrec ((x9081
                                                                                                         (letrec ((x9083
                                                                                                                   (BSET/C
                                                                                                                    j7728
                                                                                                                    k7729
                                                                                                                    g7726))
                                                                                                                  (x9082
                                                                                                                   (BSET/C
                                                                                                                    j7728
                                                                                                                    k7729
                                                                                                                    g7727)))
                                                                                                           (f7730
                                                                                                            x9083
                                                                                                            x9082))))
                                                                                                 (BSET/C
                                                                                                  j7728
                                                                                                  k7729
                                                                                                  x9081))))
                                                                                       g9080))))
                                                                           g9079))
                                                                       xj7724
                                                                       xk7725
                                                                       blocks-intersect)))
                                                              g9078)))
                                                         (x9076 (input))
                                                         (x9075 (input)))
                                                  (x9077 x9076 x9075))
                                                (letrec ((x9085
                                                          (letrec ((xj7731
                                                                    (loc
                                                                     'module))
                                                                   (xk7732
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9086
                                                                      ((lambda (j7734
                                                                                k7735
                                                                                f7736)
                                                                         (letrec ((g9087
                                                                                   (lambda (g7733)
                                                                                     (letrec ((g9088
                                                                                               (letrec ((x9089
                                                                                                         (letrec ((x9090
                                                                                                                   (BSET/C
                                                                                                                    j7734
                                                                                                                    k7735
                                                                                                                    g7733)))
                                                                                                           (f7736
                                                                                                            x9090))))
                                                                                                 (real?/c
                                                                                                  j7734
                                                                                                  k7735
                                                                                                  x9089))))
                                                                                       g9088))))
                                                                           g9087))
                                                                       xj7731
                                                                       xk7732
                                                                       blocks-count)))
                                                              g9086)))
                                                         (x9084 (input)))
                                                  (x9085 x9084))
                                                (letrec ((x9092
                                                          (letrec ((xj7737
                                                                    (loc
                                                                     'module))
                                                                   (xk7738
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9093
                                                                      ((lambda (j7740
                                                                                k7741
                                                                                f7742)
                                                                         (letrec ((g9094
                                                                                   (lambda (g7739)
                                                                                     (letrec ((g9095
                                                                                               (letrec ((x9096
                                                                                                         (letrec ((x9097
                                                                                                                   (BSET/C
                                                                                                                    j7740
                                                                                                                    k7741
                                                                                                                    g7739)))
                                                                                                           (f7742
                                                                                                            x9097))))
                                                                                                 (boolean?/c
                                                                                                  j7740
                                                                                                  k7741
                                                                                                  x9096))))
                                                                                       g9095))))
                                                                           g9094))
                                                                       xj7737
                                                                       xk7738
                                                                       blocks-overflow?)))
                                                              g9093)))
                                                         (x9091 (input)))
                                                  (x9092 x9091))
                                                (letrec ((x9101
                                                          (letrec ((xj7743
                                                                    (loc
                                                                     'module))
                                                                   (xk7744
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9102
                                                                      ((lambda (j7748
                                                                                k7749
                                                                                f7750)
                                                                         (letrec ((g9103
                                                                                   (lambda (g7745
                                                                                            g7746
                                                                                            g7747)
                                                                                     (letrec ((g9104
                                                                                               (letrec ((x9105
                                                                                                         (letrec ((x9108
                                                                                                                   (real?/c
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7745))
                                                                                                                  (x9107
                                                                                                                   (real?/c
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7746))
                                                                                                                  (x9106
                                                                                                                   (BSET/C
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7747)))
                                                                                                           (f7750
                                                                                                            x9108
                                                                                                            x9107
                                                                                                            x9106))))
                                                                                                 (BSET/C
                                                                                                  j7748
                                                                                                  k7749
                                                                                                  x9105))))
                                                                                       g9104))))
                                                                           g9103))
                                                                       xj7743
                                                                       xk7744
                                                                       blocks-move)))
                                                              g9102)))
                                                         (x9100 (input))
                                                         (x9099 (input))
                                                         (x9098 (input)))
                                                  (x9101 x9100 x9099 x9098))
                                                (letrec ((x9115
                                                          (letrec ((xj7751
                                                                    (loc
                                                                     'module))
                                                                   (xk7752
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9116
                                                                      ((lambda (j7755
                                                                                k7756
                                                                                f7757)
                                                                         (letrec ((g9117
                                                                                   (lambda (g7753
                                                                                            g7754)
                                                                                     (letrec ((g9118
                                                                                               (letrec ((x9119
                                                                                                         (letrec ((x9121
                                                                                                                   (POSN/C
                                                                                                                    j7755
                                                                                                                    k7756
                                                                                                                    g7753))
                                                                                                                  (x9120
                                                                                                                   (BSET/C
                                                                                                                    j7755
                                                                                                                    k7756
                                                                                                                    g7754)))
                                                                                                           (f7757
                                                                                                            x9121
                                                                                                            x9120))))
                                                                                                 (BSET/C
                                                                                                  j7755
                                                                                                  k7756
                                                                                                  x9119))))
                                                                                       g9118))))
                                                                           g9117))
                                                                       xj7751
                                                                       xk7752
                                                                       blocks-rotate-cw)))
                                                              g9116)))
                                                         (x9110
                                                          (letrec ((x9111
                                                                    (letrec ((x9114
                                                                              (input))
                                                                             (x9112
                                                                              (letrec ((x9113
                                                                                        (input)))
                                                                                (cons
                                                                                 x9113
                                                                                 '()))))
                                                                      (cons
                                                                       x9114
                                                                       x9112))))
                                                            (cons
                                                             'posn
                                                             x9111)))
                                                         (x9109 (input)))
                                                  (x9115 x9110 x9109))
                                                (letrec ((x9128
                                                          (letrec ((xj7758
                                                                    (loc
                                                                     'module))
                                                                   (xk7759
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9129
                                                                      ((lambda (j7762
                                                                                k7763
                                                                                f7764)
                                                                         (letrec ((g9130
                                                                                   (lambda (g7760
                                                                                            g7761)
                                                                                     (letrec ((g9131
                                                                                               (letrec ((x9132
                                                                                                         (letrec ((x9134
                                                                                                                   (POSN/C
                                                                                                                    j7762
                                                                                                                    k7763
                                                                                                                    g7760))
                                                                                                                  (x9133
                                                                                                                   (BSET/C
                                                                                                                    j7762
                                                                                                                    k7763
                                                                                                                    g7761)))
                                                                                                           (f7764
                                                                                                            x9134
                                                                                                            x9133))))
                                                                                                 (BSET/C
                                                                                                  j7762
                                                                                                  k7763
                                                                                                  x9132))))
                                                                                       g9131))))
                                                                           g9130))
                                                                       xj7758
                                                                       xk7759
                                                                       blocks-rotate-ccw)))
                                                              g9129)))
                                                         (x9123
                                                          (letrec ((x9124
                                                                    (letrec ((x9127
                                                                              (input))
                                                                             (x9125
                                                                              (letrec ((x9126
                                                                                        (input)))
                                                                                (cons
                                                                                 x9126
                                                                                 '()))))
                                                                      (cons
                                                                       x9127
                                                                       x9125))))
                                                            (cons
                                                             'posn
                                                             x9124)))
                                                         (x9122 (input)))
                                                  (x9128 x9123 x9122))
                                                (letrec ((x9137
                                                          (letrec ((xj7765
                                                                    (loc
                                                                     'module))
                                                                   (xk7766
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9138
                                                                      ((lambda (j7769
                                                                                k7770
                                                                                f7771)
                                                                         (letrec ((g9139
                                                                                   (lambda (g7767
                                                                                            g7768)
                                                                                     (letrec ((g9140
                                                                                               (letrec ((x9141
                                                                                                         (letrec ((x9143
                                                                                                                   (BSET/C
                                                                                                                    j7769
                                                                                                                    k7770
                                                                                                                    g7767))
                                                                                                                  (x9142
                                                                                                                   (COLOR/C
                                                                                                                    j7769
                                                                                                                    k7770
                                                                                                                    g7768)))
                                                                                                           (f7771
                                                                                                            x9143
                                                                                                            x9142))))
                                                                                                 (BSET/C
                                                                                                  j7769
                                                                                                  k7770
                                                                                                  x9141))))
                                                                                       g9140))))
                                                                           g9139))
                                                                       xj7765
                                                                       xk7766
                                                                       blocks-change-color)))
                                                              g9138)))
                                                         (x9136 (input))
                                                         (x9135 (input)))
                                                  (x9137 x9136 x9135))
                                                (letrec ((x9146
                                                          (letrec ((xj7772
                                                                    (loc
                                                                     'module))
                                                                   (xk7773
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9147
                                                                      ((lambda (j7776
                                                                                k7777
                                                                                f7778)
                                                                         (letrec ((g9148
                                                                                   (lambda (g7774
                                                                                            g7775)
                                                                                     (letrec ((g9149
                                                                                               (letrec ((x9150
                                                                                                         (letrec ((x9152
                                                                                                                   (BSET/C
                                                                                                                    j7776
                                                                                                                    k7777
                                                                                                                    g7774))
                                                                                                                  (x9151
                                                                                                                   (real?/c
                                                                                                                    j7776
                                                                                                                    k7777
                                                                                                                    g7775)))
                                                                                                           (f7778
                                                                                                            x9152
                                                                                                            x9151))))
                                                                                                 (BSET/C
                                                                                                  j7776
                                                                                                  k7777
                                                                                                  x9150))))
                                                                                       g9149))))
                                                                           g9148))
                                                                       xj7772
                                                                       xk7773
                                                                       blocks-row)))
                                                              g9147)))
                                                         (x9145 (input))
                                                         (x9144 (input)))
                                                  (x9146 x9145 x9144))
                                                (letrec ((x9155
                                                          (letrec ((xj7779
                                                                    (loc
                                                                     'module))
                                                                   (xk7780
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9156
                                                                      ((lambda (j7783
                                                                                k7784
                                                                                f7785)
                                                                         (letrec ((g9157
                                                                                   (lambda (g7781
                                                                                            g7782)
                                                                                     (letrec ((g9158
                                                                                               (letrec ((x9159
                                                                                                         (letrec ((x9161
                                                                                                                   (BSET/C
                                                                                                                    j7783
                                                                                                                    k7784
                                                                                                                    g7781))
                                                                                                                  (x9160
                                                                                                                   (real?/c
                                                                                                                    j7783
                                                                                                                    k7784
                                                                                                                    g7782)))
                                                                                                           (f7785
                                                                                                            x9161
                                                                                                            x9160))))
                                                                                                 (boolean?/c
                                                                                                  j7783
                                                                                                  k7784
                                                                                                  x9159))))
                                                                                       g9158))))
                                                                           g9157))
                                                                       xj7779
                                                                       xk7780
                                                                       full-row?)))
                                                              g9156)))
                                                         (x9154 (input))
                                                         (x9153 (input)))
                                                  (x9155 x9154 x9153))
                                                (letrec ((x9164
                                                          (letrec ((xj7786
                                                                    (loc
                                                                     'module))
                                                                   (xk7787
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9165
                                                                      ((lambda (j7790
                                                                                k7791
                                                                                f7792)
                                                                         (letrec ((g9166
                                                                                   (lambda (g7788
                                                                                            g7789)
                                                                                     (letrec ((g9167
                                                                                               (letrec ((x9168
                                                                                                         (letrec ((x9170
                                                                                                                   (BSET/C
                                                                                                                    j7790
                                                                                                                    k7791
                                                                                                                    g7788))
                                                                                                                  (x9169
                                                                                                                   (BSET/C
                                                                                                                    j7790
                                                                                                                    k7791
                                                                                                                    g7789)))
                                                                                                           (f7792
                                                                                                            x9170
                                                                                                            x9169))))
                                                                                                 (BSET/C
                                                                                                  j7790
                                                                                                  k7791
                                                                                                  x9168))))
                                                                                       g9167))))
                                                                           g9166))
                                                                       xj7786
                                                                       xk7787
                                                                       blocks-union)))
                                                              g9165)))
                                                         (x9163 (input))
                                                         (x9162 (input)))
                                                  (x9164 x9163 x9162))
                                                (letrec ((x9172
                                                          (letrec ((xj7793
                                                                    (loc
                                                                     'module))
                                                                   (xk7794
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9173
                                                                      ((lambda (j7796
                                                                                k7797
                                                                                f7798)
                                                                         (letrec ((g9174
                                                                                   (lambda (g7795)
                                                                                     (letrec ((g9175
                                                                                               (letrec ((x9176
                                                                                                         (letrec ((x9177
                                                                                                                   (BSET/C
                                                                                                                    j7796
                                                                                                                    k7797
                                                                                                                    g7795)))
                                                                                                           (f7798
                                                                                                            x9177))))
                                                                                                 (real?/c
                                                                                                  j7796
                                                                                                  k7797
                                                                                                  x9176))))
                                                                                       g9175))))
                                                                           g9174))
                                                                       xj7793
                                                                       xk7794
                                                                       blocks-max-x)))
                                                              g9173)))
                                                         (x9171 (input)))
                                                  (x9172 x9171))
                                                (letrec ((x9179
                                                          (letrec ((xj7799
                                                                    (loc
                                                                     'module))
                                                                   (xk7800
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9180
                                                                      ((lambda (j7802
                                                                                k7803
                                                                                f7804)
                                                                         (letrec ((g9181
                                                                                   (lambda (g7801)
                                                                                     (letrec ((g9182
                                                                                               (letrec ((x9183
                                                                                                         (letrec ((x9184
                                                                                                                   (BSET/C
                                                                                                                    j7802
                                                                                                                    k7803
                                                                                                                    g7801)))
                                                                                                           (f7804
                                                                                                            x9184))))
                                                                                                 (real?/c
                                                                                                  j7802
                                                                                                  k7803
                                                                                                  x9183))))
                                                                                       g9182))))
                                                                           g9181))
                                                                       xj7799
                                                                       xk7800
                                                                       blocks-min-x)))
                                                              g9180)))
                                                         (x9178 (input)))
                                                  (x9179 x9178))
                                                (letrec ((x9186
                                                          (letrec ((xj7805
                                                                    (loc
                                                                     'module))
                                                                   (xk7806
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9187
                                                                      ((lambda (j7808
                                                                                k7809
                                                                                f7810)
                                                                         (letrec ((g9188
                                                                                   (lambda (g7807)
                                                                                     (letrec ((g9189
                                                                                               (letrec ((x9190
                                                                                                         (letrec ((x9191
                                                                                                                   (BSET/C
                                                                                                                    j7808
                                                                                                                    k7809
                                                                                                                    g7807)))
                                                                                                           (f7810
                                                                                                            x9191))))
                                                                                                 (real?/c
                                                                                                  j7808
                                                                                                  k7809
                                                                                                  x9190))))
                                                                                       g9189))))
                                                                           g9188))
                                                                       xj7805
                                                                       xk7806
                                                                       blocks-max-y)))
                                                              g9187)))
                                                         (x9185 (input)))
                                                  (x9186 x9185))
                                                (letrec ((x9193
                                                          (letrec ((xj7811
                                                                    (loc
                                                                     'module))
                                                                   (xk7812
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9194
                                                                      ((lambda (j7814
                                                                                k7815
                                                                                f7816)
                                                                         (letrec ((g9195
                                                                                   (lambda (g7813)
                                                                                     (letrec ((g9196
                                                                                               (letrec ((x9197
                                                                                                         (letrec ((x9198
                                                                                                                   (BSET/C
                                                                                                                    j7814
                                                                                                                    k7815
                                                                                                                    g7813)))
                                                                                                           (f7816
                                                                                                            x9198))))
                                                                                                 (BSET/C
                                                                                                  j7814
                                                                                                  k7815
                                                                                                  x9197))))
                                                                                       g9196))))
                                                                           g9195))
                                                                       xj7811
                                                                       xk7812
                                                                       eliminate-full-rows)))
                                                              g9194)))
                                                         (x9192 (input)))
                                                  (x9193 x9192))
                                                (letrec ((x9210
                                                          (letrec ((xj7817
                                                                    (loc
                                                                     'module))
                                                                   (xk7818
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9211
                                                                      ((lambda (j7822
                                                                                k7823
                                                                                f7824)
                                                                         (letrec ((g9212
                                                                                   (lambda (g7819
                                                                                            g7820
                                                                                            g7821)
                                                                                     (letrec ((g9213
                                                                                               (letrec ((x9214
                                                                                                         (letrec ((x9217
                                                                                                                   (integer?/c
                                                                                                                    j7822
                                                                                                                    k7823
                                                                                                                    g7819))
                                                                                                                  (x9216
                                                                                                                   (integer?/c
                                                                                                                    j7822
                                                                                                                    k7823
                                                                                                                    g7820))
                                                                                                                  (x9215
                                                                                                                   (TETRA/C
                                                                                                                    j7822
                                                                                                                    k7823
                                                                                                                    g7821)))
                                                                                                           (f7824
                                                                                                            x9217
                                                                                                            x9216
                                                                                                            x9215))))
                                                                                                 (TETRA/C
                                                                                                  j7822
                                                                                                  k7823
                                                                                                  x9214))))
                                                                                       g9213))))
                                                                           g9212))
                                                                       xj7817
                                                                       xk7818
                                                                       tetra-move)))
                                                              g9211)))
                                                         (x9209 (input))
                                                         (x9208 (input))
                                                         (x9199
                                                          (letrec ((x9200
                                                                    (letrec ((x9203
                                                                              (letrec ((x9204
                                                                                        (letrec ((x9207
                                                                                                  (input))
                                                                                                 (x9205
                                                                                                  (letrec ((x9206
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9206
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9207
                                                                                           x9205))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9204)))
                                                                             (x9201
                                                                              (letrec ((x9202
                                                                                        (input)))
                                                                                (cons
                                                                                 x9202
                                                                                 '()))))
                                                                      (cons
                                                                       x9203
                                                                       x9201))))
                                                            (cons
                                                             'tetra
                                                             x9200))))
                                                  (x9210 x9209 x9208 x9199))
                                                (letrec ((x9227
                                                          (letrec ((xj7825
                                                                    (loc
                                                                     'module))
                                                                   (xk7826
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9228
                                                                      ((lambda (j7828
                                                                                k7829
                                                                                f7830)
                                                                         (letrec ((g9229
                                                                                   (lambda (g7827)
                                                                                     (letrec ((g9230
                                                                                               (letrec ((x9231
                                                                                                         (letrec ((x9232
                                                                                                                   (TETRA/C
                                                                                                                    j7828
                                                                                                                    k7829
                                                                                                                    g7827)))
                                                                                                           (f7830
                                                                                                            x9232))))
                                                                                                 (TETRA/C
                                                                                                  j7828
                                                                                                  k7829
                                                                                                  x9231))))
                                                                                       g9230))))
                                                                           g9229))
                                                                       xj7825
                                                                       xk7826
                                                                       tetra-rotate-ccw)))
                                                              g9228)))
                                                         (x9218
                                                          (letrec ((x9219
                                                                    (letrec ((x9222
                                                                              (letrec ((x9223
                                                                                        (letrec ((x9226
                                                                                                  (input))
                                                                                                 (x9224
                                                                                                  (letrec ((x9225
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9225
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9226
                                                                                           x9224))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9223)))
                                                                             (x9220
                                                                              (letrec ((x9221
                                                                                        (input)))
                                                                                (cons
                                                                                 x9221
                                                                                 '()))))
                                                                      (cons
                                                                       x9222
                                                                       x9220))))
                                                            (cons
                                                             'tetra
                                                             x9219))))
                                                  (x9227 x9218))
                                                (letrec ((x9242
                                                          (letrec ((xj7831
                                                                    (loc
                                                                     'module))
                                                                   (xk7832
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9243
                                                                      ((lambda (j7834
                                                                                k7835
                                                                                f7836)
                                                                         (letrec ((g9244
                                                                                   (lambda (g7833)
                                                                                     (letrec ((g9245
                                                                                               (letrec ((x9246
                                                                                                         (letrec ((x9247
                                                                                                                   (TETRA/C
                                                                                                                    j7834
                                                                                                                    k7835
                                                                                                                    g7833)))
                                                                                                           (f7836
                                                                                                            x9247))))
                                                                                                 (TETRA/C
                                                                                                  j7834
                                                                                                  k7835
                                                                                                  x9246))))
                                                                                       g9245))))
                                                                           g9244))
                                                                       xj7831
                                                                       xk7832
                                                                       tetra-rotate-cw)))
                                                              g9243)))
                                                         (x9233
                                                          (letrec ((x9234
                                                                    (letrec ((x9237
                                                                              (letrec ((x9238
                                                                                        (letrec ((x9241
                                                                                                  (input))
                                                                                                 (x9239
                                                                                                  (letrec ((x9240
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9240
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9241
                                                                                           x9239))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9238)))
                                                                             (x9235
                                                                              (letrec ((x9236
                                                                                        (input)))
                                                                                (cons
                                                                                 x9236
                                                                                 '()))))
                                                                      (cons
                                                                       x9237
                                                                       x9235))))
                                                            (cons
                                                             'tetra
                                                             x9234))))
                                                  (x9242 x9233))
                                                (letrec ((x9258
                                                          (letrec ((xj7837
                                                                    (loc
                                                                     'module))
                                                                   (xk7838
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9259
                                                                      ((lambda (j7841
                                                                                k7842
                                                                                f7843)
                                                                         (letrec ((g9260
                                                                                   (lambda (g7839
                                                                                            g7840)
                                                                                     (letrec ((g9261
                                                                                               (letrec ((x9262
                                                                                                         (letrec ((x9264
                                                                                                                   (TETRA/C
                                                                                                                    j7841
                                                                                                                    k7842
                                                                                                                    g7839))
                                                                                                                  (x9263
                                                                                                                   (BSET/C
                                                                                                                    j7841
                                                                                                                    k7842
                                                                                                                    g7840)))
                                                                                                           (f7843
                                                                                                            x9264
                                                                                                            x9263))))
                                                                                                 (boolean?/c
                                                                                                  j7841
                                                                                                  k7842
                                                                                                  x9262))))
                                                                                       g9261))))
                                                                           g9260))
                                                                       xj7837
                                                                       xk7838
                                                                       tetra-overlaps-blocks?)))
                                                              g9259)))
                                                         (x9249
                                                          (letrec ((x9250
                                                                    (letrec ((x9253
                                                                              (letrec ((x9254
                                                                                        (letrec ((x9257
                                                                                                  (input))
                                                                                                 (x9255
                                                                                                  (letrec ((x9256
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9256
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9257
                                                                                           x9255))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9254)))
                                                                             (x9251
                                                                              (letrec ((x9252
                                                                                        (input)))
                                                                                (cons
                                                                                 x9252
                                                                                 '()))))
                                                                      (cons
                                                                       x9253
                                                                       x9251))))
                                                            (cons
                                                             'tetra
                                                             x9250)))
                                                         (x9248 (input)))
                                                  (x9258 x9249 x9248))
                                                (letrec ((x9276
                                                          (letrec ((xj7844
                                                                    (loc
                                                                     'module))
                                                                   (xk7845
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9277
                                                                      ((lambda (j7857
                                                                                k7858
                                                                                f7859)
                                                                         (letrec ((g9278
                                                                                   (lambda (g7846
                                                                                            g7847
                                                                                            g7848
                                                                                            g7849
                                                                                            g7850
                                                                                            g7851
                                                                                            g7852
                                                                                            g7853
                                                                                            g7854
                                                                                            g7855
                                                                                            g7856)
                                                                                     (letrec ((g9279
                                                                                               (letrec ((x9280
                                                                                                         (letrec ((x9291
                                                                                                                   (COLOR/C
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7846))
                                                                                                                  (x9290
                                                                                                                   (real?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7847))
                                                                                                                  (x9289
                                                                                                                   (real?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7848))
                                                                                                                  (x9288
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7849))
                                                                                                                  (x9287
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7850))
                                                                                                                  (x9286
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7851))
                                                                                                                  (x9285
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7852))
                                                                                                                  (x9284
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7853))
                                                                                                                  (x9283
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7854))
                                                                                                                  (x9282
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7855))
                                                                                                                  (x9281
                                                                                                                   (integer?/c
                                                                                                                    j7857
                                                                                                                    k7858
                                                                                                                    g7856)))
                                                                                                           (f7859
                                                                                                            x9291
                                                                                                            x9290
                                                                                                            x9289
                                                                                                            x9288
                                                                                                            x9287
                                                                                                            x9286
                                                                                                            x9285
                                                                                                            x9284
                                                                                                            x9283
                                                                                                            x9282
                                                                                                            x9281))))
                                                                                                 (TETRA/C
                                                                                                  j7857
                                                                                                  k7858
                                                                                                  x9280))))
                                                                                       g9279))))
                                                                           g9278))
                                                                       xj7844
                                                                       xk7845
                                                                       build-tetra-blocks)))
                                                              g9277)))
                                                         (x9275 (input))
                                                         (x9274 (input))
                                                         (x9273 (input))
                                                         (x9272 (input))
                                                         (x9271 (input))
                                                         (x9270 (input))
                                                         (x9269 (input))
                                                         (x9268 (input))
                                                         (x9267 (input))
                                                         (x9266 (input))
                                                         (x9265 (input)))
                                                  (x9276
                                                   x9275
                                                   x9274
                                                   x9273
                                                   x9272
                                                   x9271
                                                   x9270
                                                   x9269
                                                   x9268
                                                   x9267
                                                   x9266
                                                   x9265))
                                                (letrec ((x9302
                                                          (letrec ((xj7860
                                                                    (loc
                                                                     'module))
                                                                   (xk7861
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9303
                                                                      ((lambda (j7864
                                                                                k7865
                                                                                f7866)
                                                                         (letrec ((g9304
                                                                                   (lambda (g7862
                                                                                            g7863)
                                                                                     (letrec ((g9305
                                                                                               (letrec ((x9306
                                                                                                         (letrec ((x9308
                                                                                                                   (TETRA/C
                                                                                                                    j7864
                                                                                                                    k7865
                                                                                                                    g7862))
                                                                                                                  (x9307
                                                                                                                   (COLOR/C
                                                                                                                    j7864
                                                                                                                    k7865
                                                                                                                    g7863)))
                                                                                                           (f7866
                                                                                                            x9308
                                                                                                            x9307))))
                                                                                                 (TETRA/C
                                                                                                  j7864
                                                                                                  k7865
                                                                                                  x9306))))
                                                                                       g9305))))
                                                                           g9304))
                                                                       xj7860
                                                                       xk7861
                                                                       tetra-change-color)))
                                                              g9303)))
                                                         (x9293
                                                          (letrec ((x9294
                                                                    (letrec ((x9297
                                                                              (letrec ((x9298
                                                                                        (letrec ((x9301
                                                                                                  (input))
                                                                                                 (x9299
                                                                                                  (letrec ((x9300
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9300
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9301
                                                                                           x9299))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9298)))
                                                                             (x9295
                                                                              (letrec ((x9296
                                                                                        (input)))
                                                                                (cons
                                                                                 x9296
                                                                                 '()))))
                                                                      (cons
                                                                       x9297
                                                                       x9295))))
                                                            (cons
                                                             'tetra
                                                             x9294)))
                                                         (x9292 (input)))
                                                  (x9302 x9293 x9292))
                                                (letrec ((x9323
                                                          (letrec ((xj7867
                                                                    (loc
                                                                     'module))
                                                                   (xk7868
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9324
                                                                      ((lambda (j7871
                                                                                k7872
                                                                                f7873)
                                                                         (letrec ((g9325
                                                                                   (lambda (g7869
                                                                                            g7870)
                                                                                     (letrec ((g9326
                                                                                               (letrec ((x9327
                                                                                                         (letrec ((x9329
                                                                                                                   (WORLD/C
                                                                                                                    j7871
                                                                                                                    k7872
                                                                                                                    g7869))
                                                                                                                  (x9328
                                                                                                                   (string?/c
                                                                                                                    j7871
                                                                                                                    k7872
                                                                                                                    g7870)))
                                                                                                           (f7873
                                                                                                            x9329
                                                                                                            x9328))))
                                                                                                 (WORLD/C
                                                                                                  j7871
                                                                                                  k7872
                                                                                                  x9327))))
                                                                                       g9326))))
                                                                           g9325))
                                                                       xj7867
                                                                       xk7868
                                                                       world-key-move)))
                                                              g9324)))
                                                         (x9310
                                                          (letrec ((x9311
                                                                    (letrec ((x9314
                                                                              (letrec ((x9315
                                                                                        (letrec ((x9318
                                                                                                  (letrec ((x9319
                                                                                                            (letrec ((x9322
                                                                                                                      (input))
                                                                                                                     (x9320
                                                                                                                      (letrec ((x9321
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9321
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9322
                                                                                                               x9320))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9319)))
                                                                                                 (x9316
                                                                                                  (letrec ((x9317
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9317
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9318
                                                                                           x9316))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9315)))
                                                                             (x9312
                                                                              (letrec ((x9313
                                                                                        (input)))
                                                                                (cons
                                                                                 x9313
                                                                                 '()))))
                                                                      (cons
                                                                       x9314
                                                                       x9312))))
                                                            (cons
                                                             'world
                                                             x9311)))
                                                         (x9309 (input)))
                                                  (x9323 x9310 x9309))
                                                (letrec ((x9344
                                                          (letrec ((xj7874
                                                                    (loc
                                                                     'module))
                                                                   (xk7875
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9345
                                                                      ((lambda (j7878
                                                                                k7879
                                                                                f7880)
                                                                         (letrec ((g9346
                                                                                   (lambda (g7876
                                                                                            g7877)
                                                                                     (letrec ((g9347
                                                                                               (letrec ((x9348
                                                                                                         (letrec ((x9352
                                                                                                                   (WORLD/C
                                                                                                                    j7878
                                                                                                                    k7879
                                                                                                                    g7876))
                                                                                                                  (x9349
                                                                                                                   (letrec ((x9350
                                                                                                                             (letrec ((x9351
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9351))))
                                                                                                                     (x9350
                                                                                                                      j7878
                                                                                                                      k7879
                                                                                                                      g7877))))
                                                                                                           (f7880
                                                                                                            x9352
                                                                                                            x9349))))
                                                                                                 (WORLD/C
                                                                                                  j7878
                                                                                                  k7879
                                                                                                  x9348))))
                                                                                       g9347))))
                                                                           g9346))
                                                                       xj7874
                                                                       xk7875
                                                                       next-world)))
                                                              g9345)))
                                                         (x9331
                                                          (letrec ((x9332
                                                                    (letrec ((x9335
                                                                              (letrec ((x9336
                                                                                        (letrec ((x9339
                                                                                                  (letrec ((x9340
                                                                                                            (letrec ((x9343
                                                                                                                      (input))
                                                                                                                     (x9341
                                                                                                                      (letrec ((x9342
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9342
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9343
                                                                                                               x9341))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9340)))
                                                                                                 (x9337
                                                                                                  (letrec ((x9338
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9338
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9339
                                                                                           x9337))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9336)))
                                                                             (x9333
                                                                              (letrec ((x9334
                                                                                        (input)))
                                                                                (cons
                                                                                 x9334
                                                                                 '()))))
                                                                      (cons
                                                                       x9335
                                                                       x9333))))
                                                            (cons
                                                             'world
                                                             x9332)))
                                                         (x9330 (input)))
                                                  (x9344 x9331 x9330))
                                                (letrec ((x9366
                                                          (letrec ((xj7881
                                                                    (loc
                                                                     'module))
                                                                   (xk7882
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9367
                                                                      ((lambda (j7884
                                                                                k7885
                                                                                f7886)
                                                                         (letrec ((g9368
                                                                                   (lambda (g7883)
                                                                                     (letrec ((g9369
                                                                                               (letrec ((x9370
                                                                                                         (letrec ((x9371
                                                                                                                   (WORLD/C
                                                                                                                    j7884
                                                                                                                    k7885
                                                                                                                    g7883)))
                                                                                                           (f7886
                                                                                                            x9371))))
                                                                                                 (BSET/C
                                                                                                  j7884
                                                                                                  k7885
                                                                                                  x9370))))
                                                                                       g9369))))
                                                                           g9368))
                                                                       xj7881
                                                                       xk7882
                                                                       ghost-blocks)))
                                                              g9367)))
                                                         (x9353
                                                          (letrec ((x9354
                                                                    (letrec ((x9357
                                                                              (letrec ((x9358
                                                                                        (letrec ((x9361
                                                                                                  (letrec ((x9362
                                                                                                            (letrec ((x9365
                                                                                                                      (input))
                                                                                                                     (x9363
                                                                                                                      (letrec ((x9364
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9364
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9365
                                                                                                               x9363))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9362)))
                                                                                                 (x9359
                                                                                                  (letrec ((x9360
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9360
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9361
                                                                                           x9359))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9358)))
                                                                             (x9355
                                                                              (letrec ((x9356
                                                                                        (input)))
                                                                                (cons
                                                                                 x9356
                                                                                 '()))))
                                                                      (cons
                                                                       x9357
                                                                       x9355))))
                                                            (cons
                                                             'world
                                                             x9354))))
                                                  (x9366 x9353))
                                                (letrec ((x9373
                                                          (letrec ((xj7887
                                                                    (loc
                                                                     'module))
                                                                   (xk7888
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9374
                                                                      ((lambda (j7890
                                                                                k7891
                                                                                f7892)
                                                                         (letrec ((g9375
                                                                                   (lambda (g7889)
                                                                                     (letrec ((g9376
                                                                                               (letrec ((x9377
                                                                                                         (letrec ((x9378
                                                                                                                   (any/c
                                                                                                                    j7890
                                                                                                                    k7891
                                                                                                                    g7889)))
                                                                                                           (f7892
                                                                                                            x9378))))
                                                                                                 (boolean?/c
                                                                                                  j7890
                                                                                                  k7891
                                                                                                  x9377))))
                                                                                       g9376))))
                                                                           g9375))
                                                                       xj7887
                                                                       xk7888
                                                                       image?)))
                                                              g9374)))
                                                         (x9372 (input)))
                                                  (x9373 x9372))
                                                (letrec ((x9381
                                                          (letrec ((xj7893
                                                                    (loc
                                                                     'module))
                                                                   (xk7894
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9382
                                                                      ((lambda (j7897
                                                                                k7898
                                                                                f7899)
                                                                         (letrec ((g9383
                                                                                   (lambda (g7895
                                                                                            g7896)
                                                                                     (letrec ((g9384
                                                                                               (letrec ((x9385
                                                                                                         (letrec ((x9387
                                                                                                                   (image?
                                                                                                                    j7897
                                                                                                                    k7898
                                                                                                                    g7895))
                                                                                                                  (x9386
                                                                                                                   (image?
                                                                                                                    j7897
                                                                                                                    k7898
                                                                                                                    g7896)))
                                                                                                           (f7899
                                                                                                            x9387
                                                                                                            x9386))))
                                                                                                 (image?
                                                                                                  j7897
                                                                                                  k7898
                                                                                                  x9385))))
                                                                                       g9384))))
                                                                           g9383))
                                                                       xj7893
                                                                       xk7894
                                                                       overlay)))
                                                              g9382)))
                                                         (x9380 (input))
                                                         (x9379 (input)))
                                                  (x9381 x9380 x9379))
                                                (letrec ((x9391
                                                          (letrec ((xj7900
                                                                    (loc
                                                                     'module))
                                                                   (xk7901
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9392
                                                                      ((lambda (j7905
                                                                                k7906
                                                                                f7907)
                                                                         (letrec ((g9393
                                                                                   (lambda (g7902
                                                                                            g7903
                                                                                            g7904)
                                                                                     (letrec ((g9394
                                                                                               (letrec ((x9395
                                                                                                         (letrec ((x9398
                                                                                                                   (real?/c
                                                                                                                    j7905
                                                                                                                    k7906
                                                                                                                    g7902))
                                                                                                                  (x9397
                                                                                                                   (real?/c
                                                                                                                    j7905
                                                                                                                    k7906
                                                                                                                    g7903))
                                                                                                                  (x9396
                                                                                                                   (string?/c
                                                                                                                    j7905
                                                                                                                    k7906
                                                                                                                    g7904)))
                                                                                                           (f7907
                                                                                                            x9398
                                                                                                            x9397
                                                                                                            x9396))))
                                                                                                 (image?
                                                                                                  j7905
                                                                                                  k7906
                                                                                                  x9395))))
                                                                                       g9394))))
                                                                           g9393))
                                                                       xj7900
                                                                       xk7901
                                                                       circle)))
                                                              g9392)))
                                                         (x9390 (input))
                                                         (x9389 (input))
                                                         (x9388 (input)))
                                                  (x9391 x9390 x9389 x9388))
                                                (letrec ((x9403
                                                          (letrec ((xj7908
                                                                    (loc
                                                                     'module))
                                                                   (xk7909
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9404
                                                                      ((lambda (j7914
                                                                                k7915
                                                                                f7916)
                                                                         (letrec ((g9405
                                                                                   (lambda (g7910
                                                                                            g7911
                                                                                            g7912
                                                                                            g7913)
                                                                                     (letrec ((g9406
                                                                                               (letrec ((x9407
                                                                                                         (letrec ((x9411
                                                                                                                   (real?/c
                                                                                                                    j7914
                                                                                                                    k7915
                                                                                                                    g7910))
                                                                                                                  (x9410
                                                                                                                   (real?/c
                                                                                                                    j7914
                                                                                                                    k7915
                                                                                                                    g7911))
                                                                                                                  (x9409
                                                                                                                   (COLOR/C
                                                                                                                    j7914
                                                                                                                    k7915
                                                                                                                    g7912))
                                                                                                                  (x9408
                                                                                                                   (COLOR/C
                                                                                                                    j7914
                                                                                                                    k7915
                                                                                                                    g7913)))
                                                                                                           (f7916
                                                                                                            x9411
                                                                                                            x9410
                                                                                                            x9409
                                                                                                            x9408))))
                                                                                                 (image?
                                                                                                  j7914
                                                                                                  k7915
                                                                                                  x9407))))
                                                                                       g9406))))
                                                                           g9405))
                                                                       xj7908
                                                                       xk7909
                                                                       rectangle)))
                                                              g9404)))
                                                         (x9402 (input))
                                                         (x9401 (input))
                                                         (x9400 (input))
                                                         (x9399 (input)))
                                                  (x9403
                                                   x9402
                                                   x9401
                                                   x9400
                                                   x9399))
                                                (letrec ((x9416
                                                          (letrec ((xj7917
                                                                    (loc
                                                                     'module))
                                                                   (xk7918
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9417
                                                                      ((lambda (j7923
                                                                                k7924
                                                                                f7925)
                                                                         (letrec ((g9418
                                                                                   (lambda (g7919
                                                                                            g7920
                                                                                            g7921
                                                                                            g7922)
                                                                                     (letrec ((g9419
                                                                                               (letrec ((x9420
                                                                                                         (letrec ((x9424
                                                                                                                   (image/c
                                                                                                                    j7923
                                                                                                                    k7924
                                                                                                                    g7919))
                                                                                                                  (x9423
                                                                                                                   (real?/c
                                                                                                                    j7923
                                                                                                                    k7924
                                                                                                                    g7920))
                                                                                                                  (x9422
                                                                                                                   (real?/c
                                                                                                                    j7923
                                                                                                                    k7924
                                                                                                                    g7921))
                                                                                                                  (x9421
                                                                                                                   (image/c
                                                                                                                    j7923
                                                                                                                    k7924
                                                                                                                    g7922)))
                                                                                                           (f7925
                                                                                                            x9424
                                                                                                            x9423
                                                                                                            x9422
                                                                                                            x9421))))
                                                                                                 (image/c
                                                                                                  j7923
                                                                                                  k7924
                                                                                                  x9420))))
                                                                                       g9419))))
                                                                           g9418))
                                                                       xj7917
                                                                       xk7918
                                                                       place-image)))
                                                              g9417)))
                                                         (x9415 (input))
                                                         (x9414 (input))
                                                         (x9413 (input))
                                                         (x9412 (input)))
                                                  (x9416
                                                   x9415
                                                   x9414
                                                   x9413
                                                   x9412))
                                                (letrec ((x9427
                                                          (letrec ((xj7926
                                                                    (loc
                                                                     'module))
                                                                   (xk7927
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9428
                                                                      ((lambda (j7930
                                                                                k7931
                                                                                f7932)
                                                                         (letrec ((g9429
                                                                                   (lambda (g7928
                                                                                            g7929)
                                                                                     (letrec ((g9430
                                                                                               (letrec ((x9431
                                                                                                         (letrec ((x9433
                                                                                                                   (real?/c
                                                                                                                    j7930
                                                                                                                    k7931
                                                                                                                    g7928))
                                                                                                                  (x9432
                                                                                                                   (real?/c
                                                                                                                    j7930
                                                                                                                    k7931
                                                                                                                    g7929)))
                                                                                                           (f7932
                                                                                                            x9433
                                                                                                            x9432))))
                                                                                                 (image?
                                                                                                  j7930
                                                                                                  k7931
                                                                                                  x9431))))
                                                                                       g9430))))
                                                                           g9429))
                                                                       xj7926
                                                                       xk7927
                                                                       empty-scene)))
                                                              g9428)))
                                                         (x9426 (input))
                                                         (x9425 (input)))
                                                  (x9427 x9426 x9425))
                                                (letrec ((x9435
                                                          (letrec ((xj7933
                                                                    (loc
                                                                     'module))
                                                                   (xk7934
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9436
                                                                      ((lambda (j7936
                                                                                k7937
                                                                                f7938)
                                                                         (letrec ((g9437
                                                                                   (lambda (g7935)
                                                                                     (letrec ((g9438
                                                                                               (letrec ((x9439
                                                                                                         (letrec ((x9440
                                                                                                                   (letrec ((x9441
                                                                                                                             (letrec ((x9442
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9442))))
                                                                                                                     (x9441
                                                                                                                      j7936
                                                                                                                      k7937
                                                                                                                      g7935))))
                                                                                                           (f7938
                                                                                                            x9440))))
                                                                                                 (TETRA/C
                                                                                                  j7936
                                                                                                  k7937
                                                                                                  x9439))))
                                                                                       g9438))))
                                                                           g9437))
                                                                       xj7933
                                                                       xk7934
                                                                       list-pick-random)))
                                                              g9436)))
                                                         (x9434 (input)))
                                                  (x9435 x9434))
                                                (letrec ((xj7939 (loc 'module))
                                                         (xk7940
                                                          (loc 'importer)))
                                                  (letrec ((g9443
                                                            (integer?/c
                                                             xj7939
                                                             xk7940
                                                             neg-1)))
                                                    g9443))
                                                (letrec ((x9457
                                                          (letrec ((xj7941
                                                                    (loc
                                                                     'module))
                                                                   (xk7942
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9458
                                                                      ((lambda (j7944
                                                                                k7945
                                                                                f7946)
                                                                         (letrec ((g9459
                                                                                   (lambda (g7943)
                                                                                     (letrec ((g9460
                                                                                               (letrec ((x9461
                                                                                                         (letrec ((x9462
                                                                                                                   (WORLD/C
                                                                                                                    j7944
                                                                                                                    k7945
                                                                                                                    g7943)))
                                                                                                           (f7946
                                                                                                            x9462))))
                                                                                                 (image/c
                                                                                                  j7944
                                                                                                  k7945
                                                                                                  x9461))))
                                                                                       g9460))))
                                                                           g9459))
                                                                       xj7941
                                                                       xk7942
                                                                       world->image)))
                                                              g9458)))
                                                         (x9444
                                                          (letrec ((x9445
                                                                    (letrec ((x9448
                                                                              (letrec ((x9449
                                                                                        (letrec ((x9452
                                                                                                  (letrec ((x9453
                                                                                                            (letrec ((x9456
                                                                                                                      (input))
                                                                                                                     (x9454
                                                                                                                      (letrec ((x9455
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9455
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9456
                                                                                                               x9454))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9453)))
                                                                                                 (x9450
                                                                                                  (letrec ((x9451
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9451
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9452
                                                                                           x9450))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9449)))
                                                                             (x9446
                                                                              (letrec ((x9447
                                                                                        (input)))
                                                                                (cons
                                                                                 x9447
                                                                                 '()))))
                                                                      (cons
                                                                       x9448
                                                                       x9446))))
                                                            (cons
                                                             'world
                                                             x9445))))
                                                  (x9457 x9444))
                                                (letrec ((x9464
                                                          (letrec ((xj7947
                                                                    (loc
                                                                     'module))
                                                                   (xk7948
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9465
                                                                      ((lambda (j7950
                                                                                k7951
                                                                                f7952)
                                                                         (letrec ((g9466
                                                                                   (lambda (g7949)
                                                                                     (letrec ((g9467
                                                                                               (letrec ((x9468
                                                                                                         (letrec ((x9469
                                                                                                                   (BSET/C
                                                                                                                    j7950
                                                                                                                    k7951
                                                                                                                    g7949)))
                                                                                                           (f7952
                                                                                                            x9469))))
                                                                                                 (image/c
                                                                                                  j7950
                                                                                                  k7951
                                                                                                  x9468))))
                                                                                       g9467))))
                                                                           g9466))
                                                                       xj7947
                                                                       xk7948
                                                                       blocks->image)))
                                                              g9465)))
                                                         (x9463 (input)))
                                                  (x9464 x9463))
                                                (letrec ((x9477
                                                          (letrec ((xj7953
                                                                    (loc
                                                                     'module))
                                                                   (xk7954
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9478
                                                                      ((lambda (j7956
                                                                                k7957
                                                                                f7958)
                                                                         (letrec ((g9479
                                                                                   (lambda (g7955)
                                                                                     (letrec ((g9480
                                                                                               (letrec ((x9481
                                                                                                         (letrec ((x9482
                                                                                                                   (BLOCK/C
                                                                                                                    j7956
                                                                                                                    k7957
                                                                                                                    g7955)))
                                                                                                           (f7958
                                                                                                            x9482))))
                                                                                                 (image/c
                                                                                                  j7956
                                                                                                  k7957
                                                                                                  x9481))))
                                                                                       g9480))))
                                                                           g9479))
                                                                       xj7953
                                                                       xk7954
                                                                       block->image)))
                                                              g9478)))
                                                         (x9470
                                                          (letrec ((x9471
                                                                    (letrec ((x9476
                                                                              (input))
                                                                             (x9472
                                                                              (letrec ((x9475
                                                                                        (input))
                                                                                       (x9473
                                                                                        (letrec ((x9474
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9474
                                                                                           '()))))
                                                                                (cons
                                                                                 x9475
                                                                                 x9473))))
                                                                      (cons
                                                                       x9476
                                                                       x9472))))
                                                            (cons
                                                             'block
                                                             x9471))))
                                                  (x9477 x9470))
                                                (letrec ((x9491
                                                          (letrec ((xj7959
                                                                    (loc
                                                                     'module))
                                                                   (xk7960
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9492
                                                                      ((lambda (j7963
                                                                                k7964
                                                                                f7965)
                                                                         (letrec ((g9493
                                                                                   (lambda (g7961
                                                                                            g7962)
                                                                                     (letrec ((g9494
                                                                                               (letrec ((x9495
                                                                                                         (letrec ((x9497
                                                                                                                   (BLOCK/C
                                                                                                                    j7963
                                                                                                                    k7964
                                                                                                                    g7961))
                                                                                                                  (x9496
                                                                                                                   (image/c
                                                                                                                    j7963
                                                                                                                    k7964
                                                                                                                    g7962)))
                                                                                                           (f7965
                                                                                                            x9497
                                                                                                            x9496))))
                                                                                                 (image/c
                                                                                                  j7963
                                                                                                  k7964
                                                                                                  x9495))))
                                                                                       g9494))))
                                                                           g9493))
                                                                       xj7959
                                                                       xk7960
                                                                       place-block)))
                                                              g9492)))
                                                         (x9484
                                                          (letrec ((x9485
                                                                    (letrec ((x9490
                                                                              (input))
                                                                             (x9486
                                                                              (letrec ((x9489
                                                                                        (input))
                                                                                       (x9487
                                                                                        (letrec ((x9488
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9488
                                                                                           '()))))
                                                                                (cons
                                                                                 x9489
                                                                                 x9487))))
                                                                      (cons
                                                                       x9490
                                                                       x9486))))
                                                            (cons
                                                             'block
                                                             x9485)))
                                                         (x9483 (input)))
                                                  (x9491 x9484 x9483))
                                                (letrec ((x9499
                                                          (letrec ((xj7966
                                                                    (loc
                                                                     'module))
                                                                   (xk7967
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9500
                                                                      ((lambda (j7969
                                                                                k7970
                                                                                f7971)
                                                                         (letrec ((g9501
                                                                                   (lambda (g7968)
                                                                                     (letrec ((g9502
                                                                                               (letrec ((x9503
                                                                                                         (letrec ((x9504
                                                                                                                   (letrec ((x9505
                                                                                                                             (letrec ((x9506
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9506))))
                                                                                                                     (x9505
                                                                                                                      j7969
                                                                                                                      k7970
                                                                                                                      g7968))))
                                                                                                           (f7971
                                                                                                            x9504))))
                                                                                                 (WORLD/C
                                                                                                  j7969
                                                                                                  k7970
                                                                                                  x9503))))
                                                                                       g9502))))
                                                                           g9501))
                                                                       xj7966
                                                                       xk7967
                                                                       world0)))
                                                              g9500)))
                                                         (x9498 (input)))
                                                  (x9499 x9498))))))
                                      g8939))))
                          g8008))))
              g8006)))
    g8005))
