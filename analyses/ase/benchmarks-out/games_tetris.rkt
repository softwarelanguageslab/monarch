(letrec ((any? (lambda (v) (letrec ((g7495 #t)) g7495)))
         (meta (lambda (v) (letrec ((g7496 v)) g7496)))
         (member
          (lambda (v lst)
            (letrec ((g7497
                      (letrec ((g7498
                                (letrec ((x-e7499 lst))
                                  (match
                                   x-e7499
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7500 (eq? v v1)))
                                       (if x-cnd7500 #t (member v vs)))))))))
                        g7498)))
              g7497)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7501 (lambda (v) (letrec ((g7502 v)) g7502)))) g7501)))
         (nonzero?
          (lambda (v)
            (letrec ((g7503 (letrec ((x7504 (= v 0))) (not x7504)))) g7503))))
  (letrec ((g7505
            (letrec ((g7506
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7507 '())
                                 (g7508
                                  (letrec ((real/c
                                            (lambda (g7161 g7162 g7163)
                                              (letrec ((g7509
                                                        (letrec ((x-cnd7510
                                                                  (real?
                                                                   g7163)))
                                                          (if x-cnd7510
                                                            g7163
                                                            (blame
                                                             g7161
                                                             'real?)))))
                                                g7509)))
                                           (boolean?/c
                                            (lambda (g7164 g7165 g7166)
                                              (letrec ((g7511
                                                        (letrec ((x-cnd7512
                                                                  (boolean?
                                                                   g7166)))
                                                          (if x-cnd7512
                                                            g7166
                                                            (blame
                                                             g7164
                                                             'boolean?)))))
                                                g7511)))
                                           (number?/c
                                            (lambda (g7167 g7168 g7169)
                                              (letrec ((g7513
                                                        (letrec ((x-cnd7514
                                                                  (number?
                                                                   g7169)))
                                                          (if x-cnd7514
                                                            g7169
                                                            (blame
                                                             g7167
                                                             'number?)))))
                                                g7513)))
                                           (any/c
                                            (lambda (g7170 g7171 g7172)
                                              (letrec ((g7515
                                                        (letrec ((x-cnd7516
                                                                  ((lambda (v)
                                                                     (letrec ((g7517
                                                                               #t))
                                                                       g7517))
                                                                   g7172)))
                                                          (if x-cnd7516
                                                            g7172
                                                            (blame
                                                             g7170
                                                             '(lambda (v)
                                                                #t))))))
                                                g7515)))
                                           (any?/c
                                            (lambda (g7173 g7174 g7175)
                                              (letrec ((g7518
                                                        (letrec ((x-cnd7519
                                                                  ((lambda (v)
                                                                     (letrec ((g7520
                                                                               #t))
                                                                       g7520))
                                                                   g7175)))
                                                          (if x-cnd7519
                                                            g7175
                                                            (blame
                                                             g7173
                                                             '(lambda (v)
                                                                #t))))))
                                                g7518)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7176 g7177 g7178)
                                              (letrec ((g7521
                                                        (letrec ((x-cnd7522
                                                                  (pair?
                                                                   g7178)))
                                                          (if x-cnd7522
                                                            g7178
                                                            (blame
                                                             g7176
                                                             'pair?)))))
                                                g7521)))
                                           (pair?/c
                                            (lambda (g7179 g7180 g7181)
                                              (letrec ((g7523
                                                        (letrec ((x-cnd7524
                                                                  (pair?
                                                                   g7181)))
                                                          (if x-cnd7524
                                                            g7181
                                                            (blame
                                                             g7179
                                                             'pair?)))))
                                                g7523)))
                                           (integer?/c
                                            (lambda (g7182 g7183 g7184)
                                              (letrec ((g7525
                                                        (letrec ((x-cnd7526
                                                                  (integer?
                                                                   g7184)))
                                                          (if x-cnd7526
                                                            g7184
                                                            (blame
                                                             g7182
                                                             'integer?)))))
                                                g7525)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7527
                                                        (lambda (k j v)
                                                          (letrec ((g7528
                                                                    (letrec ((x-cnd7529
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7529
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7528))))
                                                g7527)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7530
                                                        (lambda (k j v)
                                                          (letrec ((g7531
                                                                    (letrec ((x-cnd7532
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7532
                                                                        '()
                                                                        (letrec ((x7536
                                                                                  (letrec ((x7537
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7537)))
                                                                                 (x7533
                                                                                  (letrec ((x7535
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7534
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7535
                                                                                     k
                                                                                     j
                                                                                     x7534))))
                                                                          (cons
                                                                           x7536
                                                                           x7533))))))
                                                            g7531))))
                                                g7530)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7538 #t)) g7538)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7539
                                                        (letrec ((x7540
                                                                  (= v 0)))
                                                          (not x7540))))
                                                g7539)))
                                           (nonzero?/c
                                            (lambda (g7185 g7186 g7187)
                                              (letrec ((g7541
                                                        (letrec ((x-cnd7542
                                                                  ((lambda (v)
                                                                     (letrec ((g7543
                                                                               (letrec ((x7544
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7544))))
                                                                       g7543))
                                                                   g7187)))
                                                          (if x-cnd7542
                                                            g7187
                                                            (blame
                                                             g7185
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7541)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7545 v)) g7545)))
                                           (+
                                            ((lambda (j7190 k7191 f7192)
                                               (letrec ((g7547
                                                         (lambda (g7188 g7189)
                                                           (letrec ((g7548
                                                                     (letrec ((x7549
                                                                               (letrec ((x7551
                                                                                         (number?/c
                                                                                          j7190
                                                                                          k7191
                                                                                          g7188))
                                                                                        (x7550
                                                                                         (number?/c
                                                                                          j7190
                                                                                          k7191
                                                                                          g7189)))
                                                                                 (f7192
                                                                                  x7551
                                                                                  x7550))))
                                                                       (number?/c
                                                                        j7190
                                                                        k7191
                                                                        x7549))))
                                                             g7548))))
                                                 g7547))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7546 (orig-+ a b)))
                                                 g7546))))
                                           (-
                                            ((lambda (j7195 k7196 f7197)
                                               (letrec ((g7553
                                                         (lambda (g7193 g7194)
                                                           (letrec ((g7554
                                                                     (letrec ((x7555
                                                                               (letrec ((x7557
                                                                                         (number?/c
                                                                                          j7195
                                                                                          k7196
                                                                                          g7193))
                                                                                        (x7556
                                                                                         (number?/c
                                                                                          j7195
                                                                                          k7196
                                                                                          g7194)))
                                                                                 (f7197
                                                                                  x7557
                                                                                  x7556))))
                                                                       (number?/c
                                                                        j7195
                                                                        k7196
                                                                        x7555))))
                                                             g7554))))
                                                 g7553))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7552 (orig-- a b)))
                                                 g7552))))
                                           (*
                                            ((lambda (j7200 k7201 f7202)
                                               (letrec ((g7559
                                                         (lambda (g7198 g7199)
                                                           (letrec ((g7560
                                                                     (letrec ((x7561
                                                                               (letrec ((x7563
                                                                                         (number?/c
                                                                                          j7200
                                                                                          k7201
                                                                                          g7198))
                                                                                        (x7562
                                                                                         (number?/c
                                                                                          j7200
                                                                                          k7201
                                                                                          g7199)))
                                                                                 (f7202
                                                                                  x7563
                                                                                  x7562))))
                                                                       (number?/c
                                                                        j7200
                                                                        k7201
                                                                        x7561))))
                                                             g7560))))
                                                 g7559))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7558 (orig-* a b)))
                                                 g7558))))
                                           (/
                                            ((lambda (j7205 k7206 f7207)
                                               (letrec ((g7565
                                                         (lambda (g7203 g7204)
                                                           (letrec ((g7566
                                                                     (letrec ((x7567
                                                                               (letrec ((x7569
                                                                                         (number?/c
                                                                                          j7205
                                                                                          k7206
                                                                                          g7203))
                                                                                        (x7568
                                                                                         (number?/c
                                                                                          j7205
                                                                                          k7206
                                                                                          g7204)))
                                                                                 (f7207
                                                                                  x7569
                                                                                  x7568))))
                                                                       (number?/c
                                                                        j7205
                                                                        k7206
                                                                        x7567))))
                                                             g7566))))
                                                 g7565))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7564 (orig-/ a b)))
                                                 g7564))))
                                           (car
                                            ((lambda (j7209 k7210 f7211)
                                               (letrec ((g7571
                                                         (lambda (g7208)
                                                           (letrec ((g7572
                                                                     (letrec ((x7573
                                                                               (letrec ((x7574
                                                                                         (pair?/c
                                                                                          j7209
                                                                                          k7210
                                                                                          g7208)))
                                                                                 (f7211
                                                                                  x7574))))
                                                                       (any/c
                                                                        j7209
                                                                        k7210
                                                                        x7573))))
                                                             g7572))))
                                                 g7571))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7570 (orig-car p)))
                                                 g7570))))
                                           (cdr
                                            ((lambda (j7213 k7214 f7215)
                                               (letrec ((g7576
                                                         (lambda (g7212)
                                                           (letrec ((g7577
                                                                     (letrec ((x7578
                                                                               (letrec ((x7579
                                                                                         (pair?/c
                                                                                          j7213
                                                                                          k7214
                                                                                          g7212)))
                                                                                 (f7215
                                                                                  x7579))))
                                                                       (any/c
                                                                        j7213
                                                                        k7214
                                                                        x7578))))
                                                             g7577))))
                                                 g7576))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7575 (orig-cdr p)))
                                                 g7575))))
                                           (cons
                                            ((lambda (j7218 k7219 f7220)
                                               (letrec ((g7581
                                                         (lambda (g7216 g7217)
                                                           (letrec ((g7582
                                                                     (letrec ((x7583
                                                                               (letrec ((x7585
                                                                                         (any/c
                                                                                          j7218
                                                                                          k7219
                                                                                          g7216))
                                                                                        (x7584
                                                                                         (any/c
                                                                                          j7218
                                                                                          k7219
                                                                                          g7217)))
                                                                                 (f7220
                                                                                  x7585
                                                                                  x7584))))
                                                                       (pair?/c
                                                                        j7218
                                                                        k7219
                                                                        x7583))))
                                                             g7582))))
                                                 g7581))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7580 (cons a b)))
                                                 g7580))))
                                           (vector-ref
                                            ((lambda (j7222 k7223 f7224)
                                               (letrec ((g7587
                                                         (lambda (g7221)
                                                           (letrec ((g7588
                                                                     (letrec ((x7589
                                                                               (letrec ((x7590
                                                                                         (vector?/c
                                                                                          j7222
                                                                                          k7223
                                                                                          g7221)))
                                                                                 (f7224
                                                                                  x7590))))
                                                                       (integer?/c
                                                                        j7222
                                                                        k7223
                                                                        x7589))))
                                                             g7588))))
                                                 g7587))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7586
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7586))))
                                           (vector-set!
                                            ((lambda (j7227 k7228 f7229)
                                               (letrec ((g7592
                                                         (lambda (g7225 g7226)
                                                           (letrec ((g7593
                                                                     (letrec ((x7594
                                                                               (letrec ((x7596
                                                                                         (vector?/c
                                                                                          j7227
                                                                                          k7228
                                                                                          g7225))
                                                                                        (x7595
                                                                                         (integer?/c
                                                                                          j7227
                                                                                          k7228
                                                                                          g7226)))
                                                                                 (f7229
                                                                                  x7596
                                                                                  x7595))))
                                                                       (any/c
                                                                        j7227
                                                                        k7228
                                                                        x7594))))
                                                             g7593))))
                                                 g7592))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7591
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7591))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7597 #t)) g7597)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7598
                                                        (letrec ((x7599
                                                                  (letrec ((x7600
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7600))))
                                                          (cdr x7599))))
                                                g7598)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7601
                                                        (letrec ((x7604
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7604)))
                                                       (g7602
                                                        (letrec ((x7605
                                                                  (list? l)))
                                                          (assert x7605)))
                                                       (g7603
                                                        (letrec ((x-cnd7606
                                                                  (null? l)))
                                                          (if x-cnd7606
                                                            '()
                                                            (letrec ((x7609
                                                                      (letrec ((x7610
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7610)))
                                                                     (x7607
                                                                      (letrec ((x7608
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7608))))
                                                              (cons
                                                               x7609
                                                               x7607))))))
                                                g7603)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (car x)))
                                                          (cdr x7612))))
                                                g7611)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (letrec ((x7616
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7616))))
                                                                    (cdr
                                                                     x7615))))
                                                          (car x7614))))
                                                g7613)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (letrec ((x7620
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7620))))
                                                                    (car
                                                                     x7619))))
                                                          (cdr x7618))))
                                                g7617)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7621
                                                        (letrec ((x7624
                                                                  (string?
                                                                   filename)))
                                                          (assert x7624)))
                                                       (g7622
                                                        (letrec ((x7625
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7625)))
                                                       (g7623
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7626
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7627 res))
                                                            g7627))))
                                                g7623)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7628
                                                        (letrec ((x7629
                                                                  (letrec ((x7630
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7630))))
                                                          (car x7629))))
                                                g7628)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7631
                                                        (letrec ((x7632
                                                                  (letrec ((x7633
                                                                            (letrec ((x7634
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7634))))
                                                                    (car
                                                                     x7633))))
                                                          (cdr x7632))))
                                                g7631)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7635
                                                        (letrec ((x7637
                                                                  (list? l)))
                                                          (assert x7637)))
                                                       (g7636
                                                        (letrec ((x-cnd7638
                                                                  (null? l)))
                                                          (if x-cnd7638
                                                            #f
                                                            (letrec ((x-cnd7639
                                                                      (letrec ((x7640
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7640
                                                                         k))))
                                                              (if x-cnd7639
                                                                (car l)
                                                                (letrec ((x7641
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7641))))))))
                                                g7636)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7643))))
                                                g7642)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (list? l)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x-cnd7647
                                                                  (null? l)))
                                                          (if x-cnd7647
                                                            ""
                                                            (letrec ((x7650
                                                                      (letrec ((x7651
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7651)))
                                                                     (x7648
                                                                      (letrec ((x7649
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7649))))
                                                              (string-append
                                                               x7650
                                                               x7648))))))
                                                g7645)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7652
                                                        (letrec ((x7655
                                                                  (char? c1)))
                                                          (assert x7655)))
                                                       (g7653
                                                        (letrec ((x7656
                                                                  (char? c2)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7657
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7657))))
                                                g7654)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7661))))
                                                                    (cdr
                                                                     x7660))))
                                                          (cdr x7659))))
                                                g7658)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7662
                                                        (letrec ((x7665
                                                                  (list? l)))
                                                          (assert x7665)))
                                                       (g7663
                                                        (letrec ((x7666
                                                                  (numer?)))
                                                          (assert x7666)))
                                                       (g7664
                                                        (letrec ((x-cnd7667
                                                                  (zero? k)))
                                                          (if x-cnd7667
                                                            x
                                                            (letrec ((x7669
                                                                      (cdr x))
                                                                     (x7668
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7669
                                                               x7668))))))
                                                g7664)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7670 '())) g7670)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7671
                                                        (letrec ((x-cnd7672
                                                                  (letrec ((x7673
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7673))))
                                                          (if x-cnd7672
                                                            (letrec ((x7674
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7674))
                                                            #f))))
                                                g7671)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7675
                                                        (letrec ((x7677
                                                                  (number? x)))
                                                          (assert x7677)))
                                                       (g7676
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7678
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7679
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7679)))))
                                                            g7678))))
                                                g7676)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7680
                                                        (letrec ((val7146
                                                                  (letrec ((x7681
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7681
                                                                     9))))
                                                          (letrec ((g7682
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7683
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7683
                                                                                   10))))
                                                                        (letrec ((g7684
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7685
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7685
                                                                                       32)))))
                                                                          g7684)))))
                                                            g7682))))
                                                g7680)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7686
                                                        (letrec ((x7687
                                                                  (letrec ((x7688
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7688))))
                                                          (cdr x7687))))
                                                g7686)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7689
                                                        (letrec ((x7691
                                                                  (number? x)))
                                                          (assert x7691)))
                                                       (g7690 (> x 0)))
                                                g7690)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7692 #f)) g7692)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7693
                                                        (letrec ((x7694
                                                                  (cdr x)))
                                                          (cdr x7694))))
                                                g7693)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7695
                                                        (letrec ((x7697
                                                                  (number? x)))
                                                          (assert x7697)))
                                                       (g7696
                                                        (letrec ((x-cnd7698
                                                                  (< x 0)))
                                                          (if x-cnd7698
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7696)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7699
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7700
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7702
                                                                                          (null?
                                                                                           a))
                                                                                         (x7701
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7702
                                                                                       x7701))))
                                                                        (letrec ((g7703
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7706
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7705
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7704
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7706
                                                                                                     x7705
                                                                                                     x7704))))
                                                                                      (letrec ((g7707
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7715
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7714
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7711
                                                                                                                      (letrec ((x7713
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7712
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7713
                                                                                                                         x7712)))
                                                                                                                     (x7708
                                                                                                                      (letrec ((x7710
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7709
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7710
                                                                                                                         x7709))))
                                                                                                              (and x7715
                                                                                                                   x7714
                                                                                                                   x7711
                                                                                                                   x7708))))
                                                                                                    (letrec ((g7716
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7735
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7734
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7717
                                                                                                                          (letrec ((x7731
                                                                                                                                    (letrec ((x7732
                                                                                                                                              (letrec ((x7733
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7733))))
                                                                                                                                      (x7732)))
                                                                                                                                   (x7718
                                                                                                                                    (letrec ((x7729
                                                                                                                                              (letrec ((x7730
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7730
                                                                                                                                                 n)))
                                                                                                                                             (x7719
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7720
                                                                                                                                                                    (letrec ((x7727
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7721
                                                                                                                                                                              (letrec ((x7724
                                                                                                                                                                                        (letrec ((x7726
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7725
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7726
                                                                                                                                                                                           x7725)))
                                                                                                                                                                                       (x7722
                                                                                                                                                                                        (letrec ((x7723
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7723))))
                                                                                                                                                                                (and x7724
                                                                                                                                                                                     x7722))))
                                                                                                                                                                      (or x7727
                                                                                                                                                                          x7721))))
                                                                                                                                                            g7720))))
                                                                                                                                                (letrec ((g7728
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7728))))
                                                                                                                                      (and x7729
                                                                                                                                           x7719))))
                                                                                                                            (let x7731 x7718))))
                                                                                                                  (and x7735
                                                                                                                       x7734
                                                                                                                       x7717)))))
                                                                                                      g7716)))))
                                                                                        g7707)))))
                                                                          g7703)))))
                                                            g7700))))
                                                g7699)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7736
                                                        (letrec ((x7737
                                                                  (letrec ((x7738
                                                                            (letrec ((x7739
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7739))))
                                                                    (car
                                                                     x7738))))
                                                          (cdr x7737))))
                                                g7736)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7740
                                                        (letrec ((x7741
                                                                  (letrec ((x7742
                                                                            (letrec ((x7743
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7743))))
                                                                    (car
                                                                     x7742))))
                                                          (car x7741))))
                                                g7740)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7744 (eq? x y)))
                                                g7744)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7745
                                                        (letrec ((x7747
                                                                  (number? x)))
                                                          (assert x7747)))
                                                       (g7746
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7748
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7749
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7749)))))
                                                            g7748))))
                                                g7746)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7750
                                                        (letrec ((x7753
                                                                  (string?
                                                                   filename)))
                                                          (assert x7753)))
                                                       (g7751
                                                        (letrec ((x7754
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7754)))
                                                       (g7752
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7755
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7756 res))
                                                            g7756))))
                                                g7752)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7757 (cons x '())))
                                                g7757)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7758
                                                        (letrec ((x7761
                                                                  (char? c1)))
                                                          (assert x7761)))
                                                       (g7759
                                                        (letrec ((x7762
                                                                  (char? c2)))
                                                          (assert x7762)))
                                                       (g7760
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7763
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7763))))
                                                g7760)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7765
                                                                  (letrec ((x7766
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7766))))
                                                          (cdr x7765))))
                                                g7764)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7767
                                                        (letrec ((x7768
                                                                  (letrec ((x7769
                                                                            (letrec ((x7770
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7770))))
                                                                    (car
                                                                     x7769))))
                                                          (cdr x7768))))
                                                g7767)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7771
                                                        (letrec ((x7772
                                                                  (letrec ((x7773
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7773))))
                                                          (car x7772))))
                                                g7771)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7774
                                                        (letrec ((x7775
                                                                  (letrec ((x7776
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7776))))
                                                          (car x7775))))
                                                g7774)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7777
                                                        (letrec ((x7780
                                                                  (char? c1)))
                                                          (assert x7780)))
                                                       (g7778
                                                        (letrec ((x7781
                                                                  (char? c2)))
                                                          (assert x7781)))
                                                       (g7779
                                                        (letrec ((x7782
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7782))))
                                                g7779)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (letrec ((x7786
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7786))))
                                                                    (car
                                                                     x7785))))
                                                          (car x7784))))
                                                g7783)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7787
                                                        (letrec ((x7789
                                                                  (number? x)))
                                                          (assert x7789)))
                                                       (g7788 (< x 0)))
                                                g7788)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7790 (memq e l)))
                                                g7790)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (letrec ((x7793
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7793))))
                                                          (car x7792))))
                                                g7791)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7794 '())) g7794)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7795
                                                        (letrec ((x7797
                                                                  (list? l)))
                                                          (assert x7797)))
                                                       (g7796
                                                        (letrec ((x-cnd7798
                                                                  (null? l)))
                                                          (if x-cnd7798
                                                            '()
                                                            (letrec ((x7801
                                                                      (letrec ((x7802
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7802)))
                                                                     (x7799
                                                                      (letrec ((x7800
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7800))))
                                                              (append
                                                               x7801
                                                               x7799))))))
                                                g7796)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (letrec ((x7805
                                                                            (letrec ((x7806
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7806))))
                                                                    (car
                                                                     x7805))))
                                                          (car x7804))))
                                                g7803)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7807
                                                        (letrec ((x7808
                                                                  (letrec ((x7809
                                                                            (letrec ((x7810
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7810))))
                                                                    (cdr
                                                                     x7809))))
                                                          (cdr x7808))))
                                                g7807)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7811
                                                        (letrec ((x7813
                                                                  (number? x)))
                                                          (assert x7813)))
                                                       (g7812
                                                        (letrec ((x7814
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7814))))
                                                g7812)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7815
                                                        (letrec ((x7816
                                                                  (letrec ((x7817
                                                                            (letrec ((x7818
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7818))))
                                                                    (car
                                                                     x7817))))
                                                          (car x7816))))
                                                g7815)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7819
                                                        (letrec ((x7822
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7822)))
                                                       (g7820
                                                        (letrec ((x7823
                                                                  (list?
                                                                   args)))
                                                          (assert x7823)))
                                                       (g7821
                                                        (if cnd
                                                          (letrec ((g7824
                                                                    (proc)))
                                                            g7824)
                                                          (if cnd
                                                            (letrec ((g7825
                                                                      (letrec ((x7826
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7826))))
                                                              g7825)
                                                            (if cnd
                                                              (letrec ((g7827
                                                                        (letrec ((x7829
                                                                                  (car
                                                                                   args))
                                                                                 (x7828
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7829
                                                                           x7828))))
                                                                g7827)
                                                              (if cnd
                                                                (letrec ((g7830
                                                                          (letrec ((x7833
                                                                                    (car
                                                                                     args))
                                                                                   (x7832
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7831
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7833
                                                                             x7832
                                                                             x7831))))
                                                                  g7830)
                                                                (if cnd
                                                                  (letrec ((g7834
                                                                            (letrec ((x7838
                                                                                      (car
                                                                                       args))
                                                                                     (x7837
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7836
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7835
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7838
                                                                               x7837
                                                                               x7836
                                                                               x7835))))
                                                                    g7834)
                                                                  (if cnd
                                                                    (letrec ((g7839
                                                                              (letrec ((x7845
                                                                                        (car
                                                                                         args))
                                                                                       (x7844
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7843
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7842
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7840
                                                                                        (letrec ((x7841
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7841))))
                                                                                (proc
                                                                                 x7845
                                                                                 x7844
                                                                                 x7843
                                                                                 x7842
                                                                                 x7840))))
                                                                      g7839)
                                                                    (if cnd
                                                                      (letrec ((g7846
                                                                                (letrec ((x7854
                                                                                          (car
                                                                                           args))
                                                                                         (x7853
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7852
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7851
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7849
                                                                                          (letrec ((x7850
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7850)))
                                                                                         (x7847
                                                                                          (letrec ((x7848
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7848))))
                                                                                  (proc
                                                                                   x7854
                                                                                   x7853
                                                                                   x7852
                                                                                   x7851
                                                                                   x7849
                                                                                   x7847))))
                                                                        g7846)
                                                                      (if cnd
                                                                        (letrec ((g7855
                                                                                  (letrec ((x7865
                                                                                            (car
                                                                                             args))
                                                                                           (x7864
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7863
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7862
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7860
                                                                                            (letrec ((x7861
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7861)))
                                                                                           (x7858
                                                                                            (letrec ((x7859
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7859)))
                                                                                           (x7856
                                                                                            (letrec ((x7857
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7857))))
                                                                                    (proc
                                                                                     x7865
                                                                                     x7864
                                                                                     x7863
                                                                                     x7862
                                                                                     x7860
                                                                                     x7858
                                                                                     x7856))))
                                                                          g7855)
                                                                        (letrec ((g7866
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7866)))))))))))
                                                g7821)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7867
                                                        (letrec ((x7869
                                                                  (list? l)))
                                                          (assert x7869)))
                                                       (g7868
                                                        (letrec ((x-cnd7870
                                                                  (null? l)))
                                                          (if x-cnd7870
                                                            #f
                                                            (letrec ((x-cnd7871
                                                                      (letrec ((x7872
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7872
                                                                         e))))
                                                              (if x-cnd7871
                                                                l
                                                                (letrec ((x7873
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7873))))))))
                                                g7868)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7874
                                                        (letrec ((x7875
                                                                  (letrec ((x7876
                                                                            (letrec ((x7877
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7877))))
                                                                    (cdr
                                                                     x7876))))
                                                          (cdr x7875))))
                                                g7874)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7878
                                                        (letrec ((x7879
                                                                  (letrec ((x7880
                                                                            (letrec ((x7881
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7881))))
                                                                    (cdr
                                                                     x7880))))
                                                          (car x7879))))
                                                g7878)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7882 (random 42)))
                                                g7882)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7885
                                                                  (number? x)))
                                                          (assert x7885)))
                                                       (g7884 (= x 0)))
                                                g7884)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7886
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7887
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7887))))
                                                g7886)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7888
                                                        (letrec ((x7889
                                                                  (cdr x)))
                                                          (car x7889))))
                                                g7888)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7890
                                                        (letrec ((val7156
                                                                  (letrec ((x7893
                                                                            (pair?
                                                                             l))
                                                                           (x7891
                                                                            (letrec ((x7892
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7892))))
                                                                    (and x7893
                                                                         x7891))))
                                                          (letrec ((g7894
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7894))))
                                                g7890)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7895
                                                        (letrec ((x7896
                                                                  (letrec ((x7897
                                                                            (letrec ((x7898
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7898))))
                                                                    (cdr
                                                                     x7897))))
                                                          (cdr x7896))))
                                                g7895)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7899
                                                        (letrec ((x-cnd7900
                                                                  (letrec ((x7901
                                                                            #\0))
                                                                    (char<=?
                                                                     x7901
                                                                     c))))
                                                          (if x-cnd7900
                                                            (letrec ((x7902
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7902))
                                                            #f))))
                                                g7899)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7903
                                                        (letrec ((x7905
                                                                  (list? l)))
                                                          (assert x7905)))
                                                       (g7904
                                                        (letrec ((x-cnd7906
                                                                  (null? l)))
                                                          (if x-cnd7906
                                                            #f
                                                            (letrec ((x-cnd7907
                                                                      (letrec ((x7908
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7908
                                                                         k))))
                                                              (if x-cnd7907
                                                                (car l)
                                                                (letrec ((x7909
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7909))))))))
                                                g7904)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7910 (if x #f #t)))
                                                g7910)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7911 (append l1 l2)))
                                                g7911)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7912
                                                        (letrec ((x7914
                                                                  (list? l)))
                                                          (assert x7914)))
                                                       (g7913
                                                        (letrec ((x-cnd7915
                                                                  (null? l)))
                                                          (if x-cnd7915
                                                            #f
                                                            (letrec ((x-cnd7916
                                                                      (letrec ((x7917
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7917
                                                                         e))))
                                                              (if x-cnd7916
                                                                l
                                                                (letrec ((x7918
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7918))))))))
                                                g7913)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7919
                                                        (letrec ((x7920
                                                                  (letrec ((x7921
                                                                            (letrec ((x7922
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7922))))
                                                                    (cdr
                                                                     x7921))))
                                                          (car x7920))))
                                                g7919)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7923
                                                        (letrec ((x7925
                                                                  (list? l)))
                                                          (assert x7925)))
                                                       (g7924
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7926
                                                                              (letrec ((x-cnd7927
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7927
                                                                                  0
                                                                                  (letrec ((x7928
                                                                                            (letrec ((x7929
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7929))))
                                                                                    (+
                                                                                     1
                                                                                     x7928))))))
                                                                      g7926))))
                                                          (letrec ((g7930
                                                                    (rec l)))
                                                            g7930))))
                                                g7924)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7931
                                                        (letrec ((x7934
                                                                  (char? c1)))
                                                          (assert x7934)))
                                                       (g7932
                                                        (letrec ((x7935
                                                                  (char? c2)))
                                                          (assert x7935)))
                                                       (g7933
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7936
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7936))))
                                                g7933)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7937
                                                        (letrec ((x7938
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7938))))
                                                g7937)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7939
                                                        (letrec ((x7940
                                                                  (letrec ((x7941
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7941))))
                                                          (cdr x7940))))
                                                g7939)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7942
                                                        (letrec ((x7944
                                                                  (list? l)))
                                                          (assert x7944)))
                                                       (g7943
                                                        (letrec ((x-cnd7945
                                                                  (null? l)))
                                                          (if x-cnd7945
                                                            #f
                                                            (letrec ((x-cnd7946
                                                                      (letrec ((x7947
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7947
                                                                         k))))
                                                              (if x-cnd7946
                                                                (car l)
                                                                (letrec ((x7948
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7948))))))))
                                                g7943)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7949
                                                        (letrec ((x7950
                                                                  (car x)))
                                                          (car x7950))))
                                                g7949)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7951
                                                        (letrec ((x7954
                                                                  (char? c1)))
                                                          (assert x7954)))
                                                       (g7952
                                                        (letrec ((x7955
                                                                  (char? c2)))
                                                          (assert x7955)))
                                                       (g7953
                                                        (letrec ((x7956
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7956))))
                                                g7953)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7957
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7958
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7958))))
                                                g7957)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7959
                                                        (letrec ((x7962
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7962)))
                                                       (g7960
                                                        (letrec ((x7963
                                                                  (list? l)))
                                                          (assert x7963)))
                                                       (g7961
                                                        (letrec ((x-cnd7964
                                                                  (null? l)))
                                                          (if x-cnd7964
                                                            #t
                                                            (letrec ((x-cnd7965
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7965
                                                                (letrec ((g7966
                                                                          (letrec ((x7968
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7968)))
                                                                         (g7967
                                                                          (letrec ((x7969
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7969))))
                                                                  g7967)
                                                                '()))))))
                                                g7961)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7970
                                                        (letrec ((x7972
                                                                  (number? x)))
                                                          (assert x7972)))
                                                       (g7971
                                                        (letrec ((x-cnd7973
                                                                  (< x 0)))
                                                          (if x-cnd7973
                                                            (- 0 x)
                                                            x))))
                                                g7971)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7974
                                                        (letrec ((x7977
                                                                  (char? c1)))
                                                          (assert x7977)))
                                                       (g7975
                                                        (letrec ((x7978
                                                                  (char? c2)))
                                                          (assert x7978)))
                                                       (g7976
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7979
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7979))))
                                                g7976)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7980
                                                        (letrec ((x7981
                                                                  (letrec ((x7982
                                                                            (letrec ((x7983
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7983))))
                                                                    (cdr
                                                                     x7982))))
                                                          (car x7981))))
                                                g7980)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7984 #f)) g7984)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7985
                                                        (letrec ((x7987
                                                                  (letrec ((x7988
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7988)))
                                                                 (x7986
                                                                  (gcd m n)))
                                                          (/ x7987 x7986))))
                                                g7985)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7989
                                                        (letrec ((x7991
                                                                  (number? x)))
                                                          (assert x7991)))
                                                       (g7990
                                                        (letrec ((x7992
                                                                  (<= x y)))
                                                          (not x7992))))
                                                g7990)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7993
                                                        (letrec ((x7997
                                                                  (list? l)))
                                                          (assert x7997)))
                                                       (g7994
                                                        (letrec ((x7998
                                                                  (number?
                                                                   index)))
                                                          (assert x7998)))
                                                       (g7995
                                                        (letrec ((x7999
                                                                  (letrec ((x8000
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8000))))
                                                          (assert x7999)))
                                                       (g7996
                                                        (letrec ((x-cnd8001
                                                                  (= index 0)))
                                                          (if x-cnd8001
                                                            (car l)
                                                            (letrec ((x8003
                                                                      (cdr l))
                                                                     (x8002
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8003
                                                               x8002))))))
                                                g7996)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8004
                                                        (letrec ((x-cnd8005
                                                                  (= b 0)))
                                                          (if x-cnd8005
                                                            a
                                                            (letrec ((x8006
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8006))))))
                                                g8004)))
                                           (block
                                            (lambda (x7473 y7474 color7475)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (letrec ((x8010
                                                                                      (cons
                                                                                       color7475
                                                                                       '())))
                                                                              (cons
                                                                               y7474
                                                                               x8010))))
                                                                    (cons
                                                                     x7473
                                                                     x8009))))
                                                          (cons
                                                           'block
                                                           x8008))))
                                                g8007)))
                                           (block?
                                            (lambda (block7472)
                                              (letrec ((g8011
                                                        (letrec ((x8012
                                                                  (car
                                                                   block7472)))
                                                          (eq? x8012 'block))))
                                                g8011)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8013
                                                        (letrec ((x8014
                                                                  (cdr block)))
                                                          (car x8014))))
                                                g8013)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8015
                                                        (letrec ((x8016
                                                                  (letrec ((x8017
                                                                            (cdr
                                                                             block)))
                                                                    (cdr
                                                                     x8017))))
                                                          (car x8016))))
                                                g8015)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (letrec ((x8020
                                                                            (letrec ((x8021
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8021))))
                                                                    (cdr
                                                                     x8020))))
                                                          (car x8019))))
                                                g8018)))
                                           (tetra
                                            (lambda (center7480 blocks7481)
                                              (letrec ((g8022
                                                        (letrec ((x8023
                                                                  (letrec ((x8024
                                                                            (cons
                                                                             blocks7481
                                                                             '())))
                                                                    (cons
                                                                     center7480
                                                                     x8024))))
                                                          (cons
                                                           'tetra
                                                           x8023))))
                                                g8022)))
                                           (tetra?
                                            (lambda (tetra7479)
                                              (letrec ((g8025
                                                        (letrec ((x8026
                                                                  (car
                                                                   tetra7479)))
                                                          (eq? x8026 'tetra))))
                                                g8025)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8027
                                                        (letrec ((x8028
                                                                  (cdr tetra)))
                                                          (car x8028))))
                                                g8027)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8029
                                                        (letrec ((x8030
                                                                  (letrec ((x8031
                                                                            (cdr
                                                                             tetra)))
                                                                    (cdr
                                                                     x8031))))
                                                          (car x8030))))
                                                g8029)))
                                           (world
                                            (lambda (tetra7485 blocks7486)
                                              (letrec ((g8032
                                                        (letrec ((x8033
                                                                  (letrec ((x8034
                                                                            (cons
                                                                             blocks7486
                                                                             '())))
                                                                    (cons
                                                                     tetra7485
                                                                     x8034))))
                                                          (cons
                                                           'world
                                                           x8033))))
                                                g8032)))
                                           (world?
                                            (lambda (world7484)
                                              (letrec ((g8035
                                                        (letrec ((x8036
                                                                  (car
                                                                   world7484)))
                                                          (eq? x8036 'world))))
                                                g8035)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8037
                                                        (letrec ((x8038
                                                                  (cdr world)))
                                                          (car x8038))))
                                                g8037)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8039
                                                        (letrec ((x8040
                                                                  (letrec ((x8041
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x8041))))
                                                          (car x8040))))
                                                g8039)))
                                           (posn
                                            (lambda (x7490 y7491)
                                              (letrec ((g8042
                                                        (letrec ((x8043
                                                                  (letrec ((x8044
                                                                            (cons
                                                                             y7491
                                                                             '())))
                                                                    (cons
                                                                     x7490
                                                                     x8044))))
                                                          (cons 'posn x8043))))
                                                g8042)))
                                           (posn?
                                            (lambda (posn7489)
                                              (letrec ((g8045
                                                        (letrec ((x8046
                                                                  (car
                                                                   posn7489)))
                                                          (eq? x8046 'posn))))
                                                g8045)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8047
                                                        (letrec ((x8048
                                                                  (cdr posn)))
                                                          (car x8048))))
                                                g8047)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8049
                                                        (letrec ((x8050
                                                                  (letrec ((x8051
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x8051))))
                                                          (car x8050))))
                                                g8049)))
                                           (COLOR/C symbol?)
                                           (POSN/C
                                            (lambda (j7231 k7232 v7230)
                                              (letrec ((g8052
                                                        (letrec ((checked7233
                                                                  (letrec ((x8053
                                                                            (car
                                                                             v7230)))
                                                                    (real?/c
                                                                     'j7231
                                                                     'k7232
                                                                     x8053))))
                                                          (letrec ((g8054
                                                                    (letrec ((checked7234
                                                                              (letrec ((x8055
                                                                                        (letrec ((x8056
                                                                                                  (cdr
                                                                                                   v7230)))
                                                                                          (car
                                                                                           x8056))))
                                                                                (real?/c
                                                                                 'j7231
                                                                                 'k7232
                                                                                 x8055))))
                                                                      (letrec ((g8057
                                                                                (letrec ((x8058
                                                                                          (letrec ((x8059
                                                                                                    (cons
                                                                                                     checked7234
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7233
                                                                                             x8059))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8058))))
                                                                        g8057))))
                                                            g8054))))
                                                g8052)))
                                           (BLOCK/C
                                            (lambda (j7237 k7238 v7236)
                                              (letrec ((g8060
                                                        (letrec ((checked7239
                                                                  (letrec ((x8061
                                                                            (car
                                                                             v7236)))
                                                                    (real?/c
                                                                     'j7237
                                                                     'k7238
                                                                     x8061))))
                                                          (letrec ((g8062
                                                                    (letrec ((checked7240
                                                                              (letrec ((x8063
                                                                                        (letrec ((x8064
                                                                                                  (cdr
                                                                                                   v7236)))
                                                                                          (car
                                                                                           x8064))))
                                                                                (real?/c
                                                                                 'j7237
                                                                                 'k7238
                                                                                 x8063))))
                                                                      (letrec ((g8065
                                                                                (letrec ((checked7241
                                                                                          (letrec ((x8066
                                                                                                    (letrec ((x8067
                                                                                                              (letrec ((x8068
                                                                                                                        (cdr
                                                                                                                         v7236)))
                                                                                                                (cdr
                                                                                                                 x8068))))
                                                                                                      (car
                                                                                                       x8067))))
                                                                                            (COLOR/C
                                                                                             'j7237
                                                                                             'k7238
                                                                                             x8066))))
                                                                                  (letrec ((g8069
                                                                                            (letrec ((x8070
                                                                                                      (letrec ((x8071
                                                                                                                (letrec ((x8072
                                                                                                                          (cons
                                                                                                                           checked7241
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7240
                                                                                                                   x8072))))
                                                                                                        (cons
                                                                                                         checked7239
                                                                                                         x8071))))
                                                                                              (cons
                                                                                               block
                                                                                               x8070))))
                                                                                    g8069))))
                                                                        g8065))))
                                                            g8062))))
                                                g8060)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7244 k7245 v7243)
                                              (letrec ((g8073
                                                        (letrec ((checked7246
                                                                  (letrec ((x8074
                                                                            (car
                                                                             v7243)))
                                                                    (POSN/C
                                                                     'j7244
                                                                     'k7245
                                                                     x8074))))
                                                          (letrec ((g8075
                                                                    (letrec ((checked7247
                                                                              (letrec ((x8076
                                                                                        (letrec ((x8077
                                                                                                  (cdr
                                                                                                   v7243)))
                                                                                          (car
                                                                                           x8077))))
                                                                                (BSET/C
                                                                                 'j7244
                                                                                 'k7245
                                                                                 x8076))))
                                                                      (letrec ((g8078
                                                                                (letrec ((x8079
                                                                                          (letrec ((x8080
                                                                                                    (cons
                                                                                                     checked7247
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7246
                                                                                             x8080))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8079))))
                                                                        g8078))))
                                                            g8075))))
                                                g8073)))
                                           (WORLD/C
                                            (lambda (j7250 k7251 v7249)
                                              (letrec ((g8081
                                                        (letrec ((checked7252
                                                                  (letrec ((x8082
                                                                            (car
                                                                             v7249)))
                                                                    (TETRA/C
                                                                     'j7250
                                                                     'k7251
                                                                     x8082))))
                                                          (letrec ((g8083
                                                                    (letrec ((checked7253
                                                                              (letrec ((x8084
                                                                                        (letrec ((x8085
                                                                                                  (cdr
                                                                                                   v7249)))
                                                                                          (car
                                                                                           x8085))))
                                                                                (BSET/C
                                                                                 'j7250
                                                                                 'k7251
                                                                                 x8084))))
                                                                      (letrec ((g8086
                                                                                (letrec ((x8087
                                                                                          (letrec ((x8088
                                                                                                    (cons
                                                                                                     checked7253
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7252
                                                                                             x8088))))
                                                                                  (cons
                                                                                   world
                                                                                   x8087))))
                                                                        g8086))))
                                                            g8083))))
                                                g8081)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8089
                                                        (letrec ((x-cnd8090
                                                                  (letrec ((x8092
                                                                            (posn-x
                                                                             p1))
                                                                           (x8091
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8092
                                                                     x8091))))
                                                          (if x-cnd8090
                                                            (letrec ((x8094
                                                                      (posn-y
                                                                       p1))
                                                                     (x8093
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8094 x8093))
                                                            #f))))
                                                g8089)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8095
                                                        (letrec ((x-cnd8096
                                                                  (letrec ((x8098
                                                                            (block-x
                                                                             b1))
                                                                           (x8097
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8098
                                                                     x8097))))
                                                          (if x-cnd8096
                                                            (letrec ((x8100
                                                                      (block-y
                                                                       b1))
                                                                     (x8099
                                                                      (block-y
                                                                       b2)))
                                                              (= x8100 x8099))
                                                            #f))))
                                                g8095)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8101
                                                        (letrec ((x8105
                                                                  (letrec ((x8106
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8106)))
                                                                 (x8103
                                                                  (letrec ((x8104
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8104)))
                                                                 (x8102
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8105
                                                           x8103
                                                           x8102))))
                                                g8101)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8107
                                                        (letrec ((x8114
                                                                  (letrec ((x8118
                                                                            (posn-x
                                                                             c))
                                                                           (x8115
                                                                            (letrec ((x8117
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8116
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8117
                                                                               x8116))))
                                                                    (+
                                                                     x8118
                                                                     x8115)))
                                                                 (x8109
                                                                  (letrec ((x8113
                                                                            (posn-y
                                                                             c))
                                                                           (x8110
                                                                            (letrec ((x8112
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8111
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8112
                                                                               x8111))))
                                                                    (+
                                                                     x8113
                                                                     x8110)))
                                                                 (x8108
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8114
                                                           x8109
                                                           x8108))))
                                                g8107)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8119
                                                        (letrec ((x8120
                                                                  (letrec ((x8121
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8121))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8120))))
                                                g8119)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8122
                                                        (if cnd
                                                          (letrec ((g8123 #f))
                                                            g8123)
                                                          (letrec ((g8124
                                                                    (letrec ((x8127
                                                                              (letrec ((x8128
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x8128)))
                                                                             (x8125
                                                                              (letrec ((x8126
                                                                                        (cdr
                                                                                         xs)))
                                                                                (ormap
                                                                                 p?
                                                                                 x8126))))
                                                                      (or x8127
                                                                          x8125))))
                                                            g8124))))
                                                g8122)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8129
                                                        (if cnd
                                                          (letrec ((g8130 #t))
                                                            g8130)
                                                          (letrec ((g8131
                                                                    (letrec ((x8134
                                                                              (letrec ((x8135
                                                                                        (car
                                                                                         xs)))
                                                                                (p?
                                                                                 x8135)))
                                                                             (x8132
                                                                              (letrec ((x8133
                                                                                        (cdr
                                                                                         xs)))
                                                                                (andmap
                                                                                 p?
                                                                                 x8133))))
                                                                      (and x8134
                                                                           x8132))))
                                                            g8131))))
                                                g8129)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g8136
                                                        (if cnd
                                                          (letrec ((g8137
                                                                    null))
                                                            g8137)
                                                          (letrec ((g8138
                                                                    (letrec ((x8141
                                                                              (letrec ((x8142
                                                                                        (car
                                                                                         xs)))
                                                                                (f
                                                                                 x8142)))
                                                                             (x8139
                                                                              (letrec ((x8140
                                                                                        (cdr
                                                                                         xs)))
                                                                                (map
                                                                                 f
                                                                                 x8140))))
                                                                      (cons
                                                                       x8141
                                                                       x8139))))
                                                            g8138))))
                                                g8136)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8143
                                                        (if cnd
                                                          (letrec ((g8144
                                                                    null))
                                                            g8144)
                                                          (if cnd
                                                            (letrec ((g8145
                                                                      (letrec ((x8148
                                                                                (car
                                                                                 xs))
                                                                               (x8146
                                                                                (letrec ((x8147
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (filter
                                                                                   p?
                                                                                   x8147))))
                                                                        (cons
                                                                         x8148
                                                                         x8146))))
                                                              g8145)
                                                            (letrec ((g8149
                                                                      (letrec ((x8150
                                                                                (cdr
                                                                                 xs)))
                                                                        (filter
                                                                         p?
                                                                         x8150))))
                                                              g8149)))))
                                                g8143)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8151
                                                        (if cnd
                                                          (letrec ((g8152 r))
                                                            g8152)
                                                          (letrec ((g8153
                                                                    (letrec ((x8156
                                                                              (car
                                                                               l))
                                                                             (x8154
                                                                              (letrec ((x8155
                                                                                        (cdr
                                                                                         l)))
                                                                                (append
                                                                                 x8155
                                                                                 r))))
                                                                      (cons
                                                                       x8156
                                                                       x8154))))
                                                            g8153))))
                                                g8151)))
                                           (length
                                            (lambda (xs)
                                              (letrec ((g8157
                                                        (if cnd
                                                          (letrec ((g8158 0))
                                                            g8158)
                                                          (letrec ((g8159
                                                                    (letrec ((x8160
                                                                              (letrec ((x8161
                                                                                        (cdr
                                                                                         xs)))
                                                                                (length
                                                                                 x8161))))
                                                                      (+
                                                                       1
                                                                       x8160))))
                                                            g8159))))
                                                g8157)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8162
                                                        (if cnd
                                                          (letrec ((g8163 a))
                                                            g8163)
                                                          (letrec ((g8164
                                                                    (letrec ((x8167
                                                                              (car
                                                                               xs))
                                                                             (x8165
                                                                              (letrec ((x8166
                                                                                        (cdr
                                                                                         xs)))
                                                                                (foldr
                                                                                 f
                                                                                 a
                                                                                 x8166))))
                                                                      (f
                                                                       x8167
                                                                       x8165))))
                                                            g8164))))
                                                g8162)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8168
                                                        (letrec ((x8169
                                                                  (letrec ((x8171
                                                                            (c))
                                                                           (x8170
                                                                            (block=?
                                                                             b
                                                                             c)))
                                                                    (λ x8171
                                                                      x8170))))
                                                          (ormap x8169 bs))))
                                                g8168)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8172
                                                        (letrec ((x8173
                                                                  (letrec ((x8175
                                                                            (b))
                                                                           (x8174
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8175
                                                                      x8174))))
                                                          (andmap x8173 bs1))))
                                                g8172)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8176
                                                        (letrec ((x-cnd8177
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8177
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8176)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8178
                                                        (letrec ((x8179
                                                                  (letrec ((x8181
                                                                            (b))
                                                                           (x8180
                                                                            (blocks-contains?
                                                                             bs2
                                                                             b)))
                                                                    (λ x8181
                                                                      x8180))))
                                                          (filter x8179 bs1))))
                                                g8178)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8182 (length bs)))
                                                g8182)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8183
                                                        (letrec ((x8184
                                                                  (letrec ((x8186
                                                                            (b))
                                                                           (x8185
                                                                            (block-move
                                                                             dx
                                                                             dy
                                                                             b)))
                                                                    (λ x8186
                                                                      x8185))))
                                                          (map x8184 bs))))
                                                g8183)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8187
                                                        (letrec ((x8188
                                                                  (letrec ((x8190
                                                                            (b))
                                                                           (x8189
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (λ x8190
                                                                      x8189))))
                                                          (map x8188 bs))))
                                                g8187)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8191
                                                        (letrec ((x8192
                                                                  (letrec ((x8194
                                                                            (b))
                                                                           (x8193
                                                                            (block-rotate-cw
                                                                             c
                                                                             b)))
                                                                    (λ x8194
                                                                      x8193))))
                                                          (map x8192 bs))))
                                                g8191)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8195
                                                        (letrec ((x8196
                                                                  (letrec ((x8200
                                                                            (b))
                                                                           (x8197
                                                                            (letrec ((x8199
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8198
                                                                                      (block-y
                                                                                       b)))
                                                                              (block
                                                                               x8199
                                                                               x8198
                                                                               c))))
                                                                    (λ x8200
                                                                      x8197))))
                                                          (map x8196 bs))))
                                                g8195)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8201
                                                        (letrec ((x8202
                                                                  (letrec ((x8205
                                                                            (b))
                                                                           (x8203
                                                                            (letrec ((x8204
                                                                                      (block-y
                                                                                       b)))
                                                                              (=
                                                                               i
                                                                               x8204))))
                                                                    (λ x8205
                                                                      x8203))))
                                                          (filter x8202 bs))))
                                                g8201)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8206
                                                        (letrec ((x8207
                                                                  (letrec ((x8208
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8208))))
                                                          (=
                                                           board-width
                                                           x8207))))
                                                g8206)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8209
                                                        (letrec ((x8210
                                                                  (letrec ((x8213
                                                                            (b))
                                                                           (x8211
                                                                            (letrec ((x8212
                                                                                      (block-y
                                                                                       b)))
                                                                              (<=
                                                                               x8212
                                                                               0))))
                                                                    (λ x8213
                                                                      x8211))))
                                                          (ormap x8210 bs))))
                                                g8209)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8214
                                                        (letrec ((x8215
                                                                  (letrec ((x8219
                                                                            (b
                                                                             bs))
                                                                           (x8216
                                                                            (if cnd
                                                                              (letrec ((g8217
                                                                                        bs))
                                                                                g8217)
                                                                              (letrec ((g8218
                                                                                        (cons
                                                                                         b
                                                                                         bs)))
                                                                                g8218))))
                                                                    (λ x8219
                                                                      x8216))))
                                                          (foldr
                                                           x8215
                                                           bs2
                                                           bs1))))
                                                g8214)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8220
                                                        (letrec ((x8221
                                                                  (letrec ((x8224
                                                                            (b
                                                                             n))
                                                                           (x8222
                                                                            (letrec ((x8223
                                                                                      (block-y
                                                                                       b)))
                                                                              (max
                                                                               x8223
                                                                               n))))
                                                                    (λ x8224
                                                                      x8222))))
                                                          (foldr x8221 0 bs))))
                                                g8220)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8225
                                                        (letrec ((x8226
                                                                  (letrec ((x8229
                                                                            (b
                                                                             n))
                                                                           (x8227
                                                                            (letrec ((x8228
                                                                                      (block-x
                                                                                       b)))
                                                                              (min
                                                                               x8228
                                                                               n))))
                                                                    (λ x8229
                                                                      x8227))))
                                                          (foldr
                                                           x8226
                                                           board-width
                                                           bs))))
                                                g8225)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8230
                                                        (letrec ((x8231
                                                                  (letrec ((x8234
                                                                            (b
                                                                             n))
                                                                           (x8232
                                                                            (letrec ((x8233
                                                                                      (block-x
                                                                                       b)))
                                                                              (max
                                                                               x8233
                                                                               n))))
                                                                    (λ x8234
                                                                      x8232))))
                                                          (foldr x8231 0 bs))))
                                                g8230)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8235
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8235)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8236
                                                        (if cnd
                                                          (letrec ((g8237
                                                                    empty))
                                                            g8237)
                                                          (if cnd
                                                            (letrec ((g8238
                                                                      (letrec ((x8240
                                                                                (sub1
                                                                                 i))
                                                                               (x8239
                                                                                (add1
                                                                                 offset)))
                                                                        (elim-row
                                                                         bs
                                                                         x8240
                                                                         x8239))))
                                                              g8238)
                                                            (letrec ((g8241
                                                                      (letrec ((x8244
                                                                                (letrec ((x8245
                                                                                          (sub1
                                                                                           i)))
                                                                                  (elim-row
                                                                                   bs
                                                                                   x8245
                                                                                   offset)))
                                                                               (x8242
                                                                                (letrec ((x8243
                                                                                          (blocks-row
                                                                                           bs
                                                                                           i)))
                                                                                  (blocks-move
                                                                                   0
                                                                                   offset
                                                                                   x8243))))
                                                                        (blocks-union
                                                                         x8244
                                                                         x8242))))
                                                              g8241)))))
                                                g8236)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8246
                                                        (letrec ((x8249
                                                                  (letrec ((x8253
                                                                            (letrec ((x8254
                                                                                      (letrec ((x8255
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8255))))
                                                                              (+
                                                                               dx
                                                                               x8254)))
                                                                           (x8250
                                                                            (letrec ((x8251
                                                                                      (letrec ((x8252
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8252))))
                                                                              (+
                                                                               dy
                                                                               x8251))))
                                                                    (posn
                                                                     x8253
                                                                     x8250)))
                                                                 (x8247
                                                                  (letrec ((x8248
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8248))))
                                                          (tetra
                                                           x8249
                                                           x8247))))
                                                g8246)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8256
                                                        (letrec ((x8260
                                                                  (tetra-center
                                                                   t))
                                                                 (x8257
                                                                  (letrec ((x8259
                                                                            (tetra-center
                                                                             t))
                                                                           (x8258
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8259
                                                                     x8258))))
                                                          (tetra
                                                           x8260
                                                           x8257))))
                                                g8256)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8261
                                                        (letrec ((x8265
                                                                  (tetra-center
                                                                   t))
                                                                 (x8262
                                                                  (letrec ((x8264
                                                                            (tetra-center
                                                                             t))
                                                                           (x8263
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8264
                                                                     x8263))))
                                                          (tetra
                                                           x8265
                                                           x8262))))
                                                g8261)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8266
                                                        (letrec ((x8267
                                                                  (letrec ((x8268
                                                                            (letrec ((x8269
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8269
                                                                               bs))))
                                                                    (false?
                                                                     x8268))))
                                                          (false? x8267))))
                                                g8266)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8270
                                                        (letrec ((x8273
                                                                  (tetra-center
                                                                   t))
                                                                 (x8271
                                                                  (letrec ((x8272
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8272
                                                                     c))))
                                                          (tetra
                                                           x8273
                                                           x8271))))
                                                g8270)))
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
                                              (letrec ((g8274
                                                        (letrec ((x8275
                                                                  (letrec ((x8281
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8276
                                                                            (letrec ((x8280
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8279
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8278
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8277
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8280
                                                                               x8279
                                                                               x8278
                                                                               x8277))))
                                                                    (tetra
                                                                     x8281
                                                                     x8276))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8275))))
                                                g8274)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8282
                                                        (letrec ((x8288
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8283
                                                                  (letrec ((x8284
                                                                            (letrec ((x8286
                                                                                      (letrec ((x8287
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8287)))
                                                                                     (x8285
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8286
                                                                               x8285))))
                                                                    (eliminate-full-rows
                                                                     x8284))))
                                                          (world
                                                           x8288
                                                           x8283))))
                                                g8282)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8289
                                                        (if cnd
                                                          (letrec ((g8290 w))
                                                            g8290)
                                                          (letrec ((g8291
                                                                    (letrec ((x8292
                                                                              (letrec ((x8294
                                                                                        (letrec ((x8295
                                                                                                  (world-tetra
                                                                                                   w)))
                                                                                          (tetra-move
                                                                                           0
                                                                                           1
                                                                                           x8295)))
                                                                                       (x8293
                                                                                        (world-blocks
                                                                                         w)))
                                                                                (world
                                                                                 x8294
                                                                                 x8293))))
                                                                      (world-jump-down
                                                                       x8292))))
                                                            g8291))))
                                                g8289)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8296
                                                        (letrec ((x8298
                                                                  (letrec ((x8299
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8299)))
                                                                 (x8297
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8298
                                                           x8297))))
                                                g8296)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8300
                                                        (letrec ((x8302
                                                                  (letrec ((x8303
                                                                            (letrec ((x8304
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8304))))
                                                                    (blocks-max-y
                                                                     x8303)))
                                                                 (x8301
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8302 x8301))))
                                                g8300)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8305
                                                        (letrec ((val7160
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8306
                                                                    (if val7160
                                                                      val7160
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8306))))
                                                g8305)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8307
                                                        (if cnd
                                                          (letrec ((g8308
                                                                    (touchdown
                                                                     w
                                                                     tetras)))
                                                            g8308)
                                                          (letrec ((g8309
                                                                    (letrec ((x8311
                                                                              (letrec ((x8312
                                                                                        (world-tetra
                                                                                         w)))
                                                                                (tetra-move
                                                                                 0
                                                                                 1
                                                                                 x8312)))
                                                                             (x8310
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       x8311
                                                                       x8310))))
                                                            g8309))))
                                                g8307)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8313
                                                        (if cnd
                                                          (letrec ((g8314 w))
                                                            g8314)
                                                          (letrec ((g8315
                                                                    (letrec ((x8316
                                                                              (world-blocks
                                                                               w)))
                                                                      (world
                                                                       new-tetra
                                                                       x8316))))
                                                            g8315))))
                                                g8313)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8317
                                                        (letrec ((x8318
                                                                  (letrec ((x8319
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8319))))
                                                          (try-new-tetra
                                                           w
                                                           x8318))))
                                                g8317)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8320
                                                        (letrec ((x8321
                                                                  (letrec ((x8322
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8322))))
                                                          (try-new-tetra
                                                           w
                                                           x8321))))
                                                g8320)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8323
                                                        (letrec ((x8324
                                                                  (letrec ((x8325
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8325))))
                                                          (try-new-tetra
                                                           w
                                                           x8324))))
                                                g8323)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8326
                                                        (letrec ((x8327
                                                                  (letrec ((x8328
                                                                            (letrec ((x8329
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8329))))
                                                                    (tetra-change-color
                                                                     x8328
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8327))))
                                                g8326)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8330
                                                        (if cnd
                                                          (letrec ((g8331
                                                                    (world-move
                                                                     neg-1
                                                                     0
                                                                     w)))
                                                            g8331)
                                                          (if cnd
                                                            (letrec ((g8332
                                                                      (world-move
                                                                       1
                                                                       0
                                                                       w)))
                                                              g8332)
                                                            (if cnd
                                                              (letrec ((g8333
                                                                        (world-jump-down
                                                                         w)))
                                                                g8333)
                                                              (if cnd
                                                                (letrec ((g8334
                                                                          (world-rotate-ccw
                                                                           w)))
                                                                  g8334)
                                                                (if cnd
                                                                  (letrec ((g8335
                                                                            (world-rotate-cw
                                                                             w)))
                                                                    g8335)
                                                                  (letrec ((g8336
                                                                            w))
                                                                    g8336))))))))
                                                g8330)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8337
                                                        (cons 'image '())))
                                                g8337)))
                                           (image?
                                            (lambda (image7494)
                                              (letrec ((g8338
                                                        (letrec ((x8339
                                                                  (car
                                                                   image7494)))
                                                          (eq? x8339 'image))))
                                                g8338)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8340 (image)))
                                                g8340)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8341 (image)))
                                                g8341)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8342 (image)))
                                                g8342)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8343 (image)))
                                                g8343)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8344 (image)))
                                                g8344)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8345
                                                        (if cnd
                                                          (letrec ((g8346
                                                                    (car xs)))
                                                            g8346)
                                                          (letrec ((g8347
                                                                    (letrec ((x8348
                                                                              (cdr
                                                                               xs)))
                                                                      (list-pick-random
                                                                       x8348))))
                                                            g8347))))
                                                g8345)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8349
                                                        (letrec ((x8353
                                                                  (letrec ((x8354
                                                                            (letrec ((x8358
                                                                                      (letrec ((x8359
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8359)))
                                                                                     (x8355
                                                                                      (letrec ((x8357
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8356
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8357
                                                                                         x8356))))
                                                                              (append
                                                                               x8358
                                                                               x8355))))
                                                                    (blocks->image
                                                                     x8354)))
                                                                 (x8350
                                                                  (letrec ((x8352
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8351
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8352
                                                                     x8351))))
                                                          (place-image
                                                           x8353
                                                           0
                                                           0
                                                           x8350))))
                                                g8349)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8360
                                                        (letrec ((x8366
                                                                  (letrec ((x8370
                                                                            (b
                                                                             img))
                                                                           (x8367
                                                                            (if cnd
                                                                              (letrec ((g8368
                                                                                        (place-block
                                                                                         b
                                                                                         img)))
                                                                                g8368)
                                                                              (letrec ((g8369
                                                                                        img))
                                                                                g8369))))
                                                                    (λ x8370
                                                                      x8367)))
                                                                 (x8361
                                                                  (letrec ((x8364
                                                                            (letrec ((x8365
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8365)))
                                                                           (x8362
                                                                            (letrec ((x8363
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8363))))
                                                                    (empty-scene
                                                                     x8364
                                                                     x8362))))
                                                          (foldr
                                                           x8366
                                                           x8361
                                                           bs))))
                                                g8360)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8371
                                                        (letrec ((x8375
                                                                  (letrec ((x8378
                                                                            (add1
                                                                             block-size))
                                                                           (x8377
                                                                            (add1
                                                                             block-size))
                                                                           (x8376
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8378
                                                                     x8377
                                                                     'solid
                                                                     x8376)))
                                                                 (x8372
                                                                  (letrec ((x8374
                                                                            (add1
                                                                             block-size))
                                                                           (x8373
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8374
                                                                     x8373
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8375
                                                           x8372))))
                                                g8371)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8379
                                                        (letrec ((x8388
                                                                  (block->image
                                                                   b))
                                                                 (x8384
                                                                  (letrec ((x8386
                                                                            (letrec ((x8387
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8387
                                                                               block-size)))
                                                                           (x8385
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8386
                                                                     x8385)))
                                                                 (x8380
                                                                  (letrec ((x8382
                                                                            (letrec ((x8383
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8383
                                                                               block-size)))
                                                                           (x8381
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8382
                                                                     x8381))))
                                                          (place-image
                                                           x8388
                                                           x8384
                                                           x8380
                                                           scene))))
                                                g8379)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8389
                                                        (letrec ((x8390
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8390 null))))
                                                g8389))))
                                    (letrec ((g8391
                                              (letrec ((x8454
                                                        ((lambda (j7257
                                                                  k7258
                                                                  f7259)
                                                           (letrec ((g8455
                                                                     (lambda (g7255
                                                                              g7256)
                                                                       (letrec ((g8456
                                                                                 (letrec ((x8457
                                                                                           (letrec ((x8459
                                                                                                     (POSN/C
                                                                                                      j7257
                                                                                                      k7258
                                                                                                      g7255))
                                                                                                    (x8458
                                                                                                     (POSN/C
                                                                                                      j7257
                                                                                                      k7258
                                                                                                      g7256)))
                                                                                             (f7259
                                                                                              x8459
                                                                                              x8458))))
                                                                                   (boolean?/c
                                                                                    j7257
                                                                                    k7258
                                                                                    x8457))))
                                                                         g8456))))
                                                             g8455))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x8449
                                                        (letrec ((x8450
                                                                  (letrec ((x8453
                                                                            (input))
                                                                           (x8451
                                                                            (letrec ((x8452
                                                                                      (input)))
                                                                              (cons
                                                                               x8452
                                                                               '()))))
                                                                    (cons
                                                                     x8453
                                                                     x8451))))
                                                          (cons 'posn x8450)))
                                                       (x8444
                                                        (letrec ((x8445
                                                                  (letrec ((x8448
                                                                            (input))
                                                                           (x8446
                                                                            (letrec ((x8447
                                                                                      (input)))
                                                                              (cons
                                                                               x8447
                                                                               '()))))
                                                                    (cons
                                                                     x8448
                                                                     x8446))))
                                                          (cons 'posn x8445))))
                                                (x8454 x8449 x8444)))
                                             (g8392
                                              (any/c
                                               'module
                                               'importer
                                               COLOR/C))
                                             (g8393
                                              (any/c 'module 'importer POSN/C))
                                             (g8394
                                              (any/c
                                               'module
                                               'importer
                                               BLOCK/C))
                                             (g8395
                                              (any/c
                                               'module
                                               'importer
                                               TETRA/C))
                                             (g8396
                                              (any/c
                                               'module
                                               'importer
                                               WORLD/C))
                                             (g8397
                                              (any/c 'module 'importer BSET/C))
                                             (g8398
                                              (integer?
                                               'module
                                               'importer
                                               block-size))
                                             (g8399
                                              (integer?
                                               'module
                                               'importer
                                               board-width))
                                             (g8400
                                              (integer?
                                               'module
                                               'importer
                                               board-height))
                                             (g8401
                                              (letrec ((x8472
                                                        ((lambda (j7262
                                                                  k7263
                                                                  f7264)
                                                           (letrec ((g8473
                                                                     (lambda (g7260
                                                                              g7261)
                                                                       (letrec ((g8474
                                                                                 (letrec ((x8475
                                                                                           (letrec ((x8477
                                                                                                     (POSN/C
                                                                                                      j7262
                                                                                                      k7263
                                                                                                      g7260))
                                                                                                    (x8476
                                                                                                     (BLOCK/C
                                                                                                      j7262
                                                                                                      k7263
                                                                                                      g7261)))
                                                                                             (f7264
                                                                                              x8477
                                                                                              x8476))))
                                                                                   (BLOCK/C
                                                                                    j7262
                                                                                    k7263
                                                                                    x8475))))
                                                                         g8474))))
                                                             g8473))
                                                         'module
                                                         'importer
                                                         block-rotate-ccw))
                                                       (x8467
                                                        (letrec ((x8468
                                                                  (letrec ((x8471
                                                                            (input))
                                                                           (x8469
                                                                            (letrec ((x8470
                                                                                      (input)))
                                                                              (cons
                                                                               x8470
                                                                               '()))))
                                                                    (cons
                                                                     x8471
                                                                     x8469))))
                                                          (cons 'posn x8468)))
                                                       (x8460
                                                        (letrec ((x8461
                                                                  (letrec ((x8466
                                                                            (input))
                                                                           (x8462
                                                                            (letrec ((x8465
                                                                                      (input))
                                                                                     (x8463
                                                                                      (letrec ((x8464
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8464
                                                                                         '()))))
                                                                              (cons
                                                                               x8465
                                                                               x8463))))
                                                                    (cons
                                                                     x8466
                                                                     x8462))))
                                                          (cons
                                                           'block
                                                           x8461))))
                                                (x8472 x8467 x8460)))
                                             (g8402
                                              (letrec ((x8490
                                                        ((lambda (j7267
                                                                  k7268
                                                                  f7269)
                                                           (letrec ((g8491
                                                                     (lambda (g7265
                                                                              g7266)
                                                                       (letrec ((g8492
                                                                                 (letrec ((x8493
                                                                                           (letrec ((x8495
                                                                                                     (POSN/C
                                                                                                      j7267
                                                                                                      k7268
                                                                                                      g7265))
                                                                                                    (x8494
                                                                                                     (BLOCK/C
                                                                                                      j7267
                                                                                                      k7268
                                                                                                      g7266)))
                                                                                             (f7269
                                                                                              x8495
                                                                                              x8494))))
                                                                                   (BLOCK/C
                                                                                    j7267
                                                                                    k7268
                                                                                    x8493))))
                                                                         g8492))))
                                                             g8491))
                                                         'module
                                                         'importer
                                                         block-rotate-cw))
                                                       (x8485
                                                        (letrec ((x8486
                                                                  (letrec ((x8489
                                                                            (input))
                                                                           (x8487
                                                                            (letrec ((x8488
                                                                                      (input)))
                                                                              (cons
                                                                               x8488
                                                                               '()))))
                                                                    (cons
                                                                     x8489
                                                                     x8487))))
                                                          (cons 'posn x8486)))
                                                       (x8478
                                                        (letrec ((x8479
                                                                  (letrec ((x8484
                                                                            (input))
                                                                           (x8480
                                                                            (letrec ((x8483
                                                                                      (input))
                                                                                     (x8481
                                                                                      (letrec ((x8482
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8482
                                                                                         '()))))
                                                                              (cons
                                                                               x8483
                                                                               x8481))))
                                                                    (cons
                                                                     x8484
                                                                     x8480))))
                                                          (cons
                                                           'block
                                                           x8479))))
                                                (x8490 x8485 x8478)))
                                             (g8403
                                              (letrec ((x8510
                                                        ((lambda (j7272
                                                                  k7273
                                                                  f7274)
                                                           (letrec ((g8511
                                                                     (lambda (g7270
                                                                              g7271)
                                                                       (letrec ((g8512
                                                                                 (letrec ((x8513
                                                                                           (letrec ((x8515
                                                                                                     (BLOCK/C
                                                                                                      j7272
                                                                                                      k7273
                                                                                                      g7270))
                                                                                                    (x8514
                                                                                                     (BLOCK/C
                                                                                                      j7272
                                                                                                      k7273
                                                                                                      g7271)))
                                                                                             (f7274
                                                                                              x8515
                                                                                              x8514))))
                                                                                   (boolean?/c
                                                                                    j7272
                                                                                    k7273
                                                                                    x8513))))
                                                                         g8512))))
                                                             g8511))
                                                         'module
                                                         'importer
                                                         block=?))
                                                       (x8503
                                                        (letrec ((x8504
                                                                  (letrec ((x8509
                                                                            (input))
                                                                           (x8505
                                                                            (letrec ((x8508
                                                                                      (input))
                                                                                     (x8506
                                                                                      (letrec ((x8507
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8507
                                                                                         '()))))
                                                                              (cons
                                                                               x8508
                                                                               x8506))))
                                                                    (cons
                                                                     x8509
                                                                     x8505))))
                                                          (cons 'block x8504)))
                                                       (x8496
                                                        (letrec ((x8497
                                                                  (letrec ((x8502
                                                                            (input))
                                                                           (x8498
                                                                            (letrec ((x8501
                                                                                      (input))
                                                                                     (x8499
                                                                                      (letrec ((x8500
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8500
                                                                                         '()))))
                                                                              (cons
                                                                               x8501
                                                                               x8499))))
                                                                    (cons
                                                                     x8502
                                                                     x8498))))
                                                          (cons
                                                           'block
                                                           x8497))))
                                                (x8510 x8503 x8496)))
                                             (g8404
                                              (letrec ((x8525
                                                        ((lambda (j7278
                                                                  k7279
                                                                  f7280)
                                                           (letrec ((g8526
                                                                     (lambda (g7275
                                                                              g7276
                                                                              g7277)
                                                                       (letrec ((g8527
                                                                                 (letrec ((x8528
                                                                                           (letrec ((x8531
                                                                                                     (real?/c
                                                                                                      j7278
                                                                                                      k7279
                                                                                                      g7275))
                                                                                                    (x8530
                                                                                                     (real?/c
                                                                                                      j7278
                                                                                                      k7279
                                                                                                      g7276))
                                                                                                    (x8529
                                                                                                     (BLOCK/C
                                                                                                      j7278
                                                                                                      k7279
                                                                                                      g7277)))
                                                                                             (f7280
                                                                                              x8531
                                                                                              x8530
                                                                                              x8529))))
                                                                                   (BLOCK/C
                                                                                    j7278
                                                                                    k7279
                                                                                    x8528))))
                                                                         g8527))))
                                                             g8526))
                                                         'module
                                                         'importer
                                                         block-move))
                                                       (x8524 (input))
                                                       (x8523 (input))
                                                       (x8516
                                                        (letrec ((x8517
                                                                  (letrec ((x8522
                                                                            (input))
                                                                           (x8518
                                                                            (letrec ((x8521
                                                                                      (input))
                                                                                     (x8519
                                                                                      (letrec ((x8520
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8520
                                                                                         '()))))
                                                                              (cons
                                                                               x8521
                                                                               x8519))))
                                                                    (cons
                                                                     x8522
                                                                     x8518))))
                                                          (cons
                                                           'block
                                                           x8517))))
                                                (x8525 x8524 x8523 x8516)))
                                             (g8405
                                              (letrec ((x8540
                                                        ((lambda (j7283
                                                                  k7284
                                                                  f7285)
                                                           (letrec ((g8541
                                                                     (lambda (g7281
                                                                              g7282)
                                                                       (letrec ((g8542
                                                                                 (letrec ((x8543
                                                                                           (letrec ((x8545
                                                                                                     (BSET/C
                                                                                                      j7283
                                                                                                      k7284
                                                                                                      g7281))
                                                                                                    (x8544
                                                                                                     (BLOCK/C
                                                                                                      j7283
                                                                                                      k7284
                                                                                                      g7282)))
                                                                                             (f7285
                                                                                              x8545
                                                                                              x8544))))
                                                                                   (boolean?/c
                                                                                    j7283
                                                                                    k7284
                                                                                    x8543))))
                                                                         g8542))))
                                                             g8541))
                                                         'module
                                                         'importer
                                                         blocks-contains?))
                                                       (x8539 (input))
                                                       (x8532
                                                        (letrec ((x8533
                                                                  (letrec ((x8538
                                                                            (input))
                                                                           (x8534
                                                                            (letrec ((x8537
                                                                                      (input))
                                                                                     (x8535
                                                                                      (letrec ((x8536
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8536
                                                                                         '()))))
                                                                              (cons
                                                                               x8537
                                                                               x8535))))
                                                                    (cons
                                                                     x8538
                                                                     x8534))))
                                                          (cons
                                                           'block
                                                           x8533))))
                                                (x8540 x8539 x8532)))
                                             (g8406
                                              (letrec ((x8548
                                                        ((lambda (j7288
                                                                  k7289
                                                                  f7290)
                                                           (letrec ((g8549
                                                                     (lambda (g7286
                                                                              g7287)
                                                                       (letrec ((g8550
                                                                                 (letrec ((x8551
                                                                                           (letrec ((x8553
                                                                                                     (BSET/C
                                                                                                      j7288
                                                                                                      k7289
                                                                                                      g7286))
                                                                                                    (x8552
                                                                                                     (BSET/C
                                                                                                      j7288
                                                                                                      k7289
                                                                                                      g7287)))
                                                                                             (f7290
                                                                                              x8553
                                                                                              x8552))))
                                                                                   (boolean?/c
                                                                                    j7288
                                                                                    k7289
                                                                                    x8551))))
                                                                         g8550))))
                                                             g8549))
                                                         'module
                                                         'importer
                                                         blocks=?))
                                                       (x8547 (input))
                                                       (x8546 (input)))
                                                (x8548 x8547 x8546)))
                                             (g8407
                                              (letrec ((x8556
                                                        ((lambda (j7293
                                                                  k7294
                                                                  f7295)
                                                           (letrec ((g8557
                                                                     (lambda (g7291
                                                                              g7292)
                                                                       (letrec ((g8558
                                                                                 (letrec ((x8559
                                                                                           (letrec ((x8561
                                                                                                     (BSET/C
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7291))
                                                                                                    (x8560
                                                                                                     (BSET/C
                                                                                                      j7293
                                                                                                      k7294
                                                                                                      g7292)))
                                                                                             (f7295
                                                                                              x8561
                                                                                              x8560))))
                                                                                   (boolean?/c
                                                                                    j7293
                                                                                    k7294
                                                                                    x8559))))
                                                                         g8558))))
                                                             g8557))
                                                         'module
                                                         'importer
                                                         blocks-subset?))
                                                       (x8555 (input))
                                                       (x8554 (input)))
                                                (x8556 x8555 x8554)))
                                             (g8408
                                              (letrec ((x8564
                                                        ((lambda (j7298
                                                                  k7299
                                                                  f7300)
                                                           (letrec ((g8565
                                                                     (lambda (g7296
                                                                              g7297)
                                                                       (letrec ((g8566
                                                                                 (letrec ((x8567
                                                                                           (letrec ((x8569
                                                                                                     (BSET/C
                                                                                                      j7298
                                                                                                      k7299
                                                                                                      g7296))
                                                                                                    (x8568
                                                                                                     (BSET/C
                                                                                                      j7298
                                                                                                      k7299
                                                                                                      g7297)))
                                                                                             (f7300
                                                                                              x8569
                                                                                              x8568))))
                                                                                   (BSET/C
                                                                                    j7298
                                                                                    k7299
                                                                                    x8567))))
                                                                         g8566))))
                                                             g8565))
                                                         'module
                                                         'importer
                                                         blocks-intersect))
                                                       (x8563 (input))
                                                       (x8562 (input)))
                                                (x8564 x8563 x8562)))
                                             (g8409
                                              (letrec ((x8571
                                                        ((lambda (j7302
                                                                  k7303
                                                                  f7304)
                                                           (letrec ((g8572
                                                                     (lambda (g7301)
                                                                       (letrec ((g8573
                                                                                 (letrec ((x8574
                                                                                           (letrec ((x8575
                                                                                                     (BSET/C
                                                                                                      j7302
                                                                                                      k7303
                                                                                                      g7301)))
                                                                                             (f7304
                                                                                              x8575))))
                                                                                   (real?/c
                                                                                    j7302
                                                                                    k7303
                                                                                    x8574))))
                                                                         g8573))))
                                                             g8572))
                                                         'module
                                                         'importer
                                                         blocks-count))
                                                       (x8570 (input)))
                                                (x8571 x8570)))
                                             (g8410
                                              (letrec ((x8577
                                                        ((lambda (j7306
                                                                  k7307
                                                                  f7308)
                                                           (letrec ((g8578
                                                                     (lambda (g7305)
                                                                       (letrec ((g8579
                                                                                 (letrec ((x8580
                                                                                           (letrec ((x8581
                                                                                                     (BSET/C
                                                                                                      j7306
                                                                                                      k7307
                                                                                                      g7305)))
                                                                                             (f7308
                                                                                              x8581))))
                                                                                   (boolean?/c
                                                                                    j7306
                                                                                    k7307
                                                                                    x8580))))
                                                                         g8579))))
                                                             g8578))
                                                         'module
                                                         'importer
                                                         blocks-overflow?))
                                                       (x8576 (input)))
                                                (x8577 x8576)))
                                             (g8411
                                              (letrec ((x8585
                                                        ((lambda (j7312
                                                                  k7313
                                                                  f7314)
                                                           (letrec ((g8586
                                                                     (lambda (g7309
                                                                              g7310
                                                                              g7311)
                                                                       (letrec ((g8587
                                                                                 (letrec ((x8588
                                                                                           (letrec ((x8591
                                                                                                     (real?/c
                                                                                                      j7312
                                                                                                      k7313
                                                                                                      g7309))
                                                                                                    (x8590
                                                                                                     (real?/c
                                                                                                      j7312
                                                                                                      k7313
                                                                                                      g7310))
                                                                                                    (x8589
                                                                                                     (BSET/C
                                                                                                      j7312
                                                                                                      k7313
                                                                                                      g7311)))
                                                                                             (f7314
                                                                                              x8591
                                                                                              x8590
                                                                                              x8589))))
                                                                                   (BSET/C
                                                                                    j7312
                                                                                    k7313
                                                                                    x8588))))
                                                                         g8587))))
                                                             g8586))
                                                         'module
                                                         'importer
                                                         blocks-move))
                                                       (x8584 (input))
                                                       (x8583 (input))
                                                       (x8582 (input)))
                                                (x8585 x8584 x8583 x8582)))
                                             (g8412
                                              (letrec ((x8598
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g8599
                                                                     (lambda (g7315
                                                                              g7316)
                                                                       (letrec ((g8600
                                                                                 (letrec ((x8601
                                                                                           (letrec ((x8603
                                                                                                     (POSN/C
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x8602
                                                                                                     (BSET/C
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x8603
                                                                                              x8602))))
                                                                                   (BSET/C
                                                                                    j7317
                                                                                    k7318
                                                                                    x8601))))
                                                                         g8600))))
                                                             g8599))
                                                         'module
                                                         'importer
                                                         blocks-rotate-cw))
                                                       (x8593
                                                        (letrec ((x8594
                                                                  (letrec ((x8597
                                                                            (input))
                                                                           (x8595
                                                                            (letrec ((x8596
                                                                                      (input)))
                                                                              (cons
                                                                               x8596
                                                                               '()))))
                                                                    (cons
                                                                     x8597
                                                                     x8595))))
                                                          (cons 'posn x8594)))
                                                       (x8592 (input)))
                                                (x8598 x8593 x8592)))
                                             (g8413
                                              (letrec ((x8610
                                                        ((lambda (j7322
                                                                  k7323
                                                                  f7324)
                                                           (letrec ((g8611
                                                                     (lambda (g7320
                                                                              g7321)
                                                                       (letrec ((g8612
                                                                                 (letrec ((x8613
                                                                                           (letrec ((x8615
                                                                                                     (POSN/C
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7320))
                                                                                                    (x8614
                                                                                                     (BSET/C
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7321)))
                                                                                             (f7324
                                                                                              x8615
                                                                                              x8614))))
                                                                                   (BSET/C
                                                                                    j7322
                                                                                    k7323
                                                                                    x8613))))
                                                                         g8612))))
                                                             g8611))
                                                         'module
                                                         'importer
                                                         blocks-rotate-ccw))
                                                       (x8605
                                                        (letrec ((x8606
                                                                  (letrec ((x8609
                                                                            (input))
                                                                           (x8607
                                                                            (letrec ((x8608
                                                                                      (input)))
                                                                              (cons
                                                                               x8608
                                                                               '()))))
                                                                    (cons
                                                                     x8609
                                                                     x8607))))
                                                          (cons 'posn x8606)))
                                                       (x8604 (input)))
                                                (x8610 x8605 x8604)))
                                             (g8414
                                              (letrec ((x8618
                                                        ((lambda (j7327
                                                                  k7328
                                                                  f7329)
                                                           (letrec ((g8619
                                                                     (lambda (g7325
                                                                              g7326)
                                                                       (letrec ((g8620
                                                                                 (letrec ((x8621
                                                                                           (letrec ((x8623
                                                                                                     (BSET/C
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7325))
                                                                                                    (x8622
                                                                                                     (COLOR/C
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7326)))
                                                                                             (f7329
                                                                                              x8623
                                                                                              x8622))))
                                                                                   (BSET/C
                                                                                    j7327
                                                                                    k7328
                                                                                    x8621))))
                                                                         g8620))))
                                                             g8619))
                                                         'module
                                                         'importer
                                                         blocks-change-color))
                                                       (x8617 (input))
                                                       (x8616 (input)))
                                                (x8618 x8617 x8616)))
                                             (g8415
                                              (letrec ((x8626
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g8627
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g8628
                                                                                 (letrec ((x8629
                                                                                           (letrec ((x8631
                                                                                                     (BSET/C
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x8630
                                                                                                     (real?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x8631
                                                                                              x8630))))
                                                                                   (BSET/C
                                                                                    j7332
                                                                                    k7333
                                                                                    x8629))))
                                                                         g8628))))
                                                             g8627))
                                                         'module
                                                         'importer
                                                         blocks-row))
                                                       (x8625 (input))
                                                       (x8624 (input)))
                                                (x8626 x8625 x8624)))
                                             (g8416
                                              (letrec ((x8634
                                                        ((lambda (j7337
                                                                  k7338
                                                                  f7339)
                                                           (letrec ((g8635
                                                                     (lambda (g7335
                                                                              g7336)
                                                                       (letrec ((g8636
                                                                                 (letrec ((x8637
                                                                                           (letrec ((x8639
                                                                                                     (BSET/C
                                                                                                      j7337
                                                                                                      k7338
                                                                                                      g7335))
                                                                                                    (x8638
                                                                                                     (real?/c
                                                                                                      j7337
                                                                                                      k7338
                                                                                                      g7336)))
                                                                                             (f7339
                                                                                              x8639
                                                                                              x8638))))
                                                                                   (boolean?/c
                                                                                    j7337
                                                                                    k7338
                                                                                    x8637))))
                                                                         g8636))))
                                                             g8635))
                                                         'module
                                                         'importer
                                                         full-row?))
                                                       (x8633 (input))
                                                       (x8632 (input)))
                                                (x8634 x8633 x8632)))
                                             (g8417
                                              (letrec ((x8642
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g8643
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g8644
                                                                                 (letrec ((x8645
                                                                                           (letrec ((x8647
                                                                                                     (BSET/C
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x8646
                                                                                                     (BSET/C
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7341)))
                                                                                             (f7344
                                                                                              x8647
                                                                                              x8646))))
                                                                                   (BSET/C
                                                                                    j7342
                                                                                    k7343
                                                                                    x8645))))
                                                                         g8644))))
                                                             g8643))
                                                         'module
                                                         'importer
                                                         blocks-union))
                                                       (x8641 (input))
                                                       (x8640 (input)))
                                                (x8642 x8641 x8640)))
                                             (g8418
                                              (letrec ((x8649
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g8650
                                                                     (lambda (g7345)
                                                                       (letrec ((g8651
                                                                                 (letrec ((x8652
                                                                                           (letrec ((x8653
                                                                                                     (BSET/C
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x8653))))
                                                                                   (real?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x8652))))
                                                                         g8651))))
                                                             g8650))
                                                         'module
                                                         'importer
                                                         blocks-max-x))
                                                       (x8648 (input)))
                                                (x8649 x8648)))
                                             (g8419
                                              (letrec ((x8655
                                                        ((lambda (j7350
                                                                  k7351
                                                                  f7352)
                                                           (letrec ((g8656
                                                                     (lambda (g7349)
                                                                       (letrec ((g8657
                                                                                 (letrec ((x8658
                                                                                           (letrec ((x8659
                                                                                                     (BSET/C
                                                                                                      j7350
                                                                                                      k7351
                                                                                                      g7349)))
                                                                                             (f7352
                                                                                              x8659))))
                                                                                   (real?/c
                                                                                    j7350
                                                                                    k7351
                                                                                    x8658))))
                                                                         g8657))))
                                                             g8656))
                                                         'module
                                                         'importer
                                                         blocks-min-x))
                                                       (x8654 (input)))
                                                (x8655 x8654)))
                                             (g8420
                                              (letrec ((x8661
                                                        ((lambda (j7354
                                                                  k7355
                                                                  f7356)
                                                           (letrec ((g8662
                                                                     (lambda (g7353)
                                                                       (letrec ((g8663
                                                                                 (letrec ((x8664
                                                                                           (letrec ((x8665
                                                                                                     (BSET/C
                                                                                                      j7354
                                                                                                      k7355
                                                                                                      g7353)))
                                                                                             (f7356
                                                                                              x8665))))
                                                                                   (real?/c
                                                                                    j7354
                                                                                    k7355
                                                                                    x8664))))
                                                                         g8663))))
                                                             g8662))
                                                         'module
                                                         'importer
                                                         blocks-max-y))
                                                       (x8660 (input)))
                                                (x8661 x8660)))
                                             (g8421
                                              (letrec ((x8667
                                                        ((lambda (j7358
                                                                  k7359
                                                                  f7360)
                                                           (letrec ((g8668
                                                                     (lambda (g7357)
                                                                       (letrec ((g8669
                                                                                 (letrec ((x8670
                                                                                           (letrec ((x8671
                                                                                                     (BSET/C
                                                                                                      j7358
                                                                                                      k7359
                                                                                                      g7357)))
                                                                                             (f7360
                                                                                              x8671))))
                                                                                   (BSET/C
                                                                                    j7358
                                                                                    k7359
                                                                                    x8670))))
                                                                         g8669))))
                                                             g8668))
                                                         'module
                                                         'importer
                                                         eliminate-full-rows))
                                                       (x8666 (input)))
                                                (x8667 x8666)))
                                             (g8422
                                              (letrec ((x8683
                                                        ((lambda (j7364
                                                                  k7365
                                                                  f7366)
                                                           (letrec ((g8684
                                                                     (lambda (g7361
                                                                              g7362
                                                                              g7363)
                                                                       (letrec ((g8685
                                                                                 (letrec ((x8686
                                                                                           (letrec ((x8689
                                                                                                     (integer?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7361))
                                                                                                    (x8688
                                                                                                     (integer?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7362))
                                                                                                    (x8687
                                                                                                     (TETRA/C
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7363)))
                                                                                             (f7366
                                                                                              x8689
                                                                                              x8688
                                                                                              x8687))))
                                                                                   (TETRA/C
                                                                                    j7364
                                                                                    k7365
                                                                                    x8686))))
                                                                         g8685))))
                                                             g8684))
                                                         'module
                                                         'importer
                                                         tetra-move))
                                                       (x8682 (input))
                                                       (x8681 (input))
                                                       (x8672
                                                        (letrec ((x8673
                                                                  (letrec ((x8676
                                                                            (letrec ((x8677
                                                                                      (letrec ((x8680
                                                                                                (input))
                                                                                               (x8678
                                                                                                (letrec ((x8679
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8679
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8680
                                                                                         x8678))))
                                                                              (cons
                                                                               'posn
                                                                               x8677)))
                                                                           (x8674
                                                                            (letrec ((x8675
                                                                                      (input)))
                                                                              (cons
                                                                               x8675
                                                                               '()))))
                                                                    (cons
                                                                     x8676
                                                                     x8674))))
                                                          (cons
                                                           'tetra
                                                           x8673))))
                                                (x8683 x8682 x8681 x8672)))
                                             (g8423
                                              (letrec ((x8699
                                                        ((lambda (j7368
                                                                  k7369
                                                                  f7370)
                                                           (letrec ((g8700
                                                                     (lambda (g7367)
                                                                       (letrec ((g8701
                                                                                 (letrec ((x8702
                                                                                           (letrec ((x8703
                                                                                                     (TETRA/C
                                                                                                      j7368
                                                                                                      k7369
                                                                                                      g7367)))
                                                                                             (f7370
                                                                                              x8703))))
                                                                                   (TETRA/C
                                                                                    j7368
                                                                                    k7369
                                                                                    x8702))))
                                                                         g8701))))
                                                             g8700))
                                                         'module
                                                         'importer
                                                         tetra-rotate-ccw))
                                                       (x8690
                                                        (letrec ((x8691
                                                                  (letrec ((x8694
                                                                            (letrec ((x8695
                                                                                      (letrec ((x8698
                                                                                                (input))
                                                                                               (x8696
                                                                                                (letrec ((x8697
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8697
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8698
                                                                                         x8696))))
                                                                              (cons
                                                                               'posn
                                                                               x8695)))
                                                                           (x8692
                                                                            (letrec ((x8693
                                                                                      (input)))
                                                                              (cons
                                                                               x8693
                                                                               '()))))
                                                                    (cons
                                                                     x8694
                                                                     x8692))))
                                                          (cons
                                                           'tetra
                                                           x8691))))
                                                (x8699 x8690)))
                                             (g8424
                                              (letrec ((x8713
                                                        ((lambda (j7372
                                                                  k7373
                                                                  f7374)
                                                           (letrec ((g8714
                                                                     (lambda (g7371)
                                                                       (letrec ((g8715
                                                                                 (letrec ((x8716
                                                                                           (letrec ((x8717
                                                                                                     (TETRA/C
                                                                                                      j7372
                                                                                                      k7373
                                                                                                      g7371)))
                                                                                             (f7374
                                                                                              x8717))))
                                                                                   (TETRA/C
                                                                                    j7372
                                                                                    k7373
                                                                                    x8716))))
                                                                         g8715))))
                                                             g8714))
                                                         'module
                                                         'importer
                                                         tetra-rotate-cw))
                                                       (x8704
                                                        (letrec ((x8705
                                                                  (letrec ((x8708
                                                                            (letrec ((x8709
                                                                                      (letrec ((x8712
                                                                                                (input))
                                                                                               (x8710
                                                                                                (letrec ((x8711
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8711
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8712
                                                                                         x8710))))
                                                                              (cons
                                                                               'posn
                                                                               x8709)))
                                                                           (x8706
                                                                            (letrec ((x8707
                                                                                      (input)))
                                                                              (cons
                                                                               x8707
                                                                               '()))))
                                                                    (cons
                                                                     x8708
                                                                     x8706))))
                                                          (cons
                                                           'tetra
                                                           x8705))))
                                                (x8713 x8704)))
                                             (g8425
                                              (letrec ((x8728
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g8729
                                                                     (lambda (g7375
                                                                              g7376)
                                                                       (letrec ((g8730
                                                                                 (letrec ((x8731
                                                                                           (letrec ((x8733
                                                                                                     (TETRA/C
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7375))
                                                                                                    (x8732
                                                                                                     (BSET/C
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x8733
                                                                                              x8732))))
                                                                                   (boolean?/c
                                                                                    j7377
                                                                                    k7378
                                                                                    x8731))))
                                                                         g8730))))
                                                             g8729))
                                                         'module
                                                         'importer
                                                         tetra-overlaps-blocks?))
                                                       (x8719
                                                        (letrec ((x8720
                                                                  (letrec ((x8723
                                                                            (letrec ((x8724
                                                                                      (letrec ((x8727
                                                                                                (input))
                                                                                               (x8725
                                                                                                (letrec ((x8726
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8726
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8727
                                                                                         x8725))))
                                                                              (cons
                                                                               'posn
                                                                               x8724)))
                                                                           (x8721
                                                                            (letrec ((x8722
                                                                                      (input)))
                                                                              (cons
                                                                               x8722
                                                                               '()))))
                                                                    (cons
                                                                     x8723
                                                                     x8721))))
                                                          (cons 'tetra x8720)))
                                                       (x8718 (input)))
                                                (x8728 x8719 x8718)))
                                             (g8426
                                              (letrec ((x8745
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g8746
                                                                     (lambda (g7380
                                                                              g7381
                                                                              g7382
                                                                              g7383
                                                                              g7384
                                                                              g7385
                                                                              g7386
                                                                              g7387
                                                                              g7388
                                                                              g7389
                                                                              g7390)
                                                                       (letrec ((g8747
                                                                                 (letrec ((x8748
                                                                                           (letrec ((x8759
                                                                                                     (COLOR/C
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7380))
                                                                                                    (x8758
                                                                                                     (real?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7381))
                                                                                                    (x8757
                                                                                                     (real?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7382))
                                                                                                    (x8756
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7383))
                                                                                                    (x8755
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7384))
                                                                                                    (x8754
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7385))
                                                                                                    (x8753
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7386))
                                                                                                    (x8752
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7387))
                                                                                                    (x8751
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7388))
                                                                                                    (x8750
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7389))
                                                                                                    (x8749
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x8759
                                                                                              x8758
                                                                                              x8757
                                                                                              x8756
                                                                                              x8755
                                                                                              x8754
                                                                                              x8753
                                                                                              x8752
                                                                                              x8751
                                                                                              x8750
                                                                                              x8749))))
                                                                                   (TETRA/C
                                                                                    j7391
                                                                                    k7392
                                                                                    x8748))))
                                                                         g8747))))
                                                             g8746))
                                                         'module
                                                         'importer
                                                         build-tetra-blocks))
                                                       (x8744 (input))
                                                       (x8743 (input))
                                                       (x8742 (input))
                                                       (x8741 (input))
                                                       (x8740 (input))
                                                       (x8739 (input))
                                                       (x8738 (input))
                                                       (x8737 (input))
                                                       (x8736 (input))
                                                       (x8735 (input))
                                                       (x8734 (input)))
                                                (x8745
                                                 x8744
                                                 x8743
                                                 x8742
                                                 x8741
                                                 x8740
                                                 x8739
                                                 x8738
                                                 x8737
                                                 x8736
                                                 x8735
                                                 x8734)))
                                             (g8427
                                              (letrec ((x8770
                                                        ((lambda (j7396
                                                                  k7397
                                                                  f7398)
                                                           (letrec ((g8771
                                                                     (lambda (g7394
                                                                              g7395)
                                                                       (letrec ((g8772
                                                                                 (letrec ((x8773
                                                                                           (letrec ((x8775
                                                                                                     (TETRA/C
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7394))
                                                                                                    (x8774
                                                                                                     (COLOR/C
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7395)))
                                                                                             (f7398
                                                                                              x8775
                                                                                              x8774))))
                                                                                   (TETRA/C
                                                                                    j7396
                                                                                    k7397
                                                                                    x8773))))
                                                                         g8772))))
                                                             g8771))
                                                         'module
                                                         'importer
                                                         tetra-change-color))
                                                       (x8761
                                                        (letrec ((x8762
                                                                  (letrec ((x8765
                                                                            (letrec ((x8766
                                                                                      (letrec ((x8769
                                                                                                (input))
                                                                                               (x8767
                                                                                                (letrec ((x8768
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8768
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8769
                                                                                         x8767))))
                                                                              (cons
                                                                               'posn
                                                                               x8766)))
                                                                           (x8763
                                                                            (letrec ((x8764
                                                                                      (input)))
                                                                              (cons
                                                                               x8764
                                                                               '()))))
                                                                    (cons
                                                                     x8765
                                                                     x8763))))
                                                          (cons 'tetra x8762)))
                                                       (x8760 (input)))
                                                (x8770 x8761 x8760)))
                                             (g8428
                                              (letrec ((x8790
                                                        ((lambda (j7401
                                                                  k7402
                                                                  f7403)
                                                           (letrec ((g8791
                                                                     (lambda (g7399
                                                                              g7400)
                                                                       (letrec ((g8792
                                                                                 (letrec ((x8793
                                                                                           (letrec ((x8795
                                                                                                     (WORLD/C
                                                                                                      j7401
                                                                                                      k7402
                                                                                                      g7399))
                                                                                                    (x8794
                                                                                                     (string?/c
                                                                                                      j7401
                                                                                                      k7402
                                                                                                      g7400)))
                                                                                             (f7403
                                                                                              x8795
                                                                                              x8794))))
                                                                                   (WORLD/C
                                                                                    j7401
                                                                                    k7402
                                                                                    x8793))))
                                                                         g8792))))
                                                             g8791))
                                                         'module
                                                         'importer
                                                         world-key-move))
                                                       (x8777
                                                        (letrec ((x8778
                                                                  (letrec ((x8781
                                                                            (letrec ((x8782
                                                                                      (letrec ((x8785
                                                                                                (letrec ((x8786
                                                                                                          (letrec ((x8789
                                                                                                                    (input))
                                                                                                                   (x8787
                                                                                                                    (letrec ((x8788
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8788
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8789
                                                                                                             x8787))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8786)))
                                                                                               (x8783
                                                                                                (letrec ((x8784
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8784
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8785
                                                                                         x8783))))
                                                                              (cons
                                                                               'tetra
                                                                               x8782)))
                                                                           (x8779
                                                                            (letrec ((x8780
                                                                                      (input)))
                                                                              (cons
                                                                               x8780
                                                                               '()))))
                                                                    (cons
                                                                     x8781
                                                                     x8779))))
                                                          (cons 'world x8778)))
                                                       (x8776 (input)))
                                                (x8790 x8777 x8776)))
                                             (g8429
                                              (letrec ((x8810
                                                        ((lambda (j7406
                                                                  k7407
                                                                  f7408)
                                                           (letrec ((g8811
                                                                     (lambda (g7404
                                                                              g7405)
                                                                       (letrec ((g8812
                                                                                 (letrec ((x8813
                                                                                           (letrec ((x8817
                                                                                                     (WORLD/C
                                                                                                      j7406
                                                                                                      k7407
                                                                                                      g7404))
                                                                                                    (x8814
                                                                                                     (letrec ((x8815
                                                                                                               (letrec ((x8816
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8816))))
                                                                                                       (x8815
                                                                                                        j7406
                                                                                                        k7407
                                                                                                        g7405))))
                                                                                             (f7408
                                                                                              x8817
                                                                                              x8814))))
                                                                                   (WORLD/C
                                                                                    j7406
                                                                                    k7407
                                                                                    x8813))))
                                                                         g8812))))
                                                             g8811))
                                                         'module
                                                         'importer
                                                         next-world))
                                                       (x8797
                                                        (letrec ((x8798
                                                                  (letrec ((x8801
                                                                            (letrec ((x8802
                                                                                      (letrec ((x8805
                                                                                                (letrec ((x8806
                                                                                                          (letrec ((x8809
                                                                                                                    (input))
                                                                                                                   (x8807
                                                                                                                    (letrec ((x8808
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8808
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8809
                                                                                                             x8807))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8806)))
                                                                                               (x8803
                                                                                                (letrec ((x8804
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8804
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8805
                                                                                         x8803))))
                                                                              (cons
                                                                               'tetra
                                                                               x8802)))
                                                                           (x8799
                                                                            (letrec ((x8800
                                                                                      (input)))
                                                                              (cons
                                                                               x8800
                                                                               '()))))
                                                                    (cons
                                                                     x8801
                                                                     x8799))))
                                                          (cons 'world x8798)))
                                                       (x8796 (input)))
                                                (x8810 x8797 x8796)))
                                             (g8430
                                              (letrec ((x8831
                                                        ((lambda (j7410
                                                                  k7411
                                                                  f7412)
                                                           (letrec ((g8832
                                                                     (lambda (g7409)
                                                                       (letrec ((g8833
                                                                                 (letrec ((x8834
                                                                                           (letrec ((x8835
                                                                                                     (WORLD/C
                                                                                                      j7410
                                                                                                      k7411
                                                                                                      g7409)))
                                                                                             (f7412
                                                                                              x8835))))
                                                                                   (BSET/C
                                                                                    j7410
                                                                                    k7411
                                                                                    x8834))))
                                                                         g8833))))
                                                             g8832))
                                                         'module
                                                         'importer
                                                         ghost-blocks))
                                                       (x8818
                                                        (letrec ((x8819
                                                                  (letrec ((x8822
                                                                            (letrec ((x8823
                                                                                      (letrec ((x8826
                                                                                                (letrec ((x8827
                                                                                                          (letrec ((x8830
                                                                                                                    (input))
                                                                                                                   (x8828
                                                                                                                    (letrec ((x8829
                                                                                                                              (input)))
                                                                                                                      (cons
                                                                                                                       x8829
                                                                                                                       '()))))
                                                                                                            (cons
                                                                                                             x8830
                                                                                                             x8828))))
                                                                                                  (cons
                                                                                                   'posn
                                                                                                   x8827)))
                                                                                               (x8824
                                                                                                (letrec ((x8825
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x8825
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x8826
                                                                                         x8824))))
                                                                              (cons
                                                                               'tetra
                                                                               x8823)))
                                                                           (x8820
                                                                            (letrec ((x8821
                                                                                      (input)))
                                                                              (cons
                                                                               x8821
                                                                               '()))))
                                                                    (cons
                                                                     x8822
                                                                     x8820))))
                                                          (cons
                                                           'world
                                                           x8819))))
                                                (x8831 x8818)))
                                             (g8431
                                              (letrec ((x8837
                                                        ((lambda (j7414
                                                                  k7415
                                                                  f7416)
                                                           (letrec ((g8838
                                                                     (lambda (g7413)
                                                                       (letrec ((g8839
                                                                                 (letrec ((x8840
                                                                                           (letrec ((x8841
                                                                                                     (any/c
                                                                                                      j7414
                                                                                                      k7415
                                                                                                      g7413)))
                                                                                             (f7416
                                                                                              x8841))))
                                                                                   (boolean?/c
                                                                                    j7414
                                                                                    k7415
                                                                                    x8840))))
                                                                         g8839))))
                                                             g8838))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8836 (input)))
                                                (x8837 x8836)))
                                             (g8432
                                              (letrec ((x8844
                                                        ((lambda (j7419
                                                                  k7420
                                                                  f7421)
                                                           (letrec ((g8845
                                                                     (lambda (g7417
                                                                              g7418)
                                                                       (letrec ((g8846
                                                                                 (letrec ((x8847
                                                                                           (letrec ((x8849
                                                                                                     (image?
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7417))
                                                                                                    (x8848
                                                                                                     (image?
                                                                                                      j7419
                                                                                                      k7420
                                                                                                      g7418)))
                                                                                             (f7421
                                                                                              x8849
                                                                                              x8848))))
                                                                                   (image?
                                                                                    j7419
                                                                                    k7420
                                                                                    x8847))))
                                                                         g8846))))
                                                             g8845))
                                                         'module
                                                         'importer
                                                         overlay))
                                                       (x8843 (input))
                                                       (x8842 (input)))
                                                (x8844 x8843 x8842)))
                                             (g8433
                                              (letrec ((x8853
                                                        ((lambda (j7425
                                                                  k7426
                                                                  f7427)
                                                           (letrec ((g8854
                                                                     (lambda (g7422
                                                                              g7423
                                                                              g7424)
                                                                       (letrec ((g8855
                                                                                 (letrec ((x8856
                                                                                           (letrec ((x8859
                                                                                                     (real?/c
                                                                                                      j7425
                                                                                                      k7426
                                                                                                      g7422))
                                                                                                    (x8858
                                                                                                     (real?/c
                                                                                                      j7425
                                                                                                      k7426
                                                                                                      g7423))
                                                                                                    (x8857
                                                                                                     (string?/c
                                                                                                      j7425
                                                                                                      k7426
                                                                                                      g7424)))
                                                                                             (f7427
                                                                                              x8859
                                                                                              x8858
                                                                                              x8857))))
                                                                                   (image?
                                                                                    j7425
                                                                                    k7426
                                                                                    x8856))))
                                                                         g8855))))
                                                             g8854))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8852 (input))
                                                       (x8851 (input))
                                                       (x8850 (input)))
                                                (x8853 x8852 x8851 x8850)))
                                             (g8434
                                              (letrec ((x8864
                                                        ((lambda (j7432
                                                                  k7433
                                                                  f7434)
                                                           (letrec ((g8865
                                                                     (lambda (g7428
                                                                              g7429
                                                                              g7430
                                                                              g7431)
                                                                       (letrec ((g8866
                                                                                 (letrec ((x8867
                                                                                           (letrec ((x8871
                                                                                                     (real?/c
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7428))
                                                                                                    (x8870
                                                                                                     (real?/c
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7429))
                                                                                                    (x8869
                                                                                                     (COLOR/C
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7430))
                                                                                                    (x8868
                                                                                                     (COLOR/C
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7431)))
                                                                                             (f7434
                                                                                              x8871
                                                                                              x8870
                                                                                              x8869
                                                                                              x8868))))
                                                                                   (image?
                                                                                    j7432
                                                                                    k7433
                                                                                    x8867))))
                                                                         g8866))))
                                                             g8865))
                                                         'module
                                                         'importer
                                                         rectangle))
                                                       (x8863 (input))
                                                       (x8862 (input))
                                                       (x8861 (input))
                                                       (x8860 (input)))
                                                (x8864
                                                 x8863
                                                 x8862
                                                 x8861
                                                 x8860)))
                                             (g8435
                                              (letrec ((x8876
                                                        ((lambda (j7439
                                                                  k7440
                                                                  f7441)
                                                           (letrec ((g8877
                                                                     (lambda (g7435
                                                                              g7436
                                                                              g7437
                                                                              g7438)
                                                                       (letrec ((g8878
                                                                                 (letrec ((x8879
                                                                                           (letrec ((x8883
                                                                                                     (image/c
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7435))
                                                                                                    (x8882
                                                                                                     (real?/c
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7436))
                                                                                                    (x8881
                                                                                                     (real?/c
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7437))
                                                                                                    (x8880
                                                                                                     (image/c
                                                                                                      j7439
                                                                                                      k7440
                                                                                                      g7438)))
                                                                                             (f7441
                                                                                              x8883
                                                                                              x8882
                                                                                              x8881
                                                                                              x8880))))
                                                                                   (image/c
                                                                                    j7439
                                                                                    k7440
                                                                                    x8879))))
                                                                         g8878))))
                                                             g8877))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8875 (input))
                                                       (x8874 (input))
                                                       (x8873 (input))
                                                       (x8872 (input)))
                                                (x8876
                                                 x8875
                                                 x8874
                                                 x8873
                                                 x8872)))
                                             (g8436
                                              (letrec ((x8886
                                                        ((lambda (j7444
                                                                  k7445
                                                                  f7446)
                                                           (letrec ((g8887
                                                                     (lambda (g7442
                                                                              g7443)
                                                                       (letrec ((g8888
                                                                                 (letrec ((x8889
                                                                                           (letrec ((x8891
                                                                                                     (real?/c
                                                                                                      j7444
                                                                                                      k7445
                                                                                                      g7442))
                                                                                                    (x8890
                                                                                                     (real?/c
                                                                                                      j7444
                                                                                                      k7445
                                                                                                      g7443)))
                                                                                             (f7446
                                                                                              x8891
                                                                                              x8890))))
                                                                                   (image?
                                                                                    j7444
                                                                                    k7445
                                                                                    x8889))))
                                                                         g8888))))
                                                             g8887))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8885 (input))
                                                       (x8884 (input)))
                                                (x8886 x8885 x8884)))
                                             (g8437
                                              (letrec ((x8893
                                                        ((lambda (j7448
                                                                  k7449
                                                                  f7450)
                                                           (letrec ((g8894
                                                                     (lambda (g7447)
                                                                       (letrec ((g8895
                                                                                 (letrec ((x8896
                                                                                           (letrec ((x8897
                                                                                                     (letrec ((x8898
                                                                                                               (letrec ((x8899
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8899))))
                                                                                                       (x8898
                                                                                                        j7448
                                                                                                        k7449
                                                                                                        g7447))))
                                                                                             (f7450
                                                                                              x8897))))
                                                                                   (TETRA/C
                                                                                    j7448
                                                                                    k7449
                                                                                    x8896))))
                                                                         g8895))))
                                                             g8894))
                                                         'module
                                                         'importer
                                                         list-pick-random))
                                                       (x8892 (input)))
                                                (x8893 x8892)))
                                             (g8438
                                              (integer?/c
                                               'module
                                               'importer
                                               neg-1))
                                             (g8439
                                              (letrec ((x8913
                                                        ((lambda (j7452
                                                                  k7453
                                                                  f7454)
                                                           (letrec ((g8914
                                                                     (lambda (g7451)
                                                                       (letrec ((g8915
                                                                                 (letrec ((x8916
                                                                                           (letrec ((x8917
                                                                                                     (WORLD/C
                                                                                                      j7452
                                                                                                      k7453
                                                                                                      g7451)))
                                                                                             (f7454
                                                                                              x8917))))
                                                                                   (image/c
                                                                                    j7452
                                                                                    k7453
                                                                                    x8916))))
                                                                         g8915))))
                                                             g8914))
                                                         'module
                                                         'importer
                                                         world->image))
                                                       (x8900
                                                        (letrec ((x8901
                                                                  (letrec ((x8904
                                                                            (letrec ((x8905
                                                                                      (letrec ((x8908
                                                                                                (letrec ((x8909
                                                                                                          (letrec ((x8912
                                                                                                                    (input))
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
                                                                                                   'posn
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
                                                                              (cons
                                                                               'tetra
                                                                               x8905)))
                                                                           (x8902
                                                                            (letrec ((x8903
                                                                                      (input)))
                                                                              (cons
                                                                               x8903
                                                                               '()))))
                                                                    (cons
                                                                     x8904
                                                                     x8902))))
                                                          (cons
                                                           'world
                                                           x8901))))
                                                (x8913 x8900)))
                                             (g8440
                                              (letrec ((x8919
                                                        ((lambda (j7456
                                                                  k7457
                                                                  f7458)
                                                           (letrec ((g8920
                                                                     (lambda (g7455)
                                                                       (letrec ((g8921
                                                                                 (letrec ((x8922
                                                                                           (letrec ((x8923
                                                                                                     (BSET/C
                                                                                                      j7456
                                                                                                      k7457
                                                                                                      g7455)))
                                                                                             (f7458
                                                                                              x8923))))
                                                                                   (image/c
                                                                                    j7456
                                                                                    k7457
                                                                                    x8922))))
                                                                         g8921))))
                                                             g8920))
                                                         'module
                                                         'importer
                                                         blocks->image))
                                                       (x8918 (input)))
                                                (x8919 x8918)))
                                             (g8441
                                              (letrec ((x8931
                                                        ((lambda (j7460
                                                                  k7461
                                                                  f7462)
                                                           (letrec ((g8932
                                                                     (lambda (g7459)
                                                                       (letrec ((g8933
                                                                                 (letrec ((x8934
                                                                                           (letrec ((x8935
                                                                                                     (BLOCK/C
                                                                                                      j7460
                                                                                                      k7461
                                                                                                      g7459)))
                                                                                             (f7462
                                                                                              x8935))))
                                                                                   (image/c
                                                                                    j7460
                                                                                    k7461
                                                                                    x8934))))
                                                                         g8933))))
                                                             g8932))
                                                         'module
                                                         'importer
                                                         block->image))
                                                       (x8924
                                                        (letrec ((x8925
                                                                  (letrec ((x8930
                                                                            (input))
                                                                           (x8926
                                                                            (letrec ((x8929
                                                                                      (input))
                                                                                     (x8927
                                                                                      (letrec ((x8928
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8928
                                                                                         '()))))
                                                                              (cons
                                                                               x8929
                                                                               x8927))))
                                                                    (cons
                                                                     x8930
                                                                     x8926))))
                                                          (cons
                                                           'block
                                                           x8925))))
                                                (x8931 x8924)))
                                             (g8442
                                              (letrec ((x8944
                                                        ((lambda (j7465
                                                                  k7466
                                                                  f7467)
                                                           (letrec ((g8945
                                                                     (lambda (g7463
                                                                              g7464)
                                                                       (letrec ((g8946
                                                                                 (letrec ((x8947
                                                                                           (letrec ((x8949
                                                                                                     (BLOCK/C
                                                                                                      j7465
                                                                                                      k7466
                                                                                                      g7463))
                                                                                                    (x8948
                                                                                                     (image/c
                                                                                                      j7465
                                                                                                      k7466
                                                                                                      g7464)))
                                                                                             (f7467
                                                                                              x8949
                                                                                              x8948))))
                                                                                   (image/c
                                                                                    j7465
                                                                                    k7466
                                                                                    x8947))))
                                                                         g8946))))
                                                             g8945))
                                                         'module
                                                         'importer
                                                         place-block))
                                                       (x8937
                                                        (letrec ((x8938
                                                                  (letrec ((x8943
                                                                            (input))
                                                                           (x8939
                                                                            (letrec ((x8942
                                                                                      (input))
                                                                                     (x8940
                                                                                      (letrec ((x8941
                                                                                                (input)))
                                                                                        (cons
                                                                                         x8941
                                                                                         '()))))
                                                                              (cons
                                                                               x8942
                                                                               x8940))))
                                                                    (cons
                                                                     x8943
                                                                     x8939))))
                                                          (cons 'block x8938)))
                                                       (x8936 (input)))
                                                (x8944 x8937 x8936)))
                                             (g8443
                                              (letrec ((x8951
                                                        ((lambda (j7469
                                                                  k7470
                                                                  f7471)
                                                           (letrec ((g8952
                                                                     (lambda (g7468)
                                                                       (letrec ((g8953
                                                                                 (letrec ((x8954
                                                                                           (letrec ((x8955
                                                                                                     (letrec ((x8956
                                                                                                               (letrec ((x8957
                                                                                                                         (listof
                                                                                                                          TETRA/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x8957))))
                                                                                                       (x8956
                                                                                                        j7469
                                                                                                        k7470
                                                                                                        g7468))))
                                                                                             (f7471
                                                                                              x8955))))
                                                                                   (WORLD/C
                                                                                    j7469
                                                                                    k7470
                                                                                    x8954))))
                                                                         g8953))))
                                                             g8952))
                                                         'module
                                                         'importer
                                                         world0))
                                                       (x8950 (input)))
                                                (x8951 x8950))))
                                      g8443))))
                          g7508))))
              g7506)))
    g7505))
