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
                      (letrec ((real/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7507
                                            (letrec ((x-cnd7508 (real? g7163)))
                                              (if x-cnd7508
                                                g7163
                                                (blame g7161 'real?)))))
                                    g7507)))
                               (boolean?/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7509
                                            (letrec ((x-cnd7510
                                                      (boolean? g7166)))
                                              (if x-cnd7510
                                                g7166
                                                (blame g7164 'boolean?)))))
                                    g7509)))
                               (number?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7511
                                            (letrec ((x-cnd7512
                                                      (number? g7169)))
                                              (if x-cnd7512
                                                g7169
                                                (blame g7167 'number?)))))
                                    g7511)))
                               (any/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7513
                                            (letrec ((x-cnd7514
                                                      ((lambda (v) #t) g7172)))
                                              (if x-cnd7514
                                                g7172
                                                (blame
                                                 g7170
                                                 '(lambda (v) #t))))))
                                    g7513)))
                               (any?/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7515
                                            (letrec ((x-cnd7516
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7516
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7515)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7517
                                            (letrec ((x-cnd7518 (pair? g7178)))
                                              (if x-cnd7518
                                                g7178
                                                (blame g7176 'pair?)))))
                                    g7517)))
                               (pair?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7519
                                            (letrec ((x-cnd7520 (pair? g7181)))
                                              (if x-cnd7520
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7519)))
                               (integer?
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7521
                                            (letrec ((x-cnd7522
                                                      (integer? g7184)))
                                              (if x-cnd7522
                                                g7184
                                                (blame g7182 'integer?)))))
                                    g7521)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7523
                                            (lambda (k j v)
                                              (letrec ((g7524
                                                        (letrec ((x-cnd7525
                                                                  (c1 k j v)))
                                                          (if x-cnd7525
                                                            (c2 k j v)
                                                            #f))))
                                                g7524))))
                                    g7523)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7526
                                            (lambda (k j v)
                                              (letrec ((g7527
                                                        (letrec ((x-cnd7528
                                                                  (null? v)))
                                                          (if x-cnd7528
                                                            '()
                                                            (letrec ((x7532
                                                                      (letrec ((x7533
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7533)))
                                                                     (x7529
                                                                      (letrec ((x7531
                                                                                (list-of
                                                                                 contract))
                                                                               (x7530
                                                                                (cdr
                                                                                 v)))
                                                                        (x7531
                                                                         k
                                                                         j
                                                                         x7530))))
                                                              (cons
                                                               x7532
                                                               x7529))))))
                                                g7527))))
                                    g7526)))
                               (any? (lambda (v) (letrec ((g7534 #t)) g7534)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7535
                                            (letrec ((x7536 (= v 0)))
                                              (not x7536))))
                                    g7535)))
                               (nonzero?/c
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7537
                                            (letrec ((x-cnd7538
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7187)))
                                              (if x-cnd7538
                                                g7187
                                                (blame
                                                 g7185
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7537)))
                               (meta (lambda (v) (letrec ((g7539 v)) g7539)))
                               (orig-+ +)
                               (+
                                ((lambda (j7190 k7191 f7192)
                                   (lambda (g7188 g7189)
                                     (number?/c
                                      j7190
                                      k7191
                                      (f7192
                                       (number?/c j7190 k7191 g7188)
                                       (number?/c j7190 k7191 g7189)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7193 g7194)
                                     (number?/c
                                      j7195
                                      k7196
                                      (f7197
                                       (number?/c j7195 k7196 g7193)
                                       (number?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7200 k7201 f7202)
                                   (lambda (g7198 g7199)
                                     (number?/c
                                      j7200
                                      k7201
                                      (f7202
                                       (number?/c j7200 k7201 g7198)
                                       (number?/c j7200 k7201 g7199)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7205 k7206 f7207)
                                   (lambda (g7203 g7204)
                                     (number?/c
                                      j7205
                                      k7206
                                      (f7207
                                       (number?/c j7205 k7206 g7203)
                                       (number?/c j7205 k7206 g7204)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7209 k7210 f7211)
                                   (lambda (g7208)
                                     (any/c
                                      j7209
                                      k7210
                                      (f7211 (pair?/c j7209 k7210 g7208)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7213 k7214 f7215)
                                   (lambda (g7212)
                                     (any/c
                                      j7213
                                      k7214
                                      (f7215 (pair?/c j7213 k7214 g7212)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7218 k7219 f7220)
                                   (lambda (g7216 g7217)
                                     (pair?/c
                                      j7218
                                      k7219
                                      (f7220
                                       (any/c j7218 k7219 g7216)
                                       (any/c j7218 k7219 g7217)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7222 k7223 f7224)
                                   (lambda (g7221)
                                     (integer?/c
                                      j7222
                                      k7223
                                      (f7224 (vector?/c j7222 k7223 g7221)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7227 k7228 f7229)
                                   (lambda (g7225 g7226)
                                     (any/c
                                      j7227
                                      k7228
                                      (f7229
                                       (vector?/c j7227 k7228 g7225)
                                       (integer?/c j7227 k7228 g7226)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7540 #t)) g7540)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7541
                                            (letrec ((x7542
                                                      (letrec ((x7543 (cdr x)))
                                                        (cdr x7543))))
                                              (cdr x7542))))
                                    g7541)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7544
                                            (letrec ((x7547 (procedure? f)))
                                              (assert x7547)))
                                           (g7545
                                            (letrec ((x7548 (list? l)))
                                              (assert x7548)))
                                           (g7546
                                            (letrec ((x-cnd7549 (null? l)))
                                              (if x-cnd7549
                                                '()
                                                (letrec ((x7552
                                                          (letrec ((x7553
                                                                    (car l)))
                                                            (f x7553)))
                                                         (x7550
                                                          (letrec ((x7551
                                                                    (cdr l)))
                                                            (map f x7551))))
                                                  (cons x7552 x7550))))))
                                    g7546)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7554
                                            (letrec ((x7555 (car x)))
                                              (cdr x7555))))
                                    g7554)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7556
                                            (letrec ((x7557
                                                      (letrec ((x7558
                                                                (letrec ((x7559
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7559))))
                                                        (cdr x7558))))
                                              (car x7557))))
                                    g7556)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7560
                                            (letrec ((x7561
                                                      (letrec ((x7562
                                                                (letrec ((x7563
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7563))))
                                                        (car x7562))))
                                              (cdr x7561))))
                                    g7560)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7564
                                            (letrec ((x7567
                                                      (string? filename)))
                                              (assert x7567)))
                                           (g7565
                                            (letrec ((x7568 (procedure? proc)))
                                              (assert x7568)))
                                           (g7566
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7569
                                                        (close-output-port
                                                         output-port))
                                                       (g7570 res))
                                                g7570))))
                                    g7566)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7571
                                            (letrec ((x7572
                                                      (letrec ((x7573 (cdr x)))
                                                        (cdr x7573))))
                                              (car x7572))))
                                    g7571)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7574
                                            (letrec ((x7575
                                                      (letrec ((x7576
                                                                (letrec ((x7577
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7577))))
                                                        (car x7576))))
                                              (cdr x7575))))
                                    g7574)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7578
                                            (letrec ((x7580 (list? l)))
                                              (assert x7580)))
                                           (g7579
                                            (letrec ((x-cnd7581 (null? l)))
                                              (if x-cnd7581
                                                #f
                                                (letrec ((x-cnd7582
                                                          (letrec ((x7583
                                                                    (caar l)))
                                                            (eq? x7583 k))))
                                                  (if x-cnd7582
                                                    (car l)
                                                    (letrec ((x7584 (cdr l)))
                                                      (assq k x7584))))))))
                                    g7579)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7585
                                            (letrec ((x7586 (modulo x 2)))
                                              (= 0 x7586))))
                                    g7585)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7587
                                            (letrec ((x7589 (list? l)))
                                              (assert x7589)))
                                           (g7588
                                            (letrec ((x-cnd7590 (null? l)))
                                              (if x-cnd7590
                                                ""
                                                (letrec ((x7593
                                                          (letrec ((x7594
                                                                    (car l)))
                                                            (char->string
                                                             x7594)))
                                                         (x7591
                                                          (letrec ((x7592
                                                                    (cdr l)))
                                                            (list->string
                                                             x7592))))
                                                  (string-append
                                                   x7593
                                                   x7591))))))
                                    g7588)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7595
                                            (letrec ((x7598 (char? c1)))
                                              (assert x7598)))
                                           (g7596
                                            (letrec ((x7599 (char? c2)))
                                              (assert x7599)))
                                           (g7597
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7600
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7600))))
                                    g7597)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7601
                                            (letrec ((x7602
                                                      (letrec ((x7603
                                                                (letrec ((x7604
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7604))))
                                                        (cdr x7603))))
                                              (cdr x7602))))
                                    g7601)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7605
                                            (letrec ((x7608 (list? l)))
                                              (assert x7608)))
                                           (g7606
                                            (letrec ((x7609 (numer?)))
                                              (assert x7609)))
                                           (g7607
                                            (letrec ((x-cnd7610 (zero? k)))
                                              (if x-cnd7610
                                                x
                                                (letrec ((x7612 (cdr x))
                                                         (x7611 (- k 1)))
                                                  (list-tail x7612 x7611))))))
                                    g7607)))
                               (halt (lambda () (letrec ((g7613 '())) g7613)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7614
                                            (letrec ((x-cnd7615
                                                      (letrec ((x7616 #\a))
                                                        (char-ci>=? c x7616))))
                                              (if x-cnd7615
                                                (letrec ((x7617 #\z))
                                                  (char-ci<=? c x7617))
                                                #f))))
                                    g7614)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7618
                                            (letrec ((x7620 (number? x)))
                                              (assert x7620)))
                                           (g7619
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7621
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7622
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7622)))))
                                                g7621))))
                                    g7619)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7623
                                            (letrec ((val7146
                                                      (letrec ((x7624
                                                                (char->integer
                                                                 c)))
                                                        (= x7624 9))))
                                              (letrec ((g7625
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7626
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7626
                                                                       10))))
                                                            (letrec ((g7627
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7628
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7628
                                                                           32)))))
                                                              g7627)))))
                                                g7625))))
                                    g7623)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7629
                                            (letrec ((x7630
                                                      (letrec ((x7631 (car x)))
                                                        (cdr x7631))))
                                              (cdr x7630))))
                                    g7629)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7632
                                            (letrec ((x7634 (number? x)))
                                              (assert x7634)))
                                           (g7633 (> x 0)))
                                    g7633)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7635 #f)) g7635)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7636
                                            (letrec ((x7637 (cdr x)))
                                              (cdr x7637))))
                                    g7636)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7638
                                            (letrec ((x7640 (number? x)))
                                              (assert x7640)))
                                           (g7639
                                            (letrec ((x-cnd7641 (< x 0)))
                                              (if x-cnd7641
                                                (ceiling x)
                                                (floor x)))))
                                    g7639)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7642
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7643
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7645
                                                                              (null?
                                                                               a))
                                                                             (x7644
                                                                              (null?
                                                                               b)))
                                                                      (and x7645
                                                                           x7644))))
                                                            (letrec ((g7646
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7649
                                                                                            (string?
                                                                                             a))
                                                                                           (x7648
                                                                                            (string?
                                                                                             b))
                                                                                           (x7647
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7649
                                                                                         x7648
                                                                                         x7647))))
                                                                          (letrec ((g7650
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7658
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7657
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7654
                                                                                                          (letrec ((x7656
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7655
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7656
                                                                                                             x7655)))
                                                                                                         (x7651
                                                                                                          (letrec ((x7653
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7652
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7653
                                                                                                             x7652))))
                                                                                                  (and x7658
                                                                                                       x7657
                                                                                                       x7654
                                                                                                       x7651))))
                                                                                        (letrec ((g7659
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7678
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7677
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7660
                                                                                                              (letrec ((x7674
                                                                                                                        (letrec ((x7675
                                                                                                                                  (letrec ((x7676
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7676))))
                                                                                                                          (x7675)))
                                                                                                                       (x7661
                                                                                                                        (letrec ((x7672
                                                                                                                                  (letrec ((x7673
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7673
                                                                                                                                     n)))
                                                                                                                                 (x7662
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7663
                                                                                                                                                        (letrec ((x7670
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7664
                                                                                                                                                                  (letrec ((x7667
                                                                                                                                                                            (letrec ((x7669
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7668
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7669
                                                                                                                                                                               x7668)))
                                                                                                                                                                           (x7665
                                                                                                                                                                            (letrec ((x7666
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7666))))
                                                                                                                                                                    (and x7667
                                                                                                                                                                         x7665))))
                                                                                                                                                          (or x7670
                                                                                                                                                              x7664))))
                                                                                                                                                g7663))))
                                                                                                                                    (letrec ((g7671
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7671))))
                                                                                                                          (and x7672
                                                                                                                               x7662))))
                                                                                                                (let x7674 x7661))))
                                                                                                      (and x7678
                                                                                                           x7677
                                                                                                           x7660)))))
                                                                                          g7659)))))
                                                                            g7650)))))
                                                              g7646)))))
                                                g7643))))
                                    g7642)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7679
                                            (letrec ((x7680
                                                      (letrec ((x7681
                                                                (letrec ((x7682
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7682))))
                                                        (car x7681))))
                                              (cdr x7680))))
                                    g7679)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7683
                                            (letrec ((x7684
                                                      (letrec ((x7685
                                                                (letrec ((x7686
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7686))))
                                                        (car x7685))))
                                              (car x7684))))
                                    g7683)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7687 (eq? x y))) g7687)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7688
                                            (letrec ((x7690 (number? x)))
                                              (assert x7690)))
                                           (g7689
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7691
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7692
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7692)))))
                                                g7691))))
                                    g7689)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7693
                                            (letrec ((x7696
                                                      (string? filename)))
                                              (assert x7696)))
                                           (g7694
                                            (letrec ((x7697 (procedure? proc)))
                                              (assert x7697)))
                                           (g7695
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7698
                                                        (close-input-port
                                                         input-port))
                                                       (g7699 res))
                                                g7699))))
                                    g7695)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7700 (cons x '()))) g7700)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7701
                                            (letrec ((x7704 (char? c1)))
                                              (assert x7704)))
                                           (g7702
                                            (letrec ((x7705 (char? c2)))
                                              (assert x7705)))
                                           (g7703
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7706
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7706))))
                                    g7703)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7707
                                            (letrec ((x7708
                                                      (letrec ((x7709 (car x)))
                                                        (car x7709))))
                                              (cdr x7708))))
                                    g7707)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7710
                                            (letrec ((x7711
                                                      (letrec ((x7712
                                                                (letrec ((x7713
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7713))))
                                                        (car x7712))))
                                              (cdr x7711))))
                                    g7710)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7714
                                            (letrec ((x7715
                                                      (letrec ((x7716 (car x)))
                                                        (cdr x7716))))
                                              (car x7715))))
                                    g7714)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7717
                                            (letrec ((x7718
                                                      (letrec ((x7719 (cdr x)))
                                                        (car x7719))))
                                              (car x7718))))
                                    g7717)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7720
                                            (letrec ((x7723 (char? c1)))
                                              (assert x7723)))
                                           (g7721
                                            (letrec ((x7724 (char? c2)))
                                              (assert x7724)))
                                           (g7722
                                            (letrec ((x7725
                                                      (char-ci<=? c1 c2)))
                                              (not x7725))))
                                    g7722)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7726
                                            (letrec ((x7727
                                                      (letrec ((x7728
                                                                (letrec ((x7729
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7729))))
                                                        (car x7728))))
                                              (car x7727))))
                                    g7726)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7730
                                            (letrec ((x7732 (number? x)))
                                              (assert x7732)))
                                           (g7731 (< x 0)))
                                    g7731)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7733 (memq e l))) g7733)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7734
                                            (letrec ((x7735
                                                      (letrec ((x7736 (car x)))
                                                        (car x7736))))
                                              (car x7735))))
                                    g7734)))
                               (debug
                                (lambda (e) (letrec ((g7737 '())) g7737)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7738
                                            (letrec ((x7740 (list? l)))
                                              (assert x7740)))
                                           (g7739
                                            (letrec ((x-cnd7741 (null? l)))
                                              (if x-cnd7741
                                                '()
                                                (letrec ((x7744
                                                          (letrec ((x7745
                                                                    (cdr l)))
                                                            (reverse x7745)))
                                                         (x7742
                                                          (letrec ((x7743
                                                                    (car l)))
                                                            (list x7743))))
                                                  (append x7744 x7742))))))
                                    g7739)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7746
                                            (letrec ((x7747
                                                      (letrec ((x7748
                                                                (letrec ((x7749
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7749))))
                                                        (car x7748))))
                                              (car x7747))))
                                    g7746)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7750
                                            (letrec ((x7751
                                                      (letrec ((x7752
                                                                (letrec ((x7753
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7753))))
                                                        (cdr x7752))))
                                              (cdr x7751))))
                                    g7750)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7754
                                            (letrec ((x7756 (number? x)))
                                              (assert x7756)))
                                           (g7755
                                            (letrec ((x7757 (modulo x 2)))
                                              (= 1 x7757))))
                                    g7755)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7758
                                            (letrec ((x7759
                                                      (letrec ((x7760
                                                                (letrec ((x7761
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7761))))
                                                        (car x7760))))
                                              (car x7759))))
                                    g7758)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7762
                                            (letrec ((x7765 (procedure? proc)))
                                              (assert x7765)))
                                           (g7763
                                            (letrec ((x7766 (list? args)))
                                              (assert x7766)))
                                           (g7764
                                            (if cnd
                                              (letrec ((g7767 (proc))) g7767)
                                              (if cnd
                                                (letrec ((g7768
                                                          (letrec ((x7769
                                                                    (car
                                                                     args)))
                                                            (proc x7769))))
                                                  g7768)
                                                (if cnd
                                                  (letrec ((g7770
                                                            (letrec ((x7772
                                                                      (car
                                                                       args))
                                                                     (x7771
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7772
                                                               x7771))))
                                                    g7770)
                                                  (if cnd
                                                    (letrec ((g7773
                                                              (letrec ((x7776
                                                                        (car
                                                                         args))
                                                                       (x7775
                                                                        (cadr
                                                                         args))
                                                                       (x7774
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7776
                                                                 x7775
                                                                 x7774))))
                                                      g7773)
                                                    (if cnd
                                                      (letrec ((g7777
                                                                (letrec ((x7781
                                                                          (car
                                                                           args))
                                                                         (x7780
                                                                          (cadr
                                                                           args))
                                                                         (x7779
                                                                          (caddr
                                                                           args))
                                                                         (x7778
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7781
                                                                   x7780
                                                                   x7779
                                                                   x7778))))
                                                        g7777)
                                                      (if cnd
                                                        (letrec ((g7782
                                                                  (letrec ((x7788
                                                                            (car
                                                                             args))
                                                                           (x7787
                                                                            (cadr
                                                                             args))
                                                                           (x7786
                                                                            (caddr
                                                                             args))
                                                                           (x7785
                                                                            (cadddr
                                                                             args))
                                                                           (x7783
                                                                            (letrec ((x7784
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7784))))
                                                                    (proc
                                                                     x7788
                                                                     x7787
                                                                     x7786
                                                                     x7785
                                                                     x7783))))
                                                          g7782)
                                                        (if cnd
                                                          (letrec ((g7789
                                                                    (letrec ((x7797
                                                                              (car
                                                                               args))
                                                                             (x7796
                                                                              (cadr
                                                                               args))
                                                                             (x7795
                                                                              (caddr
                                                                               args))
                                                                             (x7794
                                                                              (cadddr
                                                                               args))
                                                                             (x7792
                                                                              (letrec ((x7793
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7793)))
                                                                             (x7790
                                                                              (letrec ((x7791
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7791))))
                                                                      (proc
                                                                       x7797
                                                                       x7796
                                                                       x7795
                                                                       x7794
                                                                       x7792
                                                                       x7790))))
                                                            g7789)
                                                          (if cnd
                                                            (letrec ((g7798
                                                                      (letrec ((x7808
                                                                                (car
                                                                                 args))
                                                                               (x7807
                                                                                (cadr
                                                                                 args))
                                                                               (x7806
                                                                                (caddr
                                                                                 args))
                                                                               (x7805
                                                                                (cadddr
                                                                                 args))
                                                                               (x7803
                                                                                (letrec ((x7804
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7804)))
                                                                               (x7801
                                                                                (letrec ((x7802
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7802)))
                                                                               (x7799
                                                                                (letrec ((x7800
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7800))))
                                                                        (proc
                                                                         x7808
                                                                         x7807
                                                                         x7806
                                                                         x7805
                                                                         x7803
                                                                         x7801
                                                                         x7799))))
                                                              g7798)
                                                            (letrec ((g7809
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7809)))))))))))
                                    g7764)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7810
                                            (letrec ((x7812 (list? l)))
                                              (assert x7812)))
                                           (g7811
                                            (letrec ((x-cnd7813 (null? l)))
                                              (if x-cnd7813
                                                #f
                                                (letrec ((x-cnd7814
                                                          (letrec ((x7815
                                                                    (car l)))
                                                            (equal? x7815 e))))
                                                  (if x-cnd7814
                                                    l
                                                    (letrec ((x7816 (cdr l)))
                                                      (member e x7816))))))))
                                    g7811)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7817
                                            (letrec ((x7818
                                                      (letrec ((x7819
                                                                (letrec ((x7820
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7820))))
                                                        (cdr x7819))))
                                              (cdr x7818))))
                                    g7817)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7821
                                            (letrec ((x7822
                                                      (letrec ((x7823
                                                                (letrec ((x7824
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7824))))
                                                        (cdr x7823))))
                                              (car x7822))))
                                    g7821)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7825 (random 42))) g7825)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7826
                                            (letrec ((x7828 (number? x)))
                                              (assert x7828)))
                                           (g7827 (= x 0)))
                                    g7827)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7829
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7830
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7830))))
                                    g7829)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7831
                                            (letrec ((x7832 (cdr x)))
                                              (car x7832))))
                                    g7831)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7833
                                            (letrec ((val7156
                                                      (letrec ((x7836
                                                                (pair? l))
                                                               (x7834
                                                                (letrec ((x7835
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7835))))
                                                        (and x7836 x7834))))
                                              (letrec ((g7837
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7837))))
                                    g7833)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7838
                                            (letrec ((x7839
                                                      (letrec ((x7840
                                                                (letrec ((x7841
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7841))))
                                                        (cdr x7840))))
                                              (cdr x7839))))
                                    g7838)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7842
                                            (letrec ((x-cnd7843
                                                      (letrec ((x7844 #\0))
                                                        (char<=? x7844 c))))
                                              (if x-cnd7843
                                                (letrec ((x7845 #\9))
                                                  (char<=? c x7845))
                                                #f))))
                                    g7842)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7846
                                            (letrec ((x7848 (list? l)))
                                              (assert x7848)))
                                           (g7847
                                            (letrec ((x-cnd7849 (null? l)))
                                              (if x-cnd7849
                                                #f
                                                (letrec ((x-cnd7850
                                                          (letrec ((x7851
                                                                    (caar l)))
                                                            (eqv? x7851 k))))
                                                  (if x-cnd7850
                                                    (car l)
                                                    (letrec ((x7852 (cdr l)))
                                                      (assq k x7852))))))))
                                    g7847)))
                               (not
                                (lambda (x)
                                  (letrec ((g7853 (if x #f #t))) g7853)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7854 (append l1 l2))) g7854)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7855
                                            (letrec ((x7857 (list? l)))
                                              (assert x7857)))
                                           (g7856
                                            (letrec ((x-cnd7858 (null? l)))
                                              (if x-cnd7858
                                                #f
                                                (letrec ((x-cnd7859
                                                          (letrec ((x7860
                                                                    (car l)))
                                                            (eq? x7860 e))))
                                                  (if x-cnd7859
                                                    l
                                                    (letrec ((x7861 (cdr l)))
                                                      (memq e x7861))))))))
                                    g7856)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7862
                                            (letrec ((x7863
                                                      (letrec ((x7864
                                                                (letrec ((x7865
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7865))))
                                                        (cdr x7864))))
                                              (car x7863))))
                                    g7862)))
                               (length
                                (lambda (l)
                                  (letrec ((g7866
                                            (letrec ((x7868 (list? l)))
                                              (assert x7868)))
                                           (g7867
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7869
                                                                  (letrec ((x-cnd7870
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7870
                                                                      0
                                                                      (letrec ((x7871
                                                                                (letrec ((x7872
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7872))))
                                                                        (+
                                                                         1
                                                                         x7871))))))
                                                          g7869))))
                                              (letrec ((g7873 (rec l)))
                                                g7873))))
                                    g7867)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7874
                                            (letrec ((x7877 (char? c1)))
                                              (assert x7877)))
                                           (g7875
                                            (letrec ((x7878 (char? c2)))
                                              (assert x7878)))
                                           (g7876
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7879
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7879))))
                                    g7876)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7880
                                            (letrec ((x7881 (string<=? s1 s2)))
                                              (not x7881))))
                                    g7880)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7882
                                            (letrec ((x7883
                                                      (letrec ((x7884 (cdr x)))
                                                        (car x7884))))
                                              (cdr x7883))))
                                    g7882)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7885
                                            (letrec ((x7887 (list? l)))
                                              (assert x7887)))
                                           (g7886
                                            (letrec ((x-cnd7888 (null? l)))
                                              (if x-cnd7888
                                                #f
                                                (letrec ((x-cnd7889
                                                          (letrec ((x7890
                                                                    (caar l)))
                                                            (equal? x7890 k))))
                                                  (if x-cnd7889
                                                    (car l)
                                                    (letrec ((x7891 (cdr l)))
                                                      (assoc k x7891))))))))
                                    g7886)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7892
                                            (letrec ((x7893 (car x)))
                                              (car x7893))))
                                    g7892)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7894
                                            (letrec ((x7897 (char? c1)))
                                              (assert x7897)))
                                           (g7895
                                            (letrec ((x7898 (char? c2)))
                                              (assert x7898)))
                                           (g7896
                                            (letrec ((x7899 (char<=? c1 c2)))
                                              (not x7899))))
                                    g7896)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7900
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7901
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7901))))
                                    g7900)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7902
                                            (letrec ((x7905 (procedure? f)))
                                              (assert x7905)))
                                           (g7903
                                            (letrec ((x7906 (list? l)))
                                              (assert x7906)))
                                           (g7904
                                            (letrec ((x-cnd7907 (null? l)))
                                              (if x-cnd7907
                                                #t
                                                (letrec ((x-cnd7908 (pair? l)))
                                                  (if x-cnd7908
                                                    (letrec ((g7909
                                                              (letrec ((x7911
                                                                        (car
                                                                         l)))
                                                                (f x7911)))
                                                             (g7910
                                                              (letrec ((x7912
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7912))))
                                                      g7910)
                                                    '()))))))
                                    g7904)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7913
                                            (letrec ((x7915 (number? x)))
                                              (assert x7915)))
                                           (g7914
                                            (letrec ((x-cnd7916 (< x 0)))
                                              (if x-cnd7916 (- 0 x) x))))
                                    g7914)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7917
                                            (letrec ((x7920 (char? c1)))
                                              (assert x7920)))
                                           (g7918
                                            (letrec ((x7921 (char? c2)))
                                              (assert x7921)))
                                           (g7919
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7922
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7922))))
                                    g7919)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7923
                                            (letrec ((x7924
                                                      (letrec ((x7925
                                                                (letrec ((x7926
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7926))))
                                                        (cdr x7925))))
                                              (car x7924))))
                                    g7923)))
                               (newline
                                (lambda () (letrec ((g7927 #f)) g7927)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7928
                                            (letrec ((x7930
                                                      (letrec ((x7931 (* m n)))
                                                        (abs x7931)))
                                                     (x7929 (gcd m n)))
                                              (/ x7930 x7929))))
                                    g7928)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7932
                                            (letrec ((x7934 (number? x)))
                                              (assert x7934)))
                                           (g7933
                                            (letrec ((x7935 (<= x y)))
                                              (not x7935))))
                                    g7933)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7936
                                            (letrec ((x7940 (list? l)))
                                              (assert x7940)))
                                           (g7937
                                            (letrec ((x7941 (number? index)))
                                              (assert x7941)))
                                           (g7938
                                            (letrec ((x7942
                                                      (letrec ((x7943
                                                                (length l)))
                                                        (< index x7943))))
                                              (assert x7942)))
                                           (g7939
                                            (letrec ((x-cnd7944 (= index 0)))
                                              (if x-cnd7944
                                                (car l)
                                                (letrec ((x7946 (cdr l))
                                                         (x7945 (- index 1)))
                                                  (list-ref x7946 x7945))))))
                                    g7939)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7947
                                            (letrec ((x-cnd7948 (= b 0)))
                                              (if x-cnd7948
                                                a
                                                (letrec ((x7949 (modulo a b)))
                                                  (gcd b x7949))))))
                                    g7947)))
                               (real/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7950
                                            (letrec ((x-cnd7951 (real? g7163)))
                                              (if x-cnd7951
                                                g7163
                                                (blame g7161 'real?)))))
                                    g7950)))
                               (boolean?/c
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7952
                                            (letrec ((x-cnd7953
                                                      (boolean? g7166)))
                                              (if x-cnd7953
                                                g7166
                                                (blame g7164 'boolean?)))))
                                    g7952)))
                               (number?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7954
                                            (letrec ((x-cnd7955
                                                      (number? g7169)))
                                              (if x-cnd7955
                                                g7169
                                                (blame g7167 'number?)))))
                                    g7954)))
                               (any/c
                                (lambda (g7170 g7171 g7172)
                                  (letrec ((g7956
                                            (letrec ((x-cnd7957
                                                      ((lambda (v) #t) g7172)))
                                              (if x-cnd7957
                                                g7172
                                                (blame
                                                 g7170
                                                 '(lambda (v) #t))))))
                                    g7956)))
                               (any?/c
                                (lambda (g7173 g7174 g7175)
                                  (letrec ((g7958
                                            (letrec ((x-cnd7959
                                                      ((lambda (v) #t) g7175)))
                                              (if x-cnd7959
                                                g7175
                                                (blame
                                                 g7173
                                                 '(lambda (v) #t))))))
                                    g7958)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7176 g7177 g7178)
                                  (letrec ((g7960
                                            (letrec ((x-cnd7961 (pair? g7178)))
                                              (if x-cnd7961
                                                g7178
                                                (blame g7176 'pair?)))))
                                    g7960)))
                               (pair?/c
                                (lambda (g7179 g7180 g7181)
                                  (letrec ((g7962
                                            (letrec ((x-cnd7963 (pair? g7181)))
                                              (if x-cnd7963
                                                g7181
                                                (blame g7179 'pair?)))))
                                    g7962)))
                               (integer?
                                (lambda (g7182 g7183 g7184)
                                  (letrec ((g7964
                                            (letrec ((x-cnd7965
                                                      (integer? g7184)))
                                              (if x-cnd7965
                                                g7184
                                                (blame g7182 'integer?)))))
                                    g7964)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7966
                                            (lambda (k j v)
                                              (letrec ((g7967
                                                        (letrec ((x-cnd7968
                                                                  (c1 k j v)))
                                                          (if x-cnd7968
                                                            (c2 k j v)
                                                            #f))))
                                                g7967))))
                                    g7966)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7969
                                            (lambda (k j v)
                                              (letrec ((g7970
                                                        (letrec ((x-cnd7971
                                                                  (null? v)))
                                                          (if x-cnd7971
                                                            '()
                                                            (letrec ((x7975
                                                                      (letrec ((x7976
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7976)))
                                                                     (x7972
                                                                      (letrec ((x7974
                                                                                (list-of
                                                                                 contract))
                                                                               (x7973
                                                                                (cdr
                                                                                 v)))
                                                                        (x7974
                                                                         k
                                                                         j
                                                                         x7973))))
                                                              (cons
                                                               x7975
                                                               x7972))))))
                                                g7970))))
                                    g7969)))
                               (any? (lambda (v) (letrec ((g7977 #t)) g7977)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7978
                                            (letrec ((x7979 (= v 0)))
                                              (not x7979))))
                                    g7978)))
                               (nonzero?/c
                                (lambda (g7185 g7186 g7187)
                                  (letrec ((g7980
                                            (letrec ((x-cnd7981
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7187)))
                                              (if x-cnd7981
                                                g7187
                                                (blame
                                                 g7185
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7980)))
                               (meta (lambda (v) (letrec ((g7982 v)) g7982)))
                               (orig-+ +)
                               (+
                                ((lambda (j7190 k7191 f7192)
                                   (lambda (g7188 g7189)
                                     (number?/c
                                      j7190
                                      k7191
                                      (f7192
                                       (number?/c j7190 k7191 g7188)
                                       (number?/c j7190 k7191 g7189)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7193 g7194)
                                     (number?/c
                                      j7195
                                      k7196
                                      (f7197
                                       (number?/c j7195 k7196 g7193)
                                       (number?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7200 k7201 f7202)
                                   (lambda (g7198 g7199)
                                     (number?/c
                                      j7200
                                      k7201
                                      (f7202
                                       (number?/c j7200 k7201 g7198)
                                       (number?/c j7200 k7201 g7199)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7205 k7206 f7207)
                                   (lambda (g7203 g7204)
                                     (number?/c
                                      j7205
                                      k7206
                                      (f7207
                                       (number?/c j7205 k7206 g7203)
                                       (number?/c j7205 k7206 g7204)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7209 k7210 f7211)
                                   (lambda (g7208)
                                     (any/c
                                      j7209
                                      k7210
                                      (f7211 (pair?/c j7209 k7210 g7208)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7213 k7214 f7215)
                                   (lambda (g7212)
                                     (any/c
                                      j7213
                                      k7214
                                      (f7215 (pair?/c j7213 k7214 g7212)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7218 k7219 f7220)
                                   (lambda (g7216 g7217)
                                     (pair?/c
                                      j7218
                                      k7219
                                      (f7220
                                       (any/c j7218 k7219 g7216)
                                       (any/c j7218 k7219 g7217)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7222 k7223 f7224)
                                   (lambda (g7221)
                                     (integer?/c
                                      j7222
                                      k7223
                                      (f7224 (vector?/c j7222 k7223 g7221)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7227 k7228 f7229)
                                   (lambda (g7225 g7226)
                                     (any/c
                                      j7227
                                      k7228
                                      (f7229
                                       (vector?/c j7227 k7228 g7225)
                                       (integer?/c j7227 k7228 g7226)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7983 #t)) g7983)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7984
                                            (letrec ((x7985
                                                      (letrec ((x7986 (cdr x)))
                                                        (cdr x7986))))
                                              (cdr x7985))))
                                    g7984)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7987
                                            (letrec ((x7990 (procedure? f)))
                                              (assert x7990)))
                                           (g7988
                                            (letrec ((x7991 (list? l)))
                                              (assert x7991)))
                                           (g7989
                                            (letrec ((x-cnd7992 (null? l)))
                                              (if x-cnd7992
                                                '()
                                                (letrec ((x7995
                                                          (letrec ((x7996
                                                                    (car l)))
                                                            (f x7996)))
                                                         (x7993
                                                          (letrec ((x7994
                                                                    (cdr l)))
                                                            (map f x7994))))
                                                  (cons x7995 x7993))))))
                                    g7989)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7997
                                            (letrec ((x7998 (car x)))
                                              (cdr x7998))))
                                    g7997)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7999
                                            (letrec ((x8000
                                                      (letrec ((x8001
                                                                (letrec ((x8002
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8002))))
                                                        (cdr x8001))))
                                              (car x8000))))
                                    g7999)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g8003
                                            (letrec ((x8004
                                                      (letrec ((x8005
                                                                (letrec ((x8006
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8006))))
                                                        (car x8005))))
                                              (cdr x8004))))
                                    g8003)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g8007
                                            (letrec ((x8010
                                                      (string? filename)))
                                              (assert x8010)))
                                           (g8008
                                            (letrec ((x8011 (procedure? proc)))
                                              (assert x8011)))
                                           (g8009
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g8012
                                                        (close-output-port
                                                         output-port))
                                                       (g8013 res))
                                                g8013))))
                                    g8009)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g8014
                                            (letrec ((x8015
                                                      (letrec ((x8016 (cdr x)))
                                                        (cdr x8016))))
                                              (car x8015))))
                                    g8014)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g8017
                                            (letrec ((x8018
                                                      (letrec ((x8019
                                                                (letrec ((x8020
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8020))))
                                                        (car x8019))))
                                              (cdr x8018))))
                                    g8017)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g8021
                                            (letrec ((x8023 (list? l)))
                                              (assert x8023)))
                                           (g8022
                                            (letrec ((x-cnd8024 (null? l)))
                                              (if x-cnd8024
                                                #f
                                                (letrec ((x-cnd8025
                                                          (letrec ((x8026
                                                                    (caar l)))
                                                            (eq? x8026 k))))
                                                  (if x-cnd8025
                                                    (car l)
                                                    (letrec ((x8027 (cdr l)))
                                                      (assq k x8027))))))))
                                    g8022)))
                               (even?
                                (lambda (x)
                                  (letrec ((g8028
                                            (letrec ((x8029 (modulo x 2)))
                                              (= 0 x8029))))
                                    g8028)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g8030
                                            (letrec ((x8032 (list? l)))
                                              (assert x8032)))
                                           (g8031
                                            (letrec ((x-cnd8033 (null? l)))
                                              (if x-cnd8033
                                                ""
                                                (letrec ((x8036
                                                          (letrec ((x8037
                                                                    (car l)))
                                                            (char->string
                                                             x8037)))
                                                         (x8034
                                                          (letrec ((x8035
                                                                    (cdr l)))
                                                            (list->string
                                                             x8035))))
                                                  (string-append
                                                   x8036
                                                   x8034))))))
                                    g8031)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g8038
                                            (letrec ((x8041 (char? c1)))
                                              (assert x8041)))
                                           (g8039
                                            (letrec ((x8042 (char? c2)))
                                              (assert x8042)))
                                           (g8040
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g8043
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g8043))))
                                    g8040)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g8044
                                            (letrec ((x8045
                                                      (letrec ((x8046
                                                                (letrec ((x8047
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8047))))
                                                        (cdr x8046))))
                                              (cdr x8045))))
                                    g8044)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g8048
                                            (letrec ((x8051 (list? l)))
                                              (assert x8051)))
                                           (g8049
                                            (letrec ((x8052 (numer?)))
                                              (assert x8052)))
                                           (g8050
                                            (letrec ((x-cnd8053 (zero? k)))
                                              (if x-cnd8053
                                                x
                                                (letrec ((x8055 (cdr x))
                                                         (x8054 (- k 1)))
                                                  (list-tail x8055 x8054))))))
                                    g8050)))
                               (halt (lambda () (letrec ((g8056 '())) g8056)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g8057
                                            (letrec ((x-cnd8058
                                                      (letrec ((x8059 #\a))
                                                        (char-ci>=? c x8059))))
                                              (if x-cnd8058
                                                (letrec ((x8060 #\z))
                                                  (char-ci<=? c x8060))
                                                #f))))
                                    g8057)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g8061
                                            (letrec ((x8063 (number? x)))
                                              (assert x8063)))
                                           (g8062
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g8064
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g8065
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g8065)))))
                                                g8064))))
                                    g8062)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g8066
                                            (letrec ((val7146
                                                      (letrec ((x8067
                                                                (char->integer
                                                                 c)))
                                                        (= x8067 9))))
                                              (letrec ((g8068
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x8069
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x8069
                                                                       10))))
                                                            (letrec ((g8070
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x8071
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x8071
                                                                           32)))))
                                                              g8070)))))
                                                g8068))))
                                    g8066)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g8072
                                            (letrec ((x8073
                                                      (letrec ((x8074 (car x)))
                                                        (cdr x8074))))
                                              (cdr x8073))))
                                    g8072)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g8075
                                            (letrec ((x8077 (number? x)))
                                              (assert x8077)))
                                           (g8076 (> x 0)))
                                    g8076)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g8078 #f)) g8078)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g8079
                                            (letrec ((x8080 (cdr x)))
                                              (cdr x8080))))
                                    g8079)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g8081
                                            (letrec ((x8083 (number? x)))
                                              (assert x8083)))
                                           (g8082
                                            (letrec ((x-cnd8084 (< x 0)))
                                              (if x-cnd8084
                                                (ceiling x)
                                                (floor x)))))
                                    g8082)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g8085
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g8086
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x8088
                                                                              (null?
                                                                               a))
                                                                             (x8087
                                                                              (null?
                                                                               b)))
                                                                      (and x8088
                                                                           x8087))))
                                                            (letrec ((g8089
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x8092
                                                                                            (string?
                                                                                             a))
                                                                                           (x8091
                                                                                            (string?
                                                                                             b))
                                                                                           (x8090
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x8092
                                                                                         x8091
                                                                                         x8090))))
                                                                          (letrec ((g8093
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x8101
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x8100
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x8097
                                                                                                          (letrec ((x8099
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x8098
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x8099
                                                                                                             x8098)))
                                                                                                         (x8094
                                                                                                          (letrec ((x8096
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x8095
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x8096
                                                                                                             x8095))))
                                                                                                  (and x8101
                                                                                                       x8100
                                                                                                       x8097
                                                                                                       x8094))))
                                                                                        (letrec ((g8102
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x8121
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x8120
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x8103
                                                                                                              (letrec ((x8117
                                                                                                                        (letrec ((x8118
                                                                                                                                  (letrec ((x8119
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x8119))))
                                                                                                                          (x8118)))
                                                                                                                       (x8104
                                                                                                                        (letrec ((x8115
                                                                                                                                  (letrec ((x8116
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x8116
                                                                                                                                     n)))
                                                                                                                                 (x8105
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g8106
                                                                                                                                                        (letrec ((x8113
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x8107
                                                                                                                                                                  (letrec ((x8110
                                                                                                                                                                            (letrec ((x8112
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x8111
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x8112
                                                                                                                                                                               x8111)))
                                                                                                                                                                           (x8108
                                                                                                                                                                            (letrec ((x8109
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x8109))))
                                                                                                                                                                    (and x8110
                                                                                                                                                                         x8108))))
                                                                                                                                                          (or x8113
                                                                                                                                                              x8107))))
                                                                                                                                                g8106))))
                                                                                                                                    (letrec ((g8114
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g8114))))
                                                                                                                          (and x8115
                                                                                                                               x8105))))
                                                                                                                (let x8117 x8104))))
                                                                                                      (and x8121
                                                                                                           x8120
                                                                                                           x8103)))))
                                                                                          g8102)))))
                                                                            g8093)))))
                                                              g8089)))))
                                                g8086))))
                                    g8085)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g8122
                                            (letrec ((x8123
                                                      (letrec ((x8124
                                                                (letrec ((x8125
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8125))))
                                                        (car x8124))))
                                              (cdr x8123))))
                                    g8122)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g8126
                                            (letrec ((x8127
                                                      (letrec ((x8128
                                                                (letrec ((x8129
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8129))))
                                                        (car x8128))))
                                              (car x8127))))
                                    g8126)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g8130 (eq? x y))) g8130)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g8131
                                            (letrec ((x8133 (number? x)))
                                              (assert x8133)))
                                           (g8132
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g8134
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g8135
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g8135)))))
                                                g8134))))
                                    g8132)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g8136
                                            (letrec ((x8139
                                                      (string? filename)))
                                              (assert x8139)))
                                           (g8137
                                            (letrec ((x8140 (procedure? proc)))
                                              (assert x8140)))
                                           (g8138
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g8141
                                                        (close-input-port
                                                         input-port))
                                                       (g8142 res))
                                                g8142))))
                                    g8138)))
                               (ref
                                (lambda (x)
                                  (letrec ((g8143 (cons x '()))) g8143)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g8144
                                            (letrec ((x8147 (char? c1)))
                                              (assert x8147)))
                                           (g8145
                                            (letrec ((x8148 (char? c2)))
                                              (assert x8148)))
                                           (g8146
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g8149
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g8149))))
                                    g8146)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g8150
                                            (letrec ((x8151
                                                      (letrec ((x8152 (car x)))
                                                        (car x8152))))
                                              (cdr x8151))))
                                    g8150)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g8153
                                            (letrec ((x8154
                                                      (letrec ((x8155
                                                                (letrec ((x8156
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8156))))
                                                        (car x8155))))
                                              (cdr x8154))))
                                    g8153)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g8157
                                            (letrec ((x8158
                                                      (letrec ((x8159 (car x)))
                                                        (cdr x8159))))
                                              (car x8158))))
                                    g8157)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g8160
                                            (letrec ((x8161
                                                      (letrec ((x8162 (cdr x)))
                                                        (car x8162))))
                                              (car x8161))))
                                    g8160)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g8163
                                            (letrec ((x8166 (char? c1)))
                                              (assert x8166)))
                                           (g8164
                                            (letrec ((x8167 (char? c2)))
                                              (assert x8167)))
                                           (g8165
                                            (letrec ((x8168
                                                      (char-ci<=? c1 c2)))
                                              (not x8168))))
                                    g8165)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g8169
                                            (letrec ((x8170
                                                      (letrec ((x8171
                                                                (letrec ((x8172
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8172))))
                                                        (car x8171))))
                                              (car x8170))))
                                    g8169)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g8173
                                            (letrec ((x8175 (number? x)))
                                              (assert x8175)))
                                           (g8174 (< x 0)))
                                    g8174)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g8176 (memq e l))) g8176)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g8177
                                            (letrec ((x8178
                                                      (letrec ((x8179 (car x)))
                                                        (car x8179))))
                                              (car x8178))))
                                    g8177)))
                               (debug
                                (lambda (e) (letrec ((g8180 '())) g8180)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g8181
                                            (letrec ((x8183 (list? l)))
                                              (assert x8183)))
                                           (g8182
                                            (letrec ((x-cnd8184 (null? l)))
                                              (if x-cnd8184
                                                '()
                                                (letrec ((x8187
                                                          (letrec ((x8188
                                                                    (cdr l)))
                                                            (reverse x8188)))
                                                         (x8185
                                                          (letrec ((x8186
                                                                    (car l)))
                                                            (list x8186))))
                                                  (append x8187 x8185))))))
                                    g8182)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g8189
                                            (letrec ((x8190
                                                      (letrec ((x8191
                                                                (letrec ((x8192
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8192))))
                                                        (car x8191))))
                                              (car x8190))))
                                    g8189)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g8193
                                            (letrec ((x8194
                                                      (letrec ((x8195
                                                                (letrec ((x8196
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8196))))
                                                        (cdr x8195))))
                                              (cdr x8194))))
                                    g8193)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g8197
                                            (letrec ((x8199 (number? x)))
                                              (assert x8199)))
                                           (g8198
                                            (letrec ((x8200 (modulo x 2)))
                                              (= 1 x8200))))
                                    g8198)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g8201
                                            (letrec ((x8202
                                                      (letrec ((x8203
                                                                (letrec ((x8204
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8204))))
                                                        (car x8203))))
                                              (car x8202))))
                                    g8201)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g8205
                                            (letrec ((x8208 (procedure? proc)))
                                              (assert x8208)))
                                           (g8206
                                            (letrec ((x8209 (list? args)))
                                              (assert x8209)))
                                           (g8207
                                            (if cnd
                                              (letrec ((g8210 (proc))) g8210)
                                              (if cnd
                                                (letrec ((g8211
                                                          (letrec ((x8212
                                                                    (car
                                                                     args)))
                                                            (proc x8212))))
                                                  g8211)
                                                (if cnd
                                                  (letrec ((g8213
                                                            (letrec ((x8215
                                                                      (car
                                                                       args))
                                                                     (x8214
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x8215
                                                               x8214))))
                                                    g8213)
                                                  (if cnd
                                                    (letrec ((g8216
                                                              (letrec ((x8219
                                                                        (car
                                                                         args))
                                                                       (x8218
                                                                        (cadr
                                                                         args))
                                                                       (x8217
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x8219
                                                                 x8218
                                                                 x8217))))
                                                      g8216)
                                                    (if cnd
                                                      (letrec ((g8220
                                                                (letrec ((x8224
                                                                          (car
                                                                           args))
                                                                         (x8223
                                                                          (cadr
                                                                           args))
                                                                         (x8222
                                                                          (caddr
                                                                           args))
                                                                         (x8221
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x8224
                                                                   x8223
                                                                   x8222
                                                                   x8221))))
                                                        g8220)
                                                      (if cnd
                                                        (letrec ((g8225
                                                                  (letrec ((x8231
                                                                            (car
                                                                             args))
                                                                           (x8230
                                                                            (cadr
                                                                             args))
                                                                           (x8229
                                                                            (caddr
                                                                             args))
                                                                           (x8228
                                                                            (cadddr
                                                                             args))
                                                                           (x8226
                                                                            (letrec ((x8227
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x8227))))
                                                                    (proc
                                                                     x8231
                                                                     x8230
                                                                     x8229
                                                                     x8228
                                                                     x8226))))
                                                          g8225)
                                                        (if cnd
                                                          (letrec ((g8232
                                                                    (letrec ((x8240
                                                                              (car
                                                                               args))
                                                                             (x8239
                                                                              (cadr
                                                                               args))
                                                                             (x8238
                                                                              (caddr
                                                                               args))
                                                                             (x8237
                                                                              (cadddr
                                                                               args))
                                                                             (x8235
                                                                              (letrec ((x8236
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x8236)))
                                                                             (x8233
                                                                              (letrec ((x8234
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x8234))))
                                                                      (proc
                                                                       x8240
                                                                       x8239
                                                                       x8238
                                                                       x8237
                                                                       x8235
                                                                       x8233))))
                                                            g8232)
                                                          (if cnd
                                                            (letrec ((g8241
                                                                      (letrec ((x8251
                                                                                (car
                                                                                 args))
                                                                               (x8250
                                                                                (cadr
                                                                                 args))
                                                                               (x8249
                                                                                (caddr
                                                                                 args))
                                                                               (x8248
                                                                                (cadddr
                                                                                 args))
                                                                               (x8246
                                                                                (letrec ((x8247
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x8247)))
                                                                               (x8244
                                                                                (letrec ((x8245
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x8245)))
                                                                               (x8242
                                                                                (letrec ((x8243
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x8243))))
                                                                        (proc
                                                                         x8251
                                                                         x8250
                                                                         x8249
                                                                         x8248
                                                                         x8246
                                                                         x8244
                                                                         x8242))))
                                                              g8241)
                                                            (letrec ((g8252
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8252)))))))))))
                                    g8207)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8253
                                            (letrec ((x8255 (list? l)))
                                              (assert x8255)))
                                           (g8254
                                            (letrec ((x-cnd8256 (null? l)))
                                              (if x-cnd8256
                                                #f
                                                (letrec ((x-cnd8257
                                                          (letrec ((x8258
                                                                    (car l)))
                                                            (equal? x8258 e))))
                                                  (if x-cnd8257
                                                    l
                                                    (letrec ((x8259 (cdr l)))
                                                      (member e x8259))))))))
                                    g8254)))
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8260
                                            (letrec ((x8261
                                                      (letrec ((x8262
                                                                (letrec ((x8263
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8263))))
                                                        (cdr x8262))))
                                              (cdr x8261))))
                                    g8260)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8264
                                            (letrec ((x8265
                                                      (letrec ((x8266
                                                                (letrec ((x8267
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8267))))
                                                        (cdr x8266))))
                                              (car x8265))))
                                    g8264)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8268 (random 42))) g8268)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8269
                                            (letrec ((x8271 (number? x)))
                                              (assert x8271)))
                                           (g8270 (= x 0)))
                                    g8270)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8272
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8273
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8273))))
                                    g8272)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8274
                                            (letrec ((x8275 (cdr x)))
                                              (car x8275))))
                                    g8274)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8276
                                            (letrec ((val7156
                                                      (letrec ((x8279
                                                                (pair? l))
                                                               (x8277
                                                                (letrec ((x8278
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8278))))
                                                        (and x8279 x8277))))
                                              (letrec ((g8280
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8280))))
                                    g8276)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8281
                                            (letrec ((x8282
                                                      (letrec ((x8283
                                                                (letrec ((x8284
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8284))))
                                                        (cdr x8283))))
                                              (cdr x8282))))
                                    g8281)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8285
                                            (letrec ((x-cnd8286
                                                      (letrec ((x8287 #\0))
                                                        (char<=? x8287 c))))
                                              (if x-cnd8286
                                                (letrec ((x8288 #\9))
                                                  (char<=? c x8288))
                                                #f))))
                                    g8285)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8289
                                            (letrec ((x8291 (list? l)))
                                              (assert x8291)))
                                           (g8290
                                            (letrec ((x-cnd8292 (null? l)))
                                              (if x-cnd8292
                                                #f
                                                (letrec ((x-cnd8293
                                                          (letrec ((x8294
                                                                    (caar l)))
                                                            (eqv? x8294 k))))
                                                  (if x-cnd8293
                                                    (car l)
                                                    (letrec ((x8295 (cdr l)))
                                                      (assq k x8295))))))))
                                    g8290)))
                               (not
                                (lambda (x)
                                  (letrec ((g8296 (if x #f #t))) g8296)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8297 (append l1 l2))) g8297)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8298
                                            (letrec ((x8300 (list? l)))
                                              (assert x8300)))
                                           (g8299
                                            (letrec ((x-cnd8301 (null? l)))
                                              (if x-cnd8301
                                                #f
                                                (letrec ((x-cnd8302
                                                          (letrec ((x8303
                                                                    (car l)))
                                                            (eq? x8303 e))))
                                                  (if x-cnd8302
                                                    l
                                                    (letrec ((x8304 (cdr l)))
                                                      (memq e x8304))))))))
                                    g8299)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8305
                                            (letrec ((x8306
                                                      (letrec ((x8307
                                                                (letrec ((x8308
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8308))))
                                                        (cdr x8307))))
                                              (car x8306))))
                                    g8305)))
                               (length
                                (lambda (l)
                                  (letrec ((g8309
                                            (letrec ((x8311 (list? l)))
                                              (assert x8311)))
                                           (g8310
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8312
                                                                  (letrec ((x-cnd8313
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8313
                                                                      0
                                                                      (letrec ((x8314
                                                                                (letrec ((x8315
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8315))))
                                                                        (+
                                                                         1
                                                                         x8314))))))
                                                          g8312))))
                                              (letrec ((g8316 (rec l)))
                                                g8316))))
                                    g8310)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8317
                                            (letrec ((x8320 (char? c1)))
                                              (assert x8320)))
                                           (g8318
                                            (letrec ((x8321 (char? c2)))
                                              (assert x8321)))
                                           (g8319
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8322
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8322))))
                                    g8319)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8323
                                            (letrec ((x8324 (string<=? s1 s2)))
                                              (not x8324))))
                                    g8323)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8325
                                            (letrec ((x8326
                                                      (letrec ((x8327 (cdr x)))
                                                        (car x8327))))
                                              (cdr x8326))))
                                    g8325)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8328
                                            (letrec ((x8330 (list? l)))
                                              (assert x8330)))
                                           (g8329
                                            (letrec ((x-cnd8331 (null? l)))
                                              (if x-cnd8331
                                                #f
                                                (letrec ((x-cnd8332
                                                          (letrec ((x8333
                                                                    (caar l)))
                                                            (equal? x8333 k))))
                                                  (if x-cnd8332
                                                    (car l)
                                                    (letrec ((x8334 (cdr l)))
                                                      (assoc k x8334))))))))
                                    g8329)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8335
                                            (letrec ((x8336 (car x)))
                                              (car x8336))))
                                    g8335)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8337
                                            (letrec ((x8340 (char? c1)))
                                              (assert x8340)))
                                           (g8338
                                            (letrec ((x8341 (char? c2)))
                                              (assert x8341)))
                                           (g8339
                                            (letrec ((x8342 (char<=? c1 c2)))
                                              (not x8342))))
                                    g8339)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8343
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8344
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8344))))
                                    g8343)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8345
                                            (letrec ((x8348 (procedure? f)))
                                              (assert x8348)))
                                           (g8346
                                            (letrec ((x8349 (list? l)))
                                              (assert x8349)))
                                           (g8347
                                            (letrec ((x-cnd8350 (null? l)))
                                              (if x-cnd8350
                                                #t
                                                (letrec ((x-cnd8351 (pair? l)))
                                                  (if x-cnd8351
                                                    (letrec ((g8352
                                                              (letrec ((x8354
                                                                        (car
                                                                         l)))
                                                                (f x8354)))
                                                             (g8353
                                                              (letrec ((x8355
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8355))))
                                                      g8353)
                                                    '()))))))
                                    g8347)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8356
                                            (letrec ((x8358 (number? x)))
                                              (assert x8358)))
                                           (g8357
                                            (letrec ((x-cnd8359 (< x 0)))
                                              (if x-cnd8359 (- 0 x) x))))
                                    g8357)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8360
                                            (letrec ((x8363 (char? c1)))
                                              (assert x8363)))
                                           (g8361
                                            (letrec ((x8364 (char? c2)))
                                              (assert x8364)))
                                           (g8362
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8365
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8365))))
                                    g8362)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8366
                                            (letrec ((x8367
                                                      (letrec ((x8368
                                                                (letrec ((x8369
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8369))))
                                                        (cdr x8368))))
                                              (car x8367))))
                                    g8366)))
                               (newline
                                (lambda () (letrec ((g8370 #f)) g8370)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8371
                                            (letrec ((x8373
                                                      (letrec ((x8374 (* m n)))
                                                        (abs x8374)))
                                                     (x8372 (gcd m n)))
                                              (/ x8373 x8372))))
                                    g8371)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8375
                                            (letrec ((x8377 (number? x)))
                                              (assert x8377)))
                                           (g8376
                                            (letrec ((x8378 (<= x y)))
                                              (not x8378))))
                                    g8376)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8379
                                            (letrec ((x8383 (list? l)))
                                              (assert x8383)))
                                           (g8380
                                            (letrec ((x8384 (number? index)))
                                              (assert x8384)))
                                           (g8381
                                            (letrec ((x8385
                                                      (letrec ((x8386
                                                                (length l)))
                                                        (< index x8386))))
                                              (assert x8385)))
                                           (g8382
                                            (letrec ((x-cnd8387 (= index 0)))
                                              (if x-cnd8387
                                                (car l)
                                                (letrec ((x8389 (cdr l))
                                                         (x8388 (- index 1)))
                                                  (list-ref x8389 x8388))))))
                                    g8382)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8390
                                            (letrec ((x-cnd8391 (= b 0)))
                                              (if x-cnd8391
                                                a
                                                (letrec ((x8392 (modulo a b)))
                                                  (gcd b x8392))))))
                                    g8390))))
                        (letrec ((g8393
                                  (letrec ((g8394
                                            (letrec ((block
                                                      (lambda (x7473
                                                               y7474
                                                               color7475)
                                                        (letrec ((g8395
                                                                  (letrec ((x8396
                                                                            (letrec ((x8397
                                                                                      (letrec ((x8398
                                                                                                (cons
                                                                                                 color7475
                                                                                                 '())))
                                                                                        (cons
                                                                                         y7474
                                                                                         x8398))))
                                                                              (cons
                                                                               x7473
                                                                               x8397))))
                                                                    (cons
                                                                     'block
                                                                     x8396))))
                                                          g8395)))
                                                     (block?
                                                      (lambda (block7472)
                                                        (letrec ((g8399
                                                                  (letrec ((x8400
                                                                            (car
                                                                             block7472)))
                                                                    (eq?
                                                                     x8400
                                                                     'block))))
                                                          g8399)))
                                                     (block-x
                                                      (lambda (block)
                                                        (letrec ((g8401
                                                                  (letrec ((x8402
                                                                            (cdr
                                                                             block)))
                                                                    (car
                                                                     x8402))))
                                                          g8401)))
                                                     (block-y
                                                      (lambda (block)
                                                        (letrec ((g8403
                                                                  (letrec ((x8404
                                                                            (letrec ((x8405
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8405))))
                                                                    (car
                                                                     x8404))))
                                                          g8403)))
                                                     (block-color
                                                      (lambda (block)
                                                        (letrec ((g8406
                                                                  (letrec ((x8407
                                                                            (letrec ((x8408
                                                                                      (letrec ((x8409
                                                                                                (cdr
                                                                                                 block)))
                                                                                        (cdr
                                                                                         x8409))))
                                                                              (cdr
                                                                               x8408))))
                                                                    (car
                                                                     x8407))))
                                                          g8406)))
                                                     (block
                                                      (lambda (x7473
                                                               y7474
                                                               color7475)
                                                        (letrec ((g8410
                                                                  (letrec ((x8411
                                                                            (letrec ((x8412
                                                                                      (letrec ((x8413
                                                                                                (cons
                                                                                                 color7475
                                                                                                 '())))
                                                                                        (cons
                                                                                         y7474
                                                                                         x8413))))
                                                                              (cons
                                                                               x7473
                                                                               x8412))))
                                                                    (cons
                                                                     'block
                                                                     x8411))))
                                                          g8410)))
                                                     (block?
                                                      (lambda (block7472)
                                                        (letrec ((g8414
                                                                  (letrec ((x8415
                                                                            (car
                                                                             block7472)))
                                                                    (eq?
                                                                     x8415
                                                                     'block))))
                                                          g8414)))
                                                     (block-x
                                                      (lambda (block)
                                                        (letrec ((g8416
                                                                  (letrec ((x8417
                                                                            (cdr
                                                                             block)))
                                                                    (car
                                                                     x8417))))
                                                          g8416)))
                                                     (block-y
                                                      (lambda (block)
                                                        (letrec ((g8418
                                                                  (letrec ((x8419
                                                                            (letrec ((x8420
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x8420))))
                                                                    (car
                                                                     x8419))))
                                                          g8418)))
                                                     (block-color
                                                      (lambda (block)
                                                        (letrec ((g8421
                                                                  (letrec ((x8422
                                                                            (letrec ((x8423
                                                                                      (letrec ((x8424
                                                                                                (cdr
                                                                                                 block)))
                                                                                        (cdr
                                                                                         x8424))))
                                                                              (cdr
                                                                               x8423))))
                                                                    (car
                                                                     x8422))))
                                                          g8421))))
                                              (letrec ((g8425
                                                        (letrec ((tetra
                                                                  (lambda (center7480
                                                                           blocks7481)
                                                                    (letrec ((g8426
                                                                              (letrec ((x8427
                                                                                        (letrec ((x8428
                                                                                                  (cons
                                                                                                   blocks7481
                                                                                                   '())))
                                                                                          (cons
                                                                                           center7480
                                                                                           x8428))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x8427))))
                                                                      g8426)))
                                                                 (tetra?
                                                                  (lambda (tetra7479)
                                                                    (letrec ((g8429
                                                                              (letrec ((x8430
                                                                                        (car
                                                                                         tetra7479)))
                                                                                (eq?
                                                                                 x8430
                                                                                 'tetra))))
                                                                      g8429)))
                                                                 (tetra-center
                                                                  (lambda (tetra)
                                                                    (letrec ((g8431
                                                                              (letrec ((x8432
                                                                                        (cdr
                                                                                         tetra)))
                                                                                (car
                                                                                 x8432))))
                                                                      g8431)))
                                                                 (tetra-blocks
                                                                  (lambda (tetra)
                                                                    (letrec ((g8433
                                                                              (letrec ((x8434
                                                                                        (letrec ((x8435
                                                                                                  (cdr
                                                                                                   tetra)))
                                                                                          (cdr
                                                                                           x8435))))
                                                                                (car
                                                                                 x8434))))
                                                                      g8433)))
                                                                 (tetra
                                                                  (lambda (center7480
                                                                           blocks7481)
                                                                    (letrec ((g8436
                                                                              (letrec ((x8437
                                                                                        (letrec ((x8438
                                                                                                  (cons
                                                                                                   blocks7481
                                                                                                   '())))
                                                                                          (cons
                                                                                           center7480
                                                                                           x8438))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x8437))))
                                                                      g8436)))
                                                                 (tetra?
                                                                  (lambda (tetra7479)
                                                                    (letrec ((g8439
                                                                              (letrec ((x8440
                                                                                        (car
                                                                                         tetra7479)))
                                                                                (eq?
                                                                                 x8440
                                                                                 'tetra))))
                                                                      g8439)))
                                                                 (tetra-center
                                                                  (lambda (tetra)
                                                                    (letrec ((g8441
                                                                              (letrec ((x8442
                                                                                        (cdr
                                                                                         tetra)))
                                                                                (car
                                                                                 x8442))))
                                                                      g8441)))
                                                                 (tetra-blocks
                                                                  (lambda (tetra)
                                                                    (letrec ((g8443
                                                                              (letrec ((x8444
                                                                                        (letrec ((x8445
                                                                                                  (cdr
                                                                                                   tetra)))
                                                                                          (cdr
                                                                                           x8445))))
                                                                                (car
                                                                                 x8444))))
                                                                      g8443))))
                                                          (letrec ((g8446
                                                                    (letrec ((world
                                                                              (lambda (tetra7485
                                                                                       blocks7486)
                                                                                (letrec ((g8447
                                                                                          (letrec ((x8448
                                                                                                    (letrec ((x8449
                                                                                                              (cons
                                                                                                               blocks7486
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       tetra7485
                                                                                                       x8449))))
                                                                                            (cons
                                                                                             'world
                                                                                             x8448))))
                                                                                  g8447)))
                                                                             (world?
                                                                              (lambda (world7484)
                                                                                (letrec ((g8450
                                                                                          (letrec ((x8451
                                                                                                    (car
                                                                                                     world7484)))
                                                                                            (eq?
                                                                                             x8451
                                                                                             'world))))
                                                                                  g8450)))
                                                                             (world-tetra
                                                                              (lambda (world)
                                                                                (letrec ((g8452
                                                                                          (letrec ((x8453
                                                                                                    (cdr
                                                                                                     world)))
                                                                                            (car
                                                                                             x8453))))
                                                                                  g8452)))
                                                                             (world-blocks
                                                                              (lambda (world)
                                                                                (letrec ((g8454
                                                                                          (letrec ((x8455
                                                                                                    (letrec ((x8456
                                                                                                              (cdr
                                                                                                               world)))
                                                                                                      (cdr
                                                                                                       x8456))))
                                                                                            (car
                                                                                             x8455))))
                                                                                  g8454)))
                                                                             (world
                                                                              (lambda (tetra7485
                                                                                       blocks7486)
                                                                                (letrec ((g8457
                                                                                          (letrec ((x8458
                                                                                                    (letrec ((x8459
                                                                                                              (cons
                                                                                                               blocks7486
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       tetra7485
                                                                                                       x8459))))
                                                                                            (cons
                                                                                             'world
                                                                                             x8458))))
                                                                                  g8457)))
                                                                             (world?
                                                                              (lambda (world7484)
                                                                                (letrec ((g8460
                                                                                          (letrec ((x8461
                                                                                                    (car
                                                                                                     world7484)))
                                                                                            (eq?
                                                                                             x8461
                                                                                             'world))))
                                                                                  g8460)))
                                                                             (world-tetra
                                                                              (lambda (world)
                                                                                (letrec ((g8462
                                                                                          (letrec ((x8463
                                                                                                    (cdr
                                                                                                     world)))
                                                                                            (car
                                                                                             x8463))))
                                                                                  g8462)))
                                                                             (world-blocks
                                                                              (lambda (world)
                                                                                (letrec ((g8464
                                                                                          (letrec ((x8465
                                                                                                    (letrec ((x8466
                                                                                                              (cdr
                                                                                                               world)))
                                                                                                      (cdr
                                                                                                       x8466))))
                                                                                            (car
                                                                                             x8465))))
                                                                                  g8464))))
                                                                      (letrec ((g8467
                                                                                (letrec ((posn
                                                                                          (lambda (x7490
                                                                                                   y7491)
                                                                                            (letrec ((g8468
                                                                                                      (letrec ((x8469
                                                                                                                (letrec ((x8470
                                                                                                                          (cons
                                                                                                                           y7491
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   x7490
                                                                                                                   x8470))))
                                                                                                        (cons
                                                                                                         'posn
                                                                                                         x8469))))
                                                                                              g8468)))
                                                                                         (posn?
                                                                                          (lambda (posn7489)
                                                                                            (letrec ((g8471
                                                                                                      (letrec ((x8472
                                                                                                                (car
                                                                                                                 posn7489)))
                                                                                                        (eq?
                                                                                                         x8472
                                                                                                         'posn))))
                                                                                              g8471)))
                                                                                         (posn-x
                                                                                          (lambda (posn)
                                                                                            (letrec ((g8473
                                                                                                      (letrec ((x8474
                                                                                                                (cdr
                                                                                                                 posn)))
                                                                                                        (car
                                                                                                         x8474))))
                                                                                              g8473)))
                                                                                         (posn-y
                                                                                          (lambda (posn)
                                                                                            (letrec ((g8475
                                                                                                      (letrec ((x8476
                                                                                                                (letrec ((x8477
                                                                                                                          (cdr
                                                                                                                           posn)))
                                                                                                                  (cdr
                                                                                                                   x8477))))
                                                                                                        (car
                                                                                                         x8476))))
                                                                                              g8475)))
                                                                                         (posn
                                                                                          (lambda (x7490
                                                                                                   y7491)
                                                                                            (letrec ((g8478
                                                                                                      (letrec ((x8479
                                                                                                                (letrec ((x8480
                                                                                                                          (cons
                                                                                                                           y7491
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   x7490
                                                                                                                   x8480))))
                                                                                                        (cons
                                                                                                         'posn
                                                                                                         x8479))))
                                                                                              g8478)))
                                                                                         (posn?
                                                                                          (lambda (posn7489)
                                                                                            (letrec ((g8481
                                                                                                      (letrec ((x8482
                                                                                                                (car
                                                                                                                 posn7489)))
                                                                                                        (eq?
                                                                                                         x8482
                                                                                                         'posn))))
                                                                                              g8481)))
                                                                                         (posn-x
                                                                                          (lambda (posn)
                                                                                            (letrec ((g8483
                                                                                                      (letrec ((x8484
                                                                                                                (cdr
                                                                                                                 posn)))
                                                                                                        (car
                                                                                                         x8484))))
                                                                                              g8483)))
                                                                                         (posn-y
                                                                                          (lambda (posn)
                                                                                            (letrec ((g8485
                                                                                                      (letrec ((x8486
                                                                                                                (letrec ((x8487
                                                                                                                          (cdr
                                                                                                                           posn)))
                                                                                                                  (cdr
                                                                                                                   x8487))))
                                                                                                        (car
                                                                                                         x8486))))
                                                                                              g8485)))
                                                                                         (COLOR/C
                                                                                          symbol?)
                                                                                         (POSN/C
                                                                                          (lambda (j7231
                                                                                                   k7232
                                                                                                   v7230)
                                                                                            (letrec ((g8488
                                                                                                      (letrec ((checked7233
                                                                                                                (letrec ((x8489
                                                                                                                          (car
                                                                                                                           v7230)))
                                                                                                                  (real?/c
                                                                                                                   'j7231
                                                                                                                   'k7232
                                                                                                                   x8489))))
                                                                                                        (letrec ((g8490
                                                                                                                  (letrec ((checked7234
                                                                                                                            (letrec ((x8491
                                                                                                                                      (letrec ((x8492
                                                                                                                                                (cdr
                                                                                                                                                 v7230)))
                                                                                                                                        (car
                                                                                                                                         x8492))))
                                                                                                                              (real?/c
                                                                                                                               'j7231
                                                                                                                               'k7232
                                                                                                                               x8491))))
                                                                                                                    (letrec ((g8493
                                                                                                                              (letrec ((x8494
                                                                                                                                        (letrec ((x8495
                                                                                                                                                  (cons
                                                                                                                                                   checked7234
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7233
                                                                                                                                           x8495))))
                                                                                                                                (cons
                                                                                                                                 posn
                                                                                                                                 x8494))))
                                                                                                                      g8493))))
                                                                                                          g8490))))
                                                                                              g8488)))
                                                                                         (BLOCK/C
                                                                                          (lambda (j7237
                                                                                                   k7238
                                                                                                   v7236)
                                                                                            (letrec ((g8496
                                                                                                      (letrec ((checked7239
                                                                                                                (letrec ((x8497
                                                                                                                          (car
                                                                                                                           v7236)))
                                                                                                                  (real?/c
                                                                                                                   'j7237
                                                                                                                   'k7238
                                                                                                                   x8497))))
                                                                                                        (letrec ((g8498
                                                                                                                  (letrec ((checked7240
                                                                                                                            (letrec ((x8499
                                                                                                                                      (letrec ((x8500
                                                                                                                                                (cdr
                                                                                                                                                 v7236)))
                                                                                                                                        (car
                                                                                                                                         x8500))))
                                                                                                                              (real?/c
                                                                                                                               'j7237
                                                                                                                               'k7238
                                                                                                                               x8499))))
                                                                                                                    (letrec ((g8501
                                                                                                                              (letrec ((checked7241
                                                                                                                                        (letrec ((x8502
                                                                                                                                                  (letrec ((x8503
                                                                                                                                                            (letrec ((x8504
                                                                                                                                                                      (cdr
                                                                                                                                                                       v7236)))
                                                                                                                                                              (cdr
                                                                                                                                                               x8504))))
                                                                                                                                                    (car
                                                                                                                                                     x8503))))
                                                                                                                                          (COLOR/C
                                                                                                                                           'j7237
                                                                                                                                           'k7238
                                                                                                                                           x8502))))
                                                                                                                                (letrec ((g8505
                                                                                                                                          (letrec ((x8506
                                                                                                                                                    (letrec ((x8507
                                                                                                                                                              (letrec ((x8508
                                                                                                                                                                        (cons
                                                                                                                                                                         checked7241
                                                                                                                                                                         '())))
                                                                                                                                                                (cons
                                                                                                                                                                 checked7240
                                                                                                                                                                 x8508))))
                                                                                                                                                      (cons
                                                                                                                                                       checked7239
                                                                                                                                                       x8507))))
                                                                                                                                            (cons
                                                                                                                                             block
                                                                                                                                             x8506))))
                                                                                                                                  g8505))))
                                                                                                                      g8501))))
                                                                                                          g8498))))
                                                                                              g8496)))
                                                                                         (BSET/C
                                                                                          (listof
                                                                                           BLOCK/C))
                                                                                         (TETRA/C
                                                                                          (lambda (j7244
                                                                                                   k7245
                                                                                                   v7243)
                                                                                            (letrec ((g8509
                                                                                                      (letrec ((checked7246
                                                                                                                (letrec ((x8510
                                                                                                                          (car
                                                                                                                           v7243)))
                                                                                                                  (POSN/C
                                                                                                                   'j7244
                                                                                                                   'k7245
                                                                                                                   x8510))))
                                                                                                        (letrec ((g8511
                                                                                                                  (letrec ((checked7247
                                                                                                                            (letrec ((x8512
                                                                                                                                      (letrec ((x8513
                                                                                                                                                (cdr
                                                                                                                                                 v7243)))
                                                                                                                                        (car
                                                                                                                                         x8513))))
                                                                                                                              (BSET/C
                                                                                                                               'j7244
                                                                                                                               'k7245
                                                                                                                               x8512))))
                                                                                                                    (letrec ((g8514
                                                                                                                              (letrec ((x8515
                                                                                                                                        (letrec ((x8516
                                                                                                                                                  (cons
                                                                                                                                                   checked7247
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7246
                                                                                                                                           x8516))))
                                                                                                                                (cons
                                                                                                                                 tetra
                                                                                                                                 x8515))))
                                                                                                                      g8514))))
                                                                                                          g8511))))
                                                                                              g8509)))
                                                                                         (WORLD/C
                                                                                          (lambda (j7250
                                                                                                   k7251
                                                                                                   v7249)
                                                                                            (letrec ((g8517
                                                                                                      (letrec ((checked7252
                                                                                                                (letrec ((x8518
                                                                                                                          (car
                                                                                                                           v7249)))
                                                                                                                  (TETRA/C
                                                                                                                   'j7250
                                                                                                                   'k7251
                                                                                                                   x8518))))
                                                                                                        (letrec ((g8519
                                                                                                                  (letrec ((checked7253
                                                                                                                            (letrec ((x8520
                                                                                                                                      (letrec ((x8521
                                                                                                                                                (cdr
                                                                                                                                                 v7249)))
                                                                                                                                        (car
                                                                                                                                         x8521))))
                                                                                                                              (BSET/C
                                                                                                                               'j7250
                                                                                                                               'k7251
                                                                                                                               x8520))))
                                                                                                                    (letrec ((g8522
                                                                                                                              (letrec ((x8523
                                                                                                                                        (letrec ((x8524
                                                                                                                                                  (cons
                                                                                                                                                   checked7253
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7252
                                                                                                                                           x8524))))
                                                                                                                                (cons
                                                                                                                                 world
                                                                                                                                 x8523))))
                                                                                                                      g8522))))
                                                                                                          g8519))))
                                                                                              g8517)))
                                                                                         (posn=?
                                                                                          (lambda (p1
                                                                                                   p2)
                                                                                            (letrec ((g8525
                                                                                                      (letrec ((x-cnd8526
                                                                                                                (letrec ((x8528
                                                                                                                          (posn-x
                                                                                                                           p1))
                                                                                                                         (x8527
                                                                                                                          (posn-x
                                                                                                                           p2)))
                                                                                                                  (=
                                                                                                                   x8528
                                                                                                                   x8527))))
                                                                                                        (if x-cnd8526
                                                                                                          (letrec ((x8530
                                                                                                                    (posn-y
                                                                                                                     p1))
                                                                                                                   (x8529
                                                                                                                    (posn-y
                                                                                                                     p2)))
                                                                                                            (=
                                                                                                             x8530
                                                                                                             x8529))
                                                                                                          #f))))
                                                                                              g8525)))
                                                                                         (block-size
                                                                                          20)
                                                                                         (board-height
                                                                                          20)
                                                                                         (board-width
                                                                                          10)
                                                                                         (block=?
                                                                                          (lambda (b1
                                                                                                   b2)
                                                                                            (letrec ((g8531
                                                                                                      (letrec ((x-cnd8532
                                                                                                                (letrec ((x8534
                                                                                                                          (block-x
                                                                                                                           b1))
                                                                                                                         (x8533
                                                                                                                          (block-x
                                                                                                                           b2)))
                                                                                                                  (=
                                                                                                                   x8534
                                                                                                                   x8533))))
                                                                                                        (if x-cnd8532
                                                                                                          (letrec ((x8536
                                                                                                                    (block-y
                                                                                                                     b1))
                                                                                                                   (x8535
                                                                                                                    (block-y
                                                                                                                     b2)))
                                                                                                            (=
                                                                                                             x8536
                                                                                                             x8535))
                                                                                                          #f))))
                                                                                              g8531)))
                                                                                         (block-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   b)
                                                                                            (letrec ((g8537
                                                                                                      (letrec ((x8541
                                                                                                                (letrec ((x8542
                                                                                                                          (block-x
                                                                                                                           b)))
                                                                                                                  (+
                                                                                                                   dx
                                                                                                                   x8542)))
                                                                                                               (x8539
                                                                                                                (letrec ((x8540
                                                                                                                          (block-y
                                                                                                                           b)))
                                                                                                                  (+
                                                                                                                   dy
                                                                                                                   x8540)))
                                                                                                               (x8538
                                                                                                                (block-color
                                                                                                                 b)))
                                                                                                        (block
                                                                                                         x8541
                                                                                                         x8539
                                                                                                         x8538))))
                                                                                              g8537)))
                                                                                         (block-rotate-ccw
                                                                                          (lambda (c
                                                                                                   b)
                                                                                            (letrec ((g8543
                                                                                                      (letrec ((x8550
                                                                                                                (letrec ((x8554
                                                                                                                          (posn-x
                                                                                                                           c))
                                                                                                                         (x8551
                                                                                                                          (letrec ((x8553
                                                                                                                                    (posn-y
                                                                                                                                     c))
                                                                                                                                   (x8552
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (-
                                                                                                                             x8553
                                                                                                                             x8552))))
                                                                                                                  (+
                                                                                                                   x8554
                                                                                                                   x8551)))
                                                                                                               (x8545
                                                                                                                (letrec ((x8549
                                                                                                                          (posn-y
                                                                                                                           c))
                                                                                                                         (x8546
                                                                                                                          (letrec ((x8548
                                                                                                                                    (block-x
                                                                                                                                     b))
                                                                                                                                   (x8547
                                                                                                                                    (posn-x
                                                                                                                                     c)))
                                                                                                                            (-
                                                                                                                             x8548
                                                                                                                             x8547))))
                                                                                                                  (+
                                                                                                                   x8549
                                                                                                                   x8546)))
                                                                                                               (x8544
                                                                                                                (block-color
                                                                                                                 b)))
                                                                                                        (block
                                                                                                         x8550
                                                                                                         x8545
                                                                                                         x8544))))
                                                                                              g8543)))
                                                                                         (block-rotate-cw
                                                                                          (lambda (c
                                                                                                   b)
                                                                                            (letrec ((g8555
                                                                                                      (letrec ((x8556
                                                                                                                (letrec ((x8557
                                                                                                                          (block-rotate-ccw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (block-rotate-ccw
                                                                                                                   c
                                                                                                                   x8557))))
                                                                                                        (block-rotate-ccw
                                                                                                         c
                                                                                                         x8556))))
                                                                                              g8555)))
                                                                                         (ormap
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g8558
                                                                                                      (if cnd
                                                                                                        (letrec ((g8559
                                                                                                                  #f))
                                                                                                          g8559)
                                                                                                        (letrec ((g8560
                                                                                                                  (letrec ((x8563
                                                                                                                            (letrec ((x8564
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (p?
                                                                                                                               x8564)))
                                                                                                                           (x8561
                                                                                                                            (letrec ((x8562
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (ormap
                                                                                                                               p?
                                                                                                                               x8562))))
                                                                                                                    (or x8563
                                                                                                                        x8561))))
                                                                                                          g8560))))
                                                                                              g8558)))
                                                                                         (andmap
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g8565
                                                                                                      (if cnd
                                                                                                        (letrec ((g8566
                                                                                                                  #t))
                                                                                                          g8566)
                                                                                                        (letrec ((g8567
                                                                                                                  (letrec ((x8570
                                                                                                                            (letrec ((x8571
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (p?
                                                                                                                               x8571)))
                                                                                                                           (x8568
                                                                                                                            (letrec ((x8569
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (andmap
                                                                                                                               p?
                                                                                                                               x8569))))
                                                                                                                    (and x8570
                                                                                                                         x8568))))
                                                                                                          g8567))))
                                                                                              g8565)))
                                                                                         (map
                                                                                          (lambda (f
                                                                                                   xs)
                                                                                            (letrec ((g8572
                                                                                                      (if cnd
                                                                                                        (letrec ((g8573
                                                                                                                  null))
                                                                                                          g8573)
                                                                                                        (letrec ((g8574
                                                                                                                  (letrec ((x8577
                                                                                                                            (letrec ((x8578
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (f
                                                                                                                               x8578)))
                                                                                                                           (x8575
                                                                                                                            (letrec ((x8576
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (map
                                                                                                                               f
                                                                                                                               x8576))))
                                                                                                                    (cons
                                                                                                                     x8577
                                                                                                                     x8575))))
                                                                                                          g8574))))
                                                                                              g8572)))
                                                                                         (filter
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g8579
                                                                                                      (if cnd
                                                                                                        (letrec ((g8580
                                                                                                                  null))
                                                                                                          g8580)
                                                                                                        (if cnd
                                                                                                          (letrec ((g8581
                                                                                                                    (letrec ((x8584
                                                                                                                              (car
                                                                                                                               xs))
                                                                                                                             (x8582
                                                                                                                              (letrec ((x8583
                                                                                                                                        (cdr
                                                                                                                                         xs)))
                                                                                                                                (filter
                                                                                                                                 p?
                                                                                                                                 x8583))))
                                                                                                                      (cons
                                                                                                                       x8584
                                                                                                                       x8582))))
                                                                                                            g8581)
                                                                                                          (letrec ((g8585
                                                                                                                    (letrec ((x8586
                                                                                                                              (cdr
                                                                                                                               xs)))
                                                                                                                      (filter
                                                                                                                       p?
                                                                                                                       x8586))))
                                                                                                            g8585)))))
                                                                                              g8579)))
                                                                                         (append
                                                                                          (lambda (l
                                                                                                   r)
                                                                                            (letrec ((g8587
                                                                                                      (if cnd
                                                                                                        (letrec ((g8588
                                                                                                                  r))
                                                                                                          g8588)
                                                                                                        (letrec ((g8589
                                                                                                                  (letrec ((x8592
                                                                                                                            (car
                                                                                                                             l))
                                                                                                                           (x8590
                                                                                                                            (letrec ((x8591
                                                                                                                                      (cdr
                                                                                                                                       l)))
                                                                                                                              (append
                                                                                                                               x8591
                                                                                                                               r))))
                                                                                                                    (cons
                                                                                                                     x8592
                                                                                                                     x8590))))
                                                                                                          g8589))))
                                                                                              g8587)))
                                                                                         (length
                                                                                          (lambda (xs)
                                                                                            (letrec ((g8593
                                                                                                      (if cnd
                                                                                                        (letrec ((g8594
                                                                                                                  0))
                                                                                                          g8594)
                                                                                                        (letrec ((g8595
                                                                                                                  (letrec ((x8596
                                                                                                                            (letrec ((x8597
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (length
                                                                                                                               x8597))))
                                                                                                                    (+
                                                                                                                     1
                                                                                                                     x8596))))
                                                                                                          g8595))))
                                                                                              g8593)))
                                                                                         (foldr
                                                                                          (lambda (f
                                                                                                   a
                                                                                                   xs)
                                                                                            (letrec ((g8598
                                                                                                      (if cnd
                                                                                                        (letrec ((g8599
                                                                                                                  a))
                                                                                                          g8599)
                                                                                                        (letrec ((g8600
                                                                                                                  (letrec ((x8603
                                                                                                                            (car
                                                                                                                             xs))
                                                                                                                           (x8601
                                                                                                                            (letrec ((x8602
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (foldr
                                                                                                                               f
                                                                                                                               a
                                                                                                                               x8602))))
                                                                                                                    (f
                                                                                                                     x8603
                                                                                                                     x8601))))
                                                                                                          g8600))))
                                                                                              g8598)))
                                                                                         (blocks-contains?
                                                                                          (lambda (bs
                                                                                                   b)
                                                                                            (letrec ((g8604
                                                                                                      (letrec ((x8605
                                                                                                                (letrec ((x8607
                                                                                                                          (c))
                                                                                                                         (x8606
                                                                                                                          (block=?
                                                                                                                           b
                                                                                                                           c)))
                                                                                                                  (λ x8607
                                                                                                                    x8606))))
                                                                                                        (ormap
                                                                                                         x8605
                                                                                                         bs))))
                                                                                              g8604)))
                                                                                         (blocks-subset?
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g8608
                                                                                                      (letrec ((x8609
                                                                                                                (letrec ((x8611
                                                                                                                          (b))
                                                                                                                         (x8610
                                                                                                                          (blocks-contains?
                                                                                                                           bs2
                                                                                                                           b)))
                                                                                                                  (λ x8611
                                                                                                                    x8610))))
                                                                                                        (andmap
                                                                                                         x8609
                                                                                                         bs1))))
                                                                                              g8608)))
                                                                                         (blocks=?
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g8612
                                                                                                      (letrec ((x-cnd8613
                                                                                                                (blocks-subset?
                                                                                                                 bs1
                                                                                                                 bs2)))
                                                                                                        (if x-cnd8613
                                                                                                          (blocks-subset?
                                                                                                           bs2
                                                                                                           bs1)
                                                                                                          #f))))
                                                                                              g8612)))
                                                                                         (blocks-intersect
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g8614
                                                                                                      (letrec ((x8615
                                                                                                                (letrec ((x8617
                                                                                                                          (b))
                                                                                                                         (x8616
                                                                                                                          (blocks-contains?
                                                                                                                           bs2
                                                                                                                           b)))
                                                                                                                  (λ x8617
                                                                                                                    x8616))))
                                                                                                        (filter
                                                                                                         x8615
                                                                                                         bs1))))
                                                                                              g8614)))
                                                                                         (blocks-count
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8618
                                                                                                      (length
                                                                                                       bs)))
                                                                                              g8618)))
                                                                                         (blocks-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   bs)
                                                                                            (letrec ((g8619
                                                                                                      (letrec ((x8620
                                                                                                                (letrec ((x8622
                                                                                                                          (b))
                                                                                                                         (x8621
                                                                                                                          (block-move
                                                                                                                           dx
                                                                                                                           dy
                                                                                                                           b)))
                                                                                                                  (λ x8622
                                                                                                                    x8621))))
                                                                                                        (map
                                                                                                         x8620
                                                                                                         bs))))
                                                                                              g8619)))
                                                                                         (blocks-rotate-ccw
                                                                                          (lambda (c
                                                                                                   bs)
                                                                                            (letrec ((g8623
                                                                                                      (letrec ((x8624
                                                                                                                (letrec ((x8626
                                                                                                                          (b))
                                                                                                                         (x8625
                                                                                                                          (block-rotate-ccw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (λ x8626
                                                                                                                    x8625))))
                                                                                                        (map
                                                                                                         x8624
                                                                                                         bs))))
                                                                                              g8623)))
                                                                                         (blocks-rotate-cw
                                                                                          (lambda (c
                                                                                                   bs)
                                                                                            (letrec ((g8627
                                                                                                      (letrec ((x8628
                                                                                                                (letrec ((x8630
                                                                                                                          (b))
                                                                                                                         (x8629
                                                                                                                          (block-rotate-cw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (λ x8630
                                                                                                                    x8629))))
                                                                                                        (map
                                                                                                         x8628
                                                                                                         bs))))
                                                                                              g8627)))
                                                                                         (blocks-change-color
                                                                                          (lambda (bs
                                                                                                   c)
                                                                                            (letrec ((g8631
                                                                                                      (letrec ((x8632
                                                                                                                (letrec ((x8636
                                                                                                                          (b))
                                                                                                                         (x8633
                                                                                                                          (letrec ((x8635
                                                                                                                                    (block-x
                                                                                                                                     b))
                                                                                                                                   (x8634
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (block
                                                                                                                             x8635
                                                                                                                             x8634
                                                                                                                             c))))
                                                                                                                  (λ x8636
                                                                                                                    x8633))))
                                                                                                        (map
                                                                                                         x8632
                                                                                                         bs))))
                                                                                              g8631)))
                                                                                         (blocks-row
                                                                                          (lambda (bs
                                                                                                   i)
                                                                                            (letrec ((g8637
                                                                                                      (letrec ((x8638
                                                                                                                (letrec ((x8641
                                                                                                                          (b))
                                                                                                                         (x8639
                                                                                                                          (letrec ((x8640
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (=
                                                                                                                             i
                                                                                                                             x8640))))
                                                                                                                  (λ x8641
                                                                                                                    x8639))))
                                                                                                        (filter
                                                                                                         x8638
                                                                                                         bs))))
                                                                                              g8637)))
                                                                                         (full-row?
                                                                                          (lambda (bs
                                                                                                   i)
                                                                                            (letrec ((g8642
                                                                                                      (letrec ((x8643
                                                                                                                (letrec ((x8644
                                                                                                                          (blocks-row
                                                                                                                           bs
                                                                                                                           i)))
                                                                                                                  (blocks-count
                                                                                                                   x8644))))
                                                                                                        (=
                                                                                                         board-width
                                                                                                         x8643))))
                                                                                              g8642)))
                                                                                         (blocks-overflow?
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8645
                                                                                                      (letrec ((x8646
                                                                                                                (letrec ((x8649
                                                                                                                          (b))
                                                                                                                         (x8647
                                                                                                                          (letrec ((x8648
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (<=
                                                                                                                             x8648
                                                                                                                             0))))
                                                                                                                  (λ x8649
                                                                                                                    x8647))))
                                                                                                        (ormap
                                                                                                         x8646
                                                                                                         bs))))
                                                                                              g8645)))
                                                                                         (blocks-union
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g8650
                                                                                                      (letrec ((x8651
                                                                                                                (letrec ((x8655
                                                                                                                          (b
                                                                                                                           bs))
                                                                                                                         (x8652
                                                                                                                          (if cnd
                                                                                                                            (letrec ((g8653
                                                                                                                                      bs))
                                                                                                                              g8653)
                                                                                                                            (letrec ((g8654
                                                                                                                                      (cons
                                                                                                                                       b
                                                                                                                                       bs)))
                                                                                                                              g8654))))
                                                                                                                  (λ x8655
                                                                                                                    x8652))))
                                                                                                        (foldr
                                                                                                         x8651
                                                                                                         bs2
                                                                                                         bs1))))
                                                                                              g8650)))
                                                                                         (blocks-max-y
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8656
                                                                                                      (letrec ((x8657
                                                                                                                (letrec ((x8660
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x8658
                                                                                                                          (letrec ((x8659
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (max
                                                                                                                             x8659
                                                                                                                             n))))
                                                                                                                  (λ x8660
                                                                                                                    x8658))))
                                                                                                        (foldr
                                                                                                         x8657
                                                                                                         0
                                                                                                         bs))))
                                                                                              g8656)))
                                                                                         (blocks-min-x
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8661
                                                                                                      (letrec ((x8662
                                                                                                                (letrec ((x8665
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x8663
                                                                                                                          (letrec ((x8664
                                                                                                                                    (block-x
                                                                                                                                     b)))
                                                                                                                            (min
                                                                                                                             x8664
                                                                                                                             n))))
                                                                                                                  (λ x8665
                                                                                                                    x8663))))
                                                                                                        (foldr
                                                                                                         x8662
                                                                                                         board-width
                                                                                                         bs))))
                                                                                              g8661)))
                                                                                         (blocks-max-x
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8666
                                                                                                      (letrec ((x8667
                                                                                                                (letrec ((x8670
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x8668
                                                                                                                          (letrec ((x8669
                                                                                                                                    (block-x
                                                                                                                                     b)))
                                                                                                                            (max
                                                                                                                             x8669
                                                                                                                             n))))
                                                                                                                  (λ x8670
                                                                                                                    x8668))))
                                                                                                        (foldr
                                                                                                         x8667
                                                                                                         0
                                                                                                         bs))))
                                                                                              g8666)))
                                                                                         (eliminate-full-rows
                                                                                          (lambda (bs)
                                                                                            (letrec ((g8671
                                                                                                      (elim-row
                                                                                                       bs
                                                                                                       board-height
                                                                                                       0)))
                                                                                              g8671)))
                                                                                         (elim-row
                                                                                          (lambda (bs
                                                                                                   i
                                                                                                   offset)
                                                                                            (letrec ((g8672
                                                                                                      (if cnd
                                                                                                        (letrec ((g8673
                                                                                                                  empty))
                                                                                                          g8673)
                                                                                                        (if cnd
                                                                                                          (letrec ((g8674
                                                                                                                    (letrec ((x8676
                                                                                                                              (sub1
                                                                                                                               i))
                                                                                                                             (x8675
                                                                                                                              (add1
                                                                                                                               offset)))
                                                                                                                      (elim-row
                                                                                                                       bs
                                                                                                                       x8676
                                                                                                                       x8675))))
                                                                                                            g8674)
                                                                                                          (letrec ((g8677
                                                                                                                    (letrec ((x8680
                                                                                                                              (letrec ((x8681
                                                                                                                                        (sub1
                                                                                                                                         i)))
                                                                                                                                (elim-row
                                                                                                                                 bs
                                                                                                                                 x8681
                                                                                                                                 offset)))
                                                                                                                             (x8678
                                                                                                                              (letrec ((x8679
                                                                                                                                        (blocks-row
                                                                                                                                         bs
                                                                                                                                         i)))
                                                                                                                                (blocks-move
                                                                                                                                 0
                                                                                                                                 offset
                                                                                                                                 x8679))))
                                                                                                                      (blocks-union
                                                                                                                       x8680
                                                                                                                       x8678))))
                                                                                                            g8677)))))
                                                                                              g8672)))
                                                                                         (tetra-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   t)
                                                                                            (letrec ((g8682
                                                                                                      (letrec ((x8685
                                                                                                                (letrec ((x8689
                                                                                                                          (letrec ((x8690
                                                                                                                                    (letrec ((x8691
                                                                                                                                              (tetra-center
                                                                                                                                               t)))
                                                                                                                                      (posn-x
                                                                                                                                       x8691))))
                                                                                                                            (+
                                                                                                                             dx
                                                                                                                             x8690)))
                                                                                                                         (x8686
                                                                                                                          (letrec ((x8687
                                                                                                                                    (letrec ((x8688
                                                                                                                                              (tetra-center
                                                                                                                                               t)))
                                                                                                                                      (posn-y
                                                                                                                                       x8688))))
                                                                                                                            (+
                                                                                                                             dy
                                                                                                                             x8687))))
                                                                                                                  (posn
                                                                                                                   x8689
                                                                                                                   x8686)))
                                                                                                               (x8683
                                                                                                                (letrec ((x8684
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-move
                                                                                                                   dx
                                                                                                                   dy
                                                                                                                   x8684))))
                                                                                                        (tetra
                                                                                                         x8685
                                                                                                         x8683))))
                                                                                              g8682)))
                                                                                         (tetra-rotate-ccw
                                                                                          (lambda (t)
                                                                                            (letrec ((g8692
                                                                                                      (letrec ((x8696
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x8693
                                                                                                                (letrec ((x8695
                                                                                                                          (tetra-center
                                                                                                                           t))
                                                                                                                         (x8694
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-rotate-ccw
                                                                                                                   x8695
                                                                                                                   x8694))))
                                                                                                        (tetra
                                                                                                         x8696
                                                                                                         x8693))))
                                                                                              g8692)))
                                                                                         (tetra-rotate-cw
                                                                                          (lambda (t)
                                                                                            (letrec ((g8697
                                                                                                      (letrec ((x8701
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x8698
                                                                                                                (letrec ((x8700
                                                                                                                          (tetra-center
                                                                                                                           t))
                                                                                                                         (x8699
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-rotate-cw
                                                                                                                   x8700
                                                                                                                   x8699))))
                                                                                                        (tetra
                                                                                                         x8701
                                                                                                         x8698))))
                                                                                              g8697)))
                                                                                         (tetra-overlaps-blocks?
                                                                                          (lambda (t
                                                                                                   bs)
                                                                                            (letrec ((g8702
                                                                                                      (letrec ((x8703
                                                                                                                (letrec ((x8704
                                                                                                                          (letrec ((x8705
                                                                                                                                    (tetra-blocks
                                                                                                                                     t)))
                                                                                                                            (blocks-intersect
                                                                                                                             x8705
                                                                                                                             bs))))
                                                                                                                  (false?
                                                                                                                   x8704))))
                                                                                                        (false?
                                                                                                         x8703))))
                                                                                              g8702)))
                                                                                         (tetra-change-color
                                                                                          (lambda (t
                                                                                                   c)
                                                                                            (letrec ((g8706
                                                                                                      (letrec ((x8709
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x8707
                                                                                                                (letrec ((x8708
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-change-color
                                                                                                                   x8708
                                                                                                                   c))))
                                                                                                        (tetra
                                                                                                         x8709
                                                                                                         x8707))))
                                                                                              g8706)))
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
                                                                                            (letrec ((g8710
                                                                                                      (letrec ((x8711
                                                                                                                (letrec ((x8717
                                                                                                                          (posn
                                                                                                                           xc
                                                                                                                           yc))
                                                                                                                         (x8712
                                                                                                                          (letrec ((x8716
                                                                                                                                    (block
                                                                                                                                     x1
                                                                                                                                     y1
                                                                                                                                     color))
                                                                                                                                   (x8715
                                                                                                                                    (block
                                                                                                                                     x2
                                                                                                                                     y2
                                                                                                                                     color))
                                                                                                                                   (x8714
                                                                                                                                    (block
                                                                                                                                     x3
                                                                                                                                     y3
                                                                                                                                     color))
                                                                                                                                   (x8713
                                                                                                                                    (block
                                                                                                                                     x4
                                                                                                                                     y4
                                                                                                                                     color)))
                                                                                                                            (list
                                                                                                                             x8716
                                                                                                                             x8715
                                                                                                                             x8714
                                                                                                                             x8713))))
                                                                                                                  (tetra
                                                                                                                   x8717
                                                                                                                   x8712))))
                                                                                                        (tetra-move
                                                                                                         3
                                                                                                         0
                                                                                                         x8711))))
                                                                                              g8710)))
                                                                                         (touchdown
                                                                                          (lambda (w
                                                                                                   tetras)
                                                                                            (letrec ((g8718
                                                                                                      (letrec ((x8724
                                                                                                                (list-pick-random
                                                                                                                 tetras))
                                                                                                               (x8719
                                                                                                                (letrec ((x8720
                                                                                                                          (letrec ((x8722
                                                                                                                                    (letrec ((x8723
                                                                                                                                              (world-tetra
                                                                                                                                               w)))
                                                                                                                                      (tetra-blocks
                                                                                                                                       x8723)))
                                                                                                                                   (x8721
                                                                                                                                    (world-blocks
                                                                                                                                     w)))
                                                                                                                            (blocks-union
                                                                                                                             x8722
                                                                                                                             x8721))))
                                                                                                                  (eliminate-full-rows
                                                                                                                   x8720))))
                                                                                                        (world
                                                                                                         x8724
                                                                                                         x8719))))
                                                                                              g8718)))
                                                                                         (world-jump-down
                                                                                          (lambda (w)
                                                                                            (letrec ((g8725
                                                                                                      (if cnd
                                                                                                        (letrec ((g8726
                                                                                                                  w))
                                                                                                          g8726)
                                                                                                        (letrec ((g8727
                                                                                                                  (letrec ((x8728
                                                                                                                            (letrec ((x8730
                                                                                                                                      (letrec ((x8731
                                                                                                                                                (world-tetra
                                                                                                                                                 w)))
                                                                                                                                        (tetra-move
                                                                                                                                         0
                                                                                                                                         1
                                                                                                                                         x8731)))
                                                                                                                                     (x8729
                                                                                                                                      (world-blocks
                                                                                                                                       w)))
                                                                                                                              (world
                                                                                                                               x8730
                                                                                                                               x8729))))
                                                                                                                    (world-jump-down
                                                                                                                     x8728))))
                                                                                                          g8727))))
                                                                                              g8725)))
                                                                                         (landed-on-blocks?
                                                                                          (lambda (w)
                                                                                            (letrec ((g8732
                                                                                                      (letrec ((x8734
                                                                                                                (letrec ((x8735
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-move
                                                                                                                   0
                                                                                                                   1
                                                                                                                   x8735)))
                                                                                                               (x8733
                                                                                                                (world-blocks
                                                                                                                 w)))
                                                                                                        (tetra-overlaps-blocks?
                                                                                                         x8734
                                                                                                         x8733))))
                                                                                              g8732)))
                                                                                         (landed-on-floor?
                                                                                          (lambda (w)
                                                                                            (letrec ((g8736
                                                                                                      (letrec ((x8738
                                                                                                                (letrec ((x8739
                                                                                                                          (letrec ((x8740
                                                                                                                                    (world-tetra
                                                                                                                                     w)))
                                                                                                                            (tetra-blocks
                                                                                                                             x8740))))
                                                                                                                  (blocks-max-y
                                                                                                                   x8739)))
                                                                                                               (x8737
                                                                                                                (sub1
                                                                                                                 board-height)))
                                                                                                        (=
                                                                                                         x8738
                                                                                                         x8737))))
                                                                                              g8736)))
                                                                                         (landed?
                                                                                          (lambda (w)
                                                                                            (letrec ((g8741
                                                                                                      (letrec ((val7160
                                                                                                                (landed-on-blocks?
                                                                                                                 w)))
                                                                                                        (letrec ((g8742
                                                                                                                  (if val7160
                                                                                                                    val7160
                                                                                                                    (landed-on-floor?
                                                                                                                     w))))
                                                                                                          g8742))))
                                                                                              g8741)))
                                                                                         (next-world
                                                                                          (lambda (w
                                                                                                   tetras)
                                                                                            (letrec ((g8743
                                                                                                      (if cnd
                                                                                                        (letrec ((g8744
                                                                                                                  (touchdown
                                                                                                                   w
                                                                                                                   tetras)))
                                                                                                          g8744)
                                                                                                        (letrec ((g8745
                                                                                                                  (letrec ((x8747
                                                                                                                            (letrec ((x8748
                                                                                                                                      (world-tetra
                                                                                                                                       w)))
                                                                                                                              (tetra-move
                                                                                                                               0
                                                                                                                               1
                                                                                                                               x8748)))
                                                                                                                           (x8746
                                                                                                                            (world-blocks
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     x8747
                                                                                                                     x8746))))
                                                                                                          g8745))))
                                                                                              g8743)))
                                                                                         (try-new-tetra
                                                                                          (lambda (w
                                                                                                   new-tetra)
                                                                                            (letrec ((g8749
                                                                                                      (if cnd
                                                                                                        (letrec ((g8750
                                                                                                                  w))
                                                                                                          g8750)
                                                                                                        (letrec ((g8751
                                                                                                                  (letrec ((x8752
                                                                                                                            (world-blocks
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     new-tetra
                                                                                                                     x8752))))
                                                                                                          g8751))))
                                                                                              g8749)))
                                                                                         (world-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   w)
                                                                                            (letrec ((g8753
                                                                                                      (letrec ((x8754
                                                                                                                (letrec ((x8755
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-move
                                                                                                                   dx
                                                                                                                   dy
                                                                                                                   x8755))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x8754))))
                                                                                              g8753)))
                                                                                         (world-rotate-ccw
                                                                                          (lambda (w)
                                                                                            (letrec ((g8756
                                                                                                      (letrec ((x8757
                                                                                                                (letrec ((x8758
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-rotate-ccw
                                                                                                                   x8758))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x8757))))
                                                                                              g8756)))
                                                                                         (world-rotate-cw
                                                                                          (lambda (w)
                                                                                            (letrec ((g8759
                                                                                                      (letrec ((x8760
                                                                                                                (letrec ((x8761
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-rotate-cw
                                                                                                                   x8761))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x8760))))
                                                                                              g8759)))
                                                                                         (ghost-blocks
                                                                                          (lambda (w)
                                                                                            (letrec ((g8762
                                                                                                      (letrec ((x8763
                                                                                                                (letrec ((x8764
                                                                                                                          (letrec ((x8765
                                                                                                                                    (world-jump-down
                                                                                                                                     w)))
                                                                                                                            (world-tetra
                                                                                                                             x8765))))
                                                                                                                  (tetra-change-color
                                                                                                                   x8764
                                                                                                                   'gray))))
                                                                                                        (tetra-blocks
                                                                                                         x8763))))
                                                                                              g8762)))
                                                                                         (world-key-move
                                                                                          (lambda (w
                                                                                                   k)
                                                                                            (letrec ((g8766
                                                                                                      (if cnd
                                                                                                        (letrec ((g8767
                                                                                                                  (world-move
                                                                                                                   neg-1
                                                                                                                   0
                                                                                                                   w)))
                                                                                                          g8767)
                                                                                                        (if cnd
                                                                                                          (letrec ((g8768
                                                                                                                    (world-move
                                                                                                                     1
                                                                                                                     0
                                                                                                                     w)))
                                                                                                            g8768)
                                                                                                          (if cnd
                                                                                                            (letrec ((g8769
                                                                                                                      (world-jump-down
                                                                                                                       w)))
                                                                                                              g8769)
                                                                                                            (if cnd
                                                                                                              (letrec ((g8770
                                                                                                                        (world-rotate-ccw
                                                                                                                         w)))
                                                                                                                g8770)
                                                                                                              (if cnd
                                                                                                                (letrec ((g8771
                                                                                                                          (world-rotate-cw
                                                                                                                           w)))
                                                                                                                  g8771)
                                                                                                                (letrec ((g8772
                                                                                                                          w))
                                                                                                                  g8772))))))))
                                                                                              g8766))))
                                                                                  (letrec ((g8773
                                                                                            (letrec ((image
                                                                                                      (lambda ()
                                                                                                        (letrec ((g8774
                                                                                                                  (cons
                                                                                                                   'image
                                                                                                                   '())))
                                                                                                          g8774)))
                                                                                                     (image?
                                                                                                      (lambda (image7494)
                                                                                                        (letrec ((g8775
                                                                                                                  (letrec ((x8776
                                                                                                                            (car
                                                                                                                             image7494)))
                                                                                                                    (eq?
                                                                                                                     x8776
                                                                                                                     'image))))
                                                                                                          g8775)))
                                                                                                     (image
                                                                                                      (lambda ()
                                                                                                        (letrec ((g8777
                                                                                                                  (cons
                                                                                                                   'image
                                                                                                                   '())))
                                                                                                          g8777)))
                                                                                                     (image?
                                                                                                      (lambda (image7494)
                                                                                                        (letrec ((g8778
                                                                                                                  (letrec ((x8779
                                                                                                                            (car
                                                                                                                             image7494)))
                                                                                                                    (eq?
                                                                                                                     x8779
                                                                                                                     'image))))
                                                                                                          g8778)))
                                                                                                     (overlay
                                                                                                      (lambda (i₁
                                                                                                               i₂)
                                                                                                        (letrec ((g8780
                                                                                                                  (image)))
                                                                                                          g8780)))
                                                                                                     (circle
                                                                                                      (lambda (r
                                                                                                               m
                                                                                                               c)
                                                                                                        (letrec ((g8781
                                                                                                                  (image)))
                                                                                                          g8781)))
                                                                                                     (rectangle
                                                                                                      (lambda (w
                                                                                                               h
                                                                                                               m
                                                                                                               c)
                                                                                                        (letrec ((g8782
                                                                                                                  (image)))
                                                                                                          g8782)))
                                                                                                     (place-image
                                                                                                      (lambda (i₁
                                                                                                               r
                                                                                                               c
                                                                                                               i₂)
                                                                                                        (letrec ((g8783
                                                                                                                  (image)))
                                                                                                          g8783)))
                                                                                                     (empty-scene
                                                                                                      (lambda (w
                                                                                                               h)
                                                                                                        (letrec ((g8784
                                                                                                                  (image)))
                                                                                                          g8784)))
                                                                                                     (list-pick-random
                                                                                                      (lambda (xs)
                                                                                                        (letrec ((g8785
                                                                                                                  (if cnd
                                                                                                                    (letrec ((g8786
                                                                                                                              (car
                                                                                                                               xs)))
                                                                                                                      g8786)
                                                                                                                    (letrec ((g8787
                                                                                                                              (letrec ((x8788
                                                                                                                                        (cdr
                                                                                                                                         xs)))
                                                                                                                                (list-pick-random
                                                                                                                                 x8788))))
                                                                                                                      g8787))))
                                                                                                          g8785)))
                                                                                                     (neg-1
                                                                                                      (random
                                                                                                       10))
                                                                                                     (world->image
                                                                                                      (lambda (w)
                                                                                                        (letrec ((g8789
                                                                                                                  (letrec ((x8793
                                                                                                                            (letrec ((x8794
                                                                                                                                      (letrec ((x8798
                                                                                                                                                (letrec ((x8799
                                                                                                                                                          (world-tetra
                                                                                                                                                           w)))
                                                                                                                                                  (tetra-blocks
                                                                                                                                                   x8799)))
                                                                                                                                               (x8795
                                                                                                                                                (letrec ((x8797
                                                                                                                                                          (ghost-blocks
                                                                                                                                                           w))
                                                                                                                                                         (x8796
                                                                                                                                                          (world-blocks
                                                                                                                                                           w)))
                                                                                                                                                  (append
                                                                                                                                                   x8797
                                                                                                                                                   x8796))))
                                                                                                                                        (append
                                                                                                                                         x8798
                                                                                                                                         x8795))))
                                                                                                                              (blocks->image
                                                                                                                               x8794)))
                                                                                                                           (x8790
                                                                                                                            (letrec ((x8792
                                                                                                                                      (*
                                                                                                                                       board-width
                                                                                                                                       block-size))
                                                                                                                                     (x8791
                                                                                                                                      (*
                                                                                                                                       board-height
                                                                                                                                       block-size)))
                                                                                                                              (empty-scene
                                                                                                                               x8792
                                                                                                                               x8791))))
                                                                                                                    (place-image
                                                                                                                     x8793
                                                                                                                     0
                                                                                                                     0
                                                                                                                     x8790))))
                                                                                                          g8789)))
                                                                                                     (blocks->image
                                                                                                      (lambda (bs)
                                                                                                        (letrec ((g8800
                                                                                                                  (letrec ((x8806
                                                                                                                            (letrec ((x8810
                                                                                                                                      (b
                                                                                                                                       img))
                                                                                                                                     (x8807
                                                                                                                                      (if cnd
                                                                                                                                        (letrec ((g8808
                                                                                                                                                  (place-block
                                                                                                                                                   b
                                                                                                                                                   img)))
                                                                                                                                          g8808)
                                                                                                                                        (letrec ((g8809
                                                                                                                                                  img))
                                                                                                                                          g8809))))
                                                                                                                              (λ x8810
                                                                                                                                x8807)))
                                                                                                                           (x8801
                                                                                                                            (letrec ((x8804
                                                                                                                                      (letrec ((x8805
                                                                                                                                                (*
                                                                                                                                                 board-width
                                                                                                                                                 block-size)))
                                                                                                                                        (add1
                                                                                                                                         x8805)))
                                                                                                                                     (x8802
                                                                                                                                      (letrec ((x8803
                                                                                                                                                (*
                                                                                                                                                 board-height
                                                                                                                                                 block-size)))
                                                                                                                                        (add1
                                                                                                                                         x8803))))
                                                                                                                              (empty-scene
                                                                                                                               x8804
                                                                                                                               x8802))))
                                                                                                                    (foldr
                                                                                                                     x8806
                                                                                                                     x8801
                                                                                                                     bs))))
                                                                                                          g8800)))
                                                                                                     (block->image
                                                                                                      (lambda (b)
                                                                                                        (letrec ((g8811
                                                                                                                  (letrec ((x8815
                                                                                                                            (letrec ((x8818
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x8817
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x8816
                                                                                                                                      (block-color
                                                                                                                                       b)))
                                                                                                                              (rectangle
                                                                                                                               x8818
                                                                                                                               x8817
                                                                                                                               'solid
                                                                                                                               x8816)))
                                                                                                                           (x8812
                                                                                                                            (letrec ((x8814
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x8813
                                                                                                                                      (add1
                                                                                                                                       block-size)))
                                                                                                                              (rectangle
                                                                                                                               x8814
                                                                                                                               x8813
                                                                                                                               'outline
                                                                                                                               'black))))
                                                                                                                    (overlay
                                                                                                                     x8815
                                                                                                                     x8812))))
                                                                                                          g8811)))
                                                                                                     (place-block
                                                                                                      (lambda (b
                                                                                                               scene)
                                                                                                        (letrec ((g8819
                                                                                                                  (letrec ((x8828
                                                                                                                            (block->image
                                                                                                                             b))
                                                                                                                           (x8824
                                                                                                                            (letrec ((x8826
                                                                                                                                      (letrec ((x8827
                                                                                                                                                (block-x
                                                                                                                                                 b)))
                                                                                                                                        (*
                                                                                                                                         x8827
                                                                                                                                         block-size)))
                                                                                                                                     (x8825
                                                                                                                                      (/
                                                                                                                                       block-size
                                                                                                                                       2)))
                                                                                                                              (+
                                                                                                                               x8826
                                                                                                                               x8825)))
                                                                                                                           (x8820
                                                                                                                            (letrec ((x8822
                                                                                                                                      (letrec ((x8823
                                                                                                                                                (block-y
                                                                                                                                                 b)))
                                                                                                                                        (*
                                                                                                                                         x8823
                                                                                                                                         block-size)))
                                                                                                                                     (x8821
                                                                                                                                      (/
                                                                                                                                       block-size
                                                                                                                                       2)))
                                                                                                                              (+
                                                                                                                               x8822
                                                                                                                               x8821))))
                                                                                                                    (place-image
                                                                                                                     x8828
                                                                                                                     x8824
                                                                                                                     x8820
                                                                                                                     scene))))
                                                                                                          g8819)))
                                                                                                     (world0
                                                                                                      (lambda (tetras)
                                                                                                        (letrec ((g8829
                                                                                                                  (letrec ((x8830
                                                                                                                            (list-pick-random
                                                                                                                             tetras)))
                                                                                                                    (world
                                                                                                                     x8830
                                                                                                                     null))))
                                                                                                          g8829))))
                                                                                              (letrec ((g8831
                                                                                                        (letrec ((g8832
                                                                                                                  (letrec ((g8833
                                                                                                                            (letrec ((x8896
                                                                                                                                      ((lambda (j7257
                                                                                                                                                k7258
                                                                                                                                                f7259)
                                                                                                                                         (lambda (g7255
                                                                                                                                                  g7256)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7257
                                                                                                                                            k7258
                                                                                                                                            (f7259
                                                                                                                                             (POSN/C
                                                                                                                                              j7257
                                                                                                                                              k7258
                                                                                                                                              g7255)
                                                                                                                                             (POSN/C
                                                                                                                                              j7257
                                                                                                                                              k7258
                                                                                                                                              g7256)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       posn=?))
                                                                                                                                     (x8891
                                                                                                                                      (letrec ((x8892
                                                                                                                                                (letrec ((x8895
                                                                                                                                                          (input))
                                                                                                                                                         (x8893
                                                                                                                                                          (letrec ((x8894
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8894
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8895
                                                                                                                                                   x8893))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8892)))
                                                                                                                                     (x8886
                                                                                                                                      (letrec ((x8887
                                                                                                                                                (letrec ((x8890
                                                                                                                                                          (input))
                                                                                                                                                         (x8888
                                                                                                                                                          (letrec ((x8889
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8889
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8890
                                                                                                                                                   x8888))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8887))))
                                                                                                                              (x8896
                                                                                                                               x8891
                                                                                                                               x8886)))
                                                                                                                           (g8834
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             COLOR/C))
                                                                                                                           (g8835
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             POSN/C))
                                                                                                                           (g8836
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             BLOCK/C))
                                                                                                                           (g8837
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             TETRA/C))
                                                                                                                           (g8838
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             WORLD/C))
                                                                                                                           (g8839
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             BSET/C))
                                                                                                                           (g8840
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             block-size))
                                                                                                                           (g8841
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             board-width))
                                                                                                                           (g8842
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             board-height))
                                                                                                                           (g8843
                                                                                                                            (letrec ((x8909
                                                                                                                                      ((lambda (j7262
                                                                                                                                                k7263
                                                                                                                                                f7264)
                                                                                                                                         (lambda (g7260
                                                                                                                                                  g7261)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7262
                                                                                                                                            k7263
                                                                                                                                            (f7264
                                                                                                                                             (POSN/C
                                                                                                                                              j7262
                                                                                                                                              k7263
                                                                                                                                              g7260)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7262
                                                                                                                                              k7263
                                                                                                                                              g7261)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-rotate-ccw))
                                                                                                                                     (x8904
                                                                                                                                      (letrec ((x8905
                                                                                                                                                (letrec ((x8908
                                                                                                                                                          (input))
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
                                                                                                                                         'posn
                                                                                                                                         x8905)))
                                                                                                                                     (x8897
                                                                                                                                      (letrec ((x8898
                                                                                                                                                (letrec ((x8903
                                                                                                                                                          (input))
                                                                                                                                                         (x8899
                                                                                                                                                          (letrec ((x8902
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8900
                                                                                                                                                                    (letrec ((x8901
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8901
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8902
                                                                                                                                                             x8900))))
                                                                                                                                                  (cons
                                                                                                                                                   x8903
                                                                                                                                                   x8899))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8898))))
                                                                                                                              (x8909
                                                                                                                               x8904
                                                                                                                               x8897)))
                                                                                                                           (g8844
                                                                                                                            (letrec ((x8922
                                                                                                                                      ((lambda (j7267
                                                                                                                                                k7268
                                                                                                                                                f7269)
                                                                                                                                         (lambda (g7265
                                                                                                                                                  g7266)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7267
                                                                                                                                            k7268
                                                                                                                                            (f7269
                                                                                                                                             (POSN/C
                                                                                                                                              j7267
                                                                                                                                              k7268
                                                                                                                                              g7265)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7267
                                                                                                                                              k7268
                                                                                                                                              g7266)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-rotate-cw))
                                                                                                                                     (x8917
                                                                                                                                      (letrec ((x8918
                                                                                                                                                (letrec ((x8921
                                                                                                                                                          (input))
                                                                                                                                                         (x8919
                                                                                                                                                          (letrec ((x8920
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8920
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8921
                                                                                                                                                   x8919))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8918)))
                                                                                                                                     (x8910
                                                                                                                                      (letrec ((x8911
                                                                                                                                                (letrec ((x8916
                                                                                                                                                          (input))
                                                                                                                                                         (x8912
                                                                                                                                                          (letrec ((x8915
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8913
                                                                                                                                                                    (letrec ((x8914
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8914
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8915
                                                                                                                                                             x8913))))
                                                                                                                                                  (cons
                                                                                                                                                   x8916
                                                                                                                                                   x8912))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8911))))
                                                                                                                              (x8922
                                                                                                                               x8917
                                                                                                                               x8910)))
                                                                                                                           (g8845
                                                                                                                            (letrec ((x8937
                                                                                                                                      ((lambda (j7272
                                                                                                                                                k7273
                                                                                                                                                f7274)
                                                                                                                                         (lambda (g7270
                                                                                                                                                  g7271)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7272
                                                                                                                                            k7273
                                                                                                                                            (f7274
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7272
                                                                                                                                              k7273
                                                                                                                                              g7270)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7272
                                                                                                                                              k7273
                                                                                                                                              g7271)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block=?))
                                                                                                                                     (x8930
                                                                                                                                      (letrec ((x8931
                                                                                                                                                (letrec ((x8936
                                                                                                                                                          (input))
                                                                                                                                                         (x8932
                                                                                                                                                          (letrec ((x8935
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8933
                                                                                                                                                                    (letrec ((x8934
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8934
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8935
                                                                                                                                                             x8933))))
                                                                                                                                                  (cons
                                                                                                                                                   x8936
                                                                                                                                                   x8932))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8931)))
                                                                                                                                     (x8923
                                                                                                                                      (letrec ((x8924
                                                                                                                                                (letrec ((x8929
                                                                                                                                                          (input))
                                                                                                                                                         (x8925
                                                                                                                                                          (letrec ((x8928
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8926
                                                                                                                                                                    (letrec ((x8927
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8927
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8928
                                                                                                                                                             x8926))))
                                                                                                                                                  (cons
                                                                                                                                                   x8929
                                                                                                                                                   x8925))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8924))))
                                                                                                                              (x8937
                                                                                                                               x8930
                                                                                                                               x8923)))
                                                                                                                           (g8846
                                                                                                                            (letrec ((x8947
                                                                                                                                      ((lambda (j7278
                                                                                                                                                k7279
                                                                                                                                                f7280)
                                                                                                                                         (lambda (g7275
                                                                                                                                                  g7276
                                                                                                                                                  g7277)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7278
                                                                                                                                            k7279
                                                                                                                                            (f7280
                                                                                                                                             (real?/c
                                                                                                                                              j7278
                                                                                                                                              k7279
                                                                                                                                              g7275)
                                                                                                                                             (real?/c
                                                                                                                                              j7278
                                                                                                                                              k7279
                                                                                                                                              g7276)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7278
                                                                                                                                              k7279
                                                                                                                                              g7277)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-move))
                                                                                                                                     (x8946
                                                                                                                                      (input))
                                                                                                                                     (x8945
                                                                                                                                      (input))
                                                                                                                                     (x8938
                                                                                                                                      (letrec ((x8939
                                                                                                                                                (letrec ((x8944
                                                                                                                                                          (input))
                                                                                                                                                         (x8940
                                                                                                                                                          (letrec ((x8943
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8941
                                                                                                                                                                    (letrec ((x8942
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8942
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8943
                                                                                                                                                             x8941))))
                                                                                                                                                  (cons
                                                                                                                                                   x8944
                                                                                                                                                   x8940))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8939))))
                                                                                                                              (x8947
                                                                                                                               x8946
                                                                                                                               x8945
                                                                                                                               x8938)))
                                                                                                                           (g8847
                                                                                                                            (letrec ((x8956
                                                                                                                                      ((lambda (j7283
                                                                                                                                                k7284
                                                                                                                                                f7285)
                                                                                                                                         (lambda (g7281
                                                                                                                                                  g7282)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7283
                                                                                                                                            k7284
                                                                                                                                            (f7285
                                                                                                                                             (BSET/C
                                                                                                                                              j7283
                                                                                                                                              k7284
                                                                                                                                              g7281)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7283
                                                                                                                                              k7284
                                                                                                                                              g7282)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-contains?))
                                                                                                                                     (x8955
                                                                                                                                      (input))
                                                                                                                                     (x8948
                                                                                                                                      (letrec ((x8949
                                                                                                                                                (letrec ((x8954
                                                                                                                                                          (input))
                                                                                                                                                         (x8950
                                                                                                                                                          (letrec ((x8953
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8951
                                                                                                                                                                    (letrec ((x8952
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8952
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8953
                                                                                                                                                             x8951))))
                                                                                                                                                  (cons
                                                                                                                                                   x8954
                                                                                                                                                   x8950))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8949))))
                                                                                                                              (x8956
                                                                                                                               x8955
                                                                                                                               x8948)))
                                                                                                                           (g8848
                                                                                                                            (letrec ((x8959
                                                                                                                                      ((lambda (j7288
                                                                                                                                                k7289
                                                                                                                                                f7290)
                                                                                                                                         (lambda (g7286
                                                                                                                                                  g7287)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7288
                                                                                                                                            k7289
                                                                                                                                            (f7290
                                                                                                                                             (BSET/C
                                                                                                                                              j7288
                                                                                                                                              k7289
                                                                                                                                              g7286)
                                                                                                                                             (BSET/C
                                                                                                                                              j7288
                                                                                                                                              k7289
                                                                                                                                              g7287)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks=?))
                                                                                                                                     (x8958
                                                                                                                                      (input))
                                                                                                                                     (x8957
                                                                                                                                      (input)))
                                                                                                                              (x8959
                                                                                                                               x8958
                                                                                                                               x8957)))
                                                                                                                           (g8849
                                                                                                                            (letrec ((x8962
                                                                                                                                      ((lambda (j7293
                                                                                                                                                k7294
                                                                                                                                                f7295)
                                                                                                                                         (lambda (g7291
                                                                                                                                                  g7292)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7293
                                                                                                                                            k7294
                                                                                                                                            (f7295
                                                                                                                                             (BSET/C
                                                                                                                                              j7293
                                                                                                                                              k7294
                                                                                                                                              g7291)
                                                                                                                                             (BSET/C
                                                                                                                                              j7293
                                                                                                                                              k7294
                                                                                                                                              g7292)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-subset?))
                                                                                                                                     (x8961
                                                                                                                                      (input))
                                                                                                                                     (x8960
                                                                                                                                      (input)))
                                                                                                                              (x8962
                                                                                                                               x8961
                                                                                                                               x8960)))
                                                                                                                           (g8850
                                                                                                                            (letrec ((x8965
                                                                                                                                      ((lambda (j7298
                                                                                                                                                k7299
                                                                                                                                                f7300)
                                                                                                                                         (lambda (g7296
                                                                                                                                                  g7297)
                                                                                                                                           (BSET/C
                                                                                                                                            j7298
                                                                                                                                            k7299
                                                                                                                                            (f7300
                                                                                                                                             (BSET/C
                                                                                                                                              j7298
                                                                                                                                              k7299
                                                                                                                                              g7296)
                                                                                                                                             (BSET/C
                                                                                                                                              j7298
                                                                                                                                              k7299
                                                                                                                                              g7297)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-intersect))
                                                                                                                                     (x8964
                                                                                                                                      (input))
                                                                                                                                     (x8963
                                                                                                                                      (input)))
                                                                                                                              (x8965
                                                                                                                               x8964
                                                                                                                               x8963)))
                                                                                                                           (g8851
                                                                                                                            (letrec ((x8967
                                                                                                                                      ((lambda (j7302
                                                                                                                                                k7303
                                                                                                                                                f7304)
                                                                                                                                         (lambda (g7301)
                                                                                                                                           (real?/c
                                                                                                                                            j7302
                                                                                                                                            k7303
                                                                                                                                            (f7304
                                                                                                                                             (BSET/C
                                                                                                                                              j7302
                                                                                                                                              k7303
                                                                                                                                              g7301)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-count))
                                                                                                                                     (x8966
                                                                                                                                      (input)))
                                                                                                                              (x8967
                                                                                                                               x8966)))
                                                                                                                           (g8852
                                                                                                                            (letrec ((x8969
                                                                                                                                      ((lambda (j7306
                                                                                                                                                k7307
                                                                                                                                                f7308)
                                                                                                                                         (lambda (g7305)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7306
                                                                                                                                            k7307
                                                                                                                                            (f7308
                                                                                                                                             (BSET/C
                                                                                                                                              j7306
                                                                                                                                              k7307
                                                                                                                                              g7305)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-overflow?))
                                                                                                                                     (x8968
                                                                                                                                      (input)))
                                                                                                                              (x8969
                                                                                                                               x8968)))
                                                                                                                           (g8853
                                                                                                                            (letrec ((x8973
                                                                                                                                      ((lambda (j7312
                                                                                                                                                k7313
                                                                                                                                                f7314)
                                                                                                                                         (lambda (g7309
                                                                                                                                                  g7310
                                                                                                                                                  g7311)
                                                                                                                                           (BSET/C
                                                                                                                                            j7312
                                                                                                                                            k7313
                                                                                                                                            (f7314
                                                                                                                                             (real?/c
                                                                                                                                              j7312
                                                                                                                                              k7313
                                                                                                                                              g7309)
                                                                                                                                             (real?/c
                                                                                                                                              j7312
                                                                                                                                              k7313
                                                                                                                                              g7310)
                                                                                                                                             (BSET/C
                                                                                                                                              j7312
                                                                                                                                              k7313
                                                                                                                                              g7311)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-move))
                                                                                                                                     (x8972
                                                                                                                                      (input))
                                                                                                                                     (x8971
                                                                                                                                      (input))
                                                                                                                                     (x8970
                                                                                                                                      (input)))
                                                                                                                              (x8973
                                                                                                                               x8972
                                                                                                                               x8971
                                                                                                                               x8970)))
                                                                                                                           (g8854
                                                                                                                            (letrec ((x8980
                                                                                                                                      ((lambda (j7317
                                                                                                                                                k7318
                                                                                                                                                f7319)
                                                                                                                                         (lambda (g7315
                                                                                                                                                  g7316)
                                                                                                                                           (BSET/C
                                                                                                                                            j7317
                                                                                                                                            k7318
                                                                                                                                            (f7319
                                                                                                                                             (POSN/C
                                                                                                                                              j7317
                                                                                                                                              k7318
                                                                                                                                              g7315)
                                                                                                                                             (BSET/C
                                                                                                                                              j7317
                                                                                                                                              k7318
                                                                                                                                              g7316)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-rotate-cw))
                                                                                                                                     (x8975
                                                                                                                                      (letrec ((x8976
                                                                                                                                                (letrec ((x8979
                                                                                                                                                          (input))
                                                                                                                                                         (x8977
                                                                                                                                                          (letrec ((x8978
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8978
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8979
                                                                                                                                                   x8977))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8976)))
                                                                                                                                     (x8974
                                                                                                                                      (input)))
                                                                                                                              (x8980
                                                                                                                               x8975
                                                                                                                               x8974)))
                                                                                                                           (g8855
                                                                                                                            (letrec ((x8987
                                                                                                                                      ((lambda (j7322
                                                                                                                                                k7323
                                                                                                                                                f7324)
                                                                                                                                         (lambda (g7320
                                                                                                                                                  g7321)
                                                                                                                                           (BSET/C
                                                                                                                                            j7322
                                                                                                                                            k7323
                                                                                                                                            (f7324
                                                                                                                                             (POSN/C
                                                                                                                                              j7322
                                                                                                                                              k7323
                                                                                                                                              g7320)
                                                                                                                                             (BSET/C
                                                                                                                                              j7322
                                                                                                                                              k7323
                                                                                                                                              g7321)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-rotate-ccw))
                                                                                                                                     (x8982
                                                                                                                                      (letrec ((x8983
                                                                                                                                                (letrec ((x8986
                                                                                                                                                          (input))
                                                                                                                                                         (x8984
                                                                                                                                                          (letrec ((x8985
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8985
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8986
                                                                                                                                                   x8984))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8983)))
                                                                                                                                     (x8981
                                                                                                                                      (input)))
                                                                                                                              (x8987
                                                                                                                               x8982
                                                                                                                               x8981)))
                                                                                                                           (g8856
                                                                                                                            (letrec ((x8990
                                                                                                                                      ((lambda (j7327
                                                                                                                                                k7328
                                                                                                                                                f7329)
                                                                                                                                         (lambda (g7325
                                                                                                                                                  g7326)
                                                                                                                                           (BSET/C
                                                                                                                                            j7327
                                                                                                                                            k7328
                                                                                                                                            (f7329
                                                                                                                                             (BSET/C
                                                                                                                                              j7327
                                                                                                                                              k7328
                                                                                                                                              g7325)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7327
                                                                                                                                              k7328
                                                                                                                                              g7326)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-change-color))
                                                                                                                                     (x8989
                                                                                                                                      (input))
                                                                                                                                     (x8988
                                                                                                                                      (input)))
                                                                                                                              (x8990
                                                                                                                               x8989
                                                                                                                               x8988)))
                                                                                                                           (g8857
                                                                                                                            (letrec ((x8993
                                                                                                                                      ((lambda (j7332
                                                                                                                                                k7333
                                                                                                                                                f7334)
                                                                                                                                         (lambda (g7330
                                                                                                                                                  g7331)
                                                                                                                                           (BSET/C
                                                                                                                                            j7332
                                                                                                                                            k7333
                                                                                                                                            (f7334
                                                                                                                                             (BSET/C
                                                                                                                                              j7332
                                                                                                                                              k7333
                                                                                                                                              g7330)
                                                                                                                                             (real?/c
                                                                                                                                              j7332
                                                                                                                                              k7333
                                                                                                                                              g7331)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-row))
                                                                                                                                     (x8992
                                                                                                                                      (input))
                                                                                                                                     (x8991
                                                                                                                                      (input)))
                                                                                                                              (x8993
                                                                                                                               x8992
                                                                                                                               x8991)))
                                                                                                                           (g8858
                                                                                                                            (letrec ((x8996
                                                                                                                                      ((lambda (j7337
                                                                                                                                                k7338
                                                                                                                                                f7339)
                                                                                                                                         (lambda (g7335
                                                                                                                                                  g7336)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7337
                                                                                                                                            k7338
                                                                                                                                            (f7339
                                                                                                                                             (BSET/C
                                                                                                                                              j7337
                                                                                                                                              k7338
                                                                                                                                              g7335)
                                                                                                                                             (real?/c
                                                                                                                                              j7337
                                                                                                                                              k7338
                                                                                                                                              g7336)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       full-row?))
                                                                                                                                     (x8995
                                                                                                                                      (input))
                                                                                                                                     (x8994
                                                                                                                                      (input)))
                                                                                                                              (x8996
                                                                                                                               x8995
                                                                                                                               x8994)))
                                                                                                                           (g8859
                                                                                                                            (letrec ((x8999
                                                                                                                                      ((lambda (j7342
                                                                                                                                                k7343
                                                                                                                                                f7344)
                                                                                                                                         (lambda (g7340
                                                                                                                                                  g7341)
                                                                                                                                           (BSET/C
                                                                                                                                            j7342
                                                                                                                                            k7343
                                                                                                                                            (f7344
                                                                                                                                             (BSET/C
                                                                                                                                              j7342
                                                                                                                                              k7343
                                                                                                                                              g7340)
                                                                                                                                             (BSET/C
                                                                                                                                              j7342
                                                                                                                                              k7343
                                                                                                                                              g7341)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-union))
                                                                                                                                     (x8998
                                                                                                                                      (input))
                                                                                                                                     (x8997
                                                                                                                                      (input)))
                                                                                                                              (x8999
                                                                                                                               x8998
                                                                                                                               x8997)))
                                                                                                                           (g8860
                                                                                                                            (letrec ((x9001
                                                                                                                                      ((lambda (j7346
                                                                                                                                                k7347
                                                                                                                                                f7348)
                                                                                                                                         (lambda (g7345)
                                                                                                                                           (real?/c
                                                                                                                                            j7346
                                                                                                                                            k7347
                                                                                                                                            (f7348
                                                                                                                                             (BSET/C
                                                                                                                                              j7346
                                                                                                                                              k7347
                                                                                                                                              g7345)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-max-x))
                                                                                                                                     (x9000
                                                                                                                                      (input)))
                                                                                                                              (x9001
                                                                                                                               x9000)))
                                                                                                                           (g8861
                                                                                                                            (letrec ((x9003
                                                                                                                                      ((lambda (j7350
                                                                                                                                                k7351
                                                                                                                                                f7352)
                                                                                                                                         (lambda (g7349)
                                                                                                                                           (real?/c
                                                                                                                                            j7350
                                                                                                                                            k7351
                                                                                                                                            (f7352
                                                                                                                                             (BSET/C
                                                                                                                                              j7350
                                                                                                                                              k7351
                                                                                                                                              g7349)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-min-x))
                                                                                                                                     (x9002
                                                                                                                                      (input)))
                                                                                                                              (x9003
                                                                                                                               x9002)))
                                                                                                                           (g8862
                                                                                                                            (letrec ((x9005
                                                                                                                                      ((lambda (j7354
                                                                                                                                                k7355
                                                                                                                                                f7356)
                                                                                                                                         (lambda (g7353)
                                                                                                                                           (real?/c
                                                                                                                                            j7354
                                                                                                                                            k7355
                                                                                                                                            (f7356
                                                                                                                                             (BSET/C
                                                                                                                                              j7354
                                                                                                                                              k7355
                                                                                                                                              g7353)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-max-y))
                                                                                                                                     (x9004
                                                                                                                                      (input)))
                                                                                                                              (x9005
                                                                                                                               x9004)))
                                                                                                                           (g8863
                                                                                                                            (letrec ((x9007
                                                                                                                                      ((lambda (j7358
                                                                                                                                                k7359
                                                                                                                                                f7360)
                                                                                                                                         (lambda (g7357)
                                                                                                                                           (BSET/C
                                                                                                                                            j7358
                                                                                                                                            k7359
                                                                                                                                            (f7360
                                                                                                                                             (BSET/C
                                                                                                                                              j7358
                                                                                                                                              k7359
                                                                                                                                              g7357)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       eliminate-full-rows))
                                                                                                                                     (x9006
                                                                                                                                      (input)))
                                                                                                                              (x9007
                                                                                                                               x9006)))
                                                                                                                           (g8864
                                                                                                                            (letrec ((x9019
                                                                                                                                      ((lambda (j7364
                                                                                                                                                k7365
                                                                                                                                                f7366)
                                                                                                                                         (lambda (g7361
                                                                                                                                                  g7362
                                                                                                                                                  g7363)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7364
                                                                                                                                            k7365
                                                                                                                                            (f7366
                                                                                                                                             (integer?/c
                                                                                                                                              j7364
                                                                                                                                              k7365
                                                                                                                                              g7361)
                                                                                                                                             (integer?/c
                                                                                                                                              j7364
                                                                                                                                              k7365
                                                                                                                                              g7362)
                                                                                                                                             (TETRA/C
                                                                                                                                              j7364
                                                                                                                                              k7365
                                                                                                                                              g7363)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-move))
                                                                                                                                     (x9018
                                                                                                                                      (input))
                                                                                                                                     (x9017
                                                                                                                                      (input))
                                                                                                                                     (x9008
                                                                                                                                      (letrec ((x9009
                                                                                                                                                (letrec ((x9012
                                                                                                                                                          (letrec ((x9013
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
                                                                                                                                                             'posn
                                                                                                                                                             x9013)))
                                                                                                                                                         (x9010
                                                                                                                                                          (letrec ((x9011
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9011
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9012
                                                                                                                                                   x9010))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x9009))))
                                                                                                                              (x9019
                                                                                                                               x9018
                                                                                                                               x9017
                                                                                                                               x9008)))
                                                                                                                           (g8865
                                                                                                                            (letrec ((x9029
                                                                                                                                      ((lambda (j7368
                                                                                                                                                k7369
                                                                                                                                                f7370)
                                                                                                                                         (lambda (g7367)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7368
                                                                                                                                            k7369
                                                                                                                                            (f7370
                                                                                                                                             (TETRA/C
                                                                                                                                              j7368
                                                                                                                                              k7369
                                                                                                                                              g7367)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-rotate-ccw))
                                                                                                                                     (x9020
                                                                                                                                      (letrec ((x9021
                                                                                                                                                (letrec ((x9024
                                                                                                                                                          (letrec ((x9025
                                                                                                                                                                    (letrec ((x9028
                                                                                                                                                                              (input))
                                                                                                                                                                             (x9026
                                                                                                                                                                              (letrec ((x9027
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9027
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9028
                                                                                                                                                                       x9026))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x9025)))
                                                                                                                                                         (x9022
                                                                                                                                                          (letrec ((x9023
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9023
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9024
                                                                                                                                                   x9022))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x9021))))
                                                                                                                              (x9029
                                                                                                                               x9020)))
                                                                                                                           (g8866
                                                                                                                            (letrec ((x9039
                                                                                                                                      ((lambda (j7372
                                                                                                                                                k7373
                                                                                                                                                f7374)
                                                                                                                                         (lambda (g7371)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7372
                                                                                                                                            k7373
                                                                                                                                            (f7374
                                                                                                                                             (TETRA/C
                                                                                                                                              j7372
                                                                                                                                              k7373
                                                                                                                                              g7371)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-rotate-cw))
                                                                                                                                     (x9030
                                                                                                                                      (letrec ((x9031
                                                                                                                                                (letrec ((x9034
                                                                                                                                                          (letrec ((x9035
                                                                                                                                                                    (letrec ((x9038
                                                                                                                                                                              (input))
                                                                                                                                                                             (x9036
                                                                                                                                                                              (letrec ((x9037
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9037
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9038
                                                                                                                                                                       x9036))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x9035)))
                                                                                                                                                         (x9032
                                                                                                                                                          (letrec ((x9033
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9033
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9034
                                                                                                                                                   x9032))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x9031))))
                                                                                                                              (x9039
                                                                                                                               x9030)))
                                                                                                                           (g8867
                                                                                                                            (letrec ((x9050
                                                                                                                                      ((lambda (j7377
                                                                                                                                                k7378
                                                                                                                                                f7379)
                                                                                                                                         (lambda (g7375
                                                                                                                                                  g7376)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7377
                                                                                                                                            k7378
                                                                                                                                            (f7379
                                                                                                                                             (TETRA/C
                                                                                                                                              j7377
                                                                                                                                              k7378
                                                                                                                                              g7375)
                                                                                                                                             (BSET/C
                                                                                                                                              j7377
                                                                                                                                              k7378
                                                                                                                                              g7376)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-overlaps-blocks?))
                                                                                                                                     (x9041
                                                                                                                                      (letrec ((x9042
                                                                                                                                                (letrec ((x9045
                                                                                                                                                          (letrec ((x9046
                                                                                                                                                                    (letrec ((x9049
                                                                                                                                                                              (input))
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
                                                                                                                                                             'posn
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
                                                                                                                                         'tetra
                                                                                                                                         x9042)))
                                                                                                                                     (x9040
                                                                                                                                      (input)))
                                                                                                                              (x9050
                                                                                                                               x9041
                                                                                                                               x9040)))
                                                                                                                           (g8868
                                                                                                                            (letrec ((x9062
                                                                                                                                      ((lambda (j7391
                                                                                                                                                k7392
                                                                                                                                                f7393)
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
                                                                                                                                           (TETRA/C
                                                                                                                                            j7391
                                                                                                                                            k7392
                                                                                                                                            (f7393
                                                                                                                                             (COLOR/C
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7380)
                                                                                                                                             (real?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7381)
                                                                                                                                             (real?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7382)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7383)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7384)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7385)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7386)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7387)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7388)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7389)
                                                                                                                                             (integer?/c
                                                                                                                                              j7391
                                                                                                                                              k7392
                                                                                                                                              g7390)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       build-tetra-blocks))
                                                                                                                                     (x9061
                                                                                                                                      (input))
                                                                                                                                     (x9060
                                                                                                                                      (input))
                                                                                                                                     (x9059
                                                                                                                                      (input))
                                                                                                                                     (x9058
                                                                                                                                      (input))
                                                                                                                                     (x9057
                                                                                                                                      (input))
                                                                                                                                     (x9056
                                                                                                                                      (input))
                                                                                                                                     (x9055
                                                                                                                                      (input))
                                                                                                                                     (x9054
                                                                                                                                      (input))
                                                                                                                                     (x9053
                                                                                                                                      (input))
                                                                                                                                     (x9052
                                                                                                                                      (input))
                                                                                                                                     (x9051
                                                                                                                                      (input)))
                                                                                                                              (x9062
                                                                                                                               x9061
                                                                                                                               x9060
                                                                                                                               x9059
                                                                                                                               x9058
                                                                                                                               x9057
                                                                                                                               x9056
                                                                                                                               x9055
                                                                                                                               x9054
                                                                                                                               x9053
                                                                                                                               x9052
                                                                                                                               x9051)))
                                                                                                                           (g8869
                                                                                                                            (letrec ((x9073
                                                                                                                                      ((lambda (j7396
                                                                                                                                                k7397
                                                                                                                                                f7398)
                                                                                                                                         (lambda (g7394
                                                                                                                                                  g7395)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7396
                                                                                                                                            k7397
                                                                                                                                            (f7398
                                                                                                                                             (TETRA/C
                                                                                                                                              j7396
                                                                                                                                              k7397
                                                                                                                                              g7394)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7396
                                                                                                                                              k7397
                                                                                                                                              g7395)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-change-color))
                                                                                                                                     (x9064
                                                                                                                                      (letrec ((x9065
                                                                                                                                                (letrec ((x9068
                                                                                                                                                          (letrec ((x9069
                                                                                                                                                                    (letrec ((x9072
                                                                                                                                                                              (input))
                                                                                                                                                                             (x9070
                                                                                                                                                                              (letrec ((x9071
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9071
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9072
                                                                                                                                                                       x9070))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x9069)))
                                                                                                                                                         (x9066
                                                                                                                                                          (letrec ((x9067
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9067
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9068
                                                                                                                                                   x9066))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x9065)))
                                                                                                                                     (x9063
                                                                                                                                      (input)))
                                                                                                                              (x9073
                                                                                                                               x9064
                                                                                                                               x9063)))
                                                                                                                           (g8870
                                                                                                                            (letrec ((x9088
                                                                                                                                      ((lambda (j7401
                                                                                                                                                k7402
                                                                                                                                                f7403)
                                                                                                                                         (lambda (g7399
                                                                                                                                                  g7400)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7401
                                                                                                                                            k7402
                                                                                                                                            (f7403
                                                                                                                                             (WORLD/C
                                                                                                                                              j7401
                                                                                                                                              k7402
                                                                                                                                              g7399)
                                                                                                                                             (string?/c
                                                                                                                                              j7401
                                                                                                                                              k7402
                                                                                                                                              g7400)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world-key-move))
                                                                                                                                     (x9075
                                                                                                                                      (letrec ((x9076
                                                                                                                                                (letrec ((x9079
                                                                                                                                                          (letrec ((x9080
                                                                                                                                                                    (letrec ((x9083
                                                                                                                                                                              (letrec ((x9084
                                                                                                                                                                                        (letrec ((x9087
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x9085
                                                                                                                                                                                                  (letrec ((x9086
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x9086
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x9087
                                                                                                                                                                                           x9085))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x9084)))
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
                                                                                                                                                             'tetra
                                                                                                                                                             x9080)))
                                                                                                                                                         (x9077
                                                                                                                                                          (letrec ((x9078
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9078
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9079
                                                                                                                                                   x9077))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x9076)))
                                                                                                                                     (x9074
                                                                                                                                      (input)))
                                                                                                                              (x9088
                                                                                                                               x9075
                                                                                                                               x9074)))
                                                                                                                           (g8871
                                                                                                                            (letrec ((x9103
                                                                                                                                      ((lambda (j7406
                                                                                                                                                k7407
                                                                                                                                                f7408)
                                                                                                                                         (lambda (g7404
                                                                                                                                                  g7405)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7406
                                                                                                                                            k7407
                                                                                                                                            (f7408
                                                                                                                                             (WORLD/C
                                                                                                                                              j7406
                                                                                                                                              k7407
                                                                                                                                              g7404)
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7406
                                                                                                                                              k7407
                                                                                                                                              g7405)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       next-world))
                                                                                                                                     (x9090
                                                                                                                                      (letrec ((x9091
                                                                                                                                                (letrec ((x9094
                                                                                                                                                          (letrec ((x9095
                                                                                                                                                                    (letrec ((x9098
                                                                                                                                                                              (letrec ((x9099
                                                                                                                                                                                        (letrec ((x9102
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x9100
                                                                                                                                                                                                  (letrec ((x9101
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x9101
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x9102
                                                                                                                                                                                           x9100))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x9099)))
                                                                                                                                                                             (x9096
                                                                                                                                                                              (letrec ((x9097
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9097
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9098
                                                                                                                                                                       x9096))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x9095)))
                                                                                                                                                         (x9092
                                                                                                                                                          (letrec ((x9093
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9093
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9094
                                                                                                                                                   x9092))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x9091)))
                                                                                                                                     (x9089
                                                                                                                                      (input)))
                                                                                                                              (x9103
                                                                                                                               x9090
                                                                                                                               x9089)))
                                                                                                                           (g8872
                                                                                                                            (letrec ((x9117
                                                                                                                                      ((lambda (j7410
                                                                                                                                                k7411
                                                                                                                                                f7412)
                                                                                                                                         (lambda (g7409)
                                                                                                                                           (BSET/C
                                                                                                                                            j7410
                                                                                                                                            k7411
                                                                                                                                            (f7412
                                                                                                                                             (WORLD/C
                                                                                                                                              j7410
                                                                                                                                              k7411
                                                                                                                                              g7409)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       ghost-blocks))
                                                                                                                                     (x9104
                                                                                                                                      (letrec ((x9105
                                                                                                                                                (letrec ((x9108
                                                                                                                                                          (letrec ((x9109
                                                                                                                                                                    (letrec ((x9112
                                                                                                                                                                              (letrec ((x9113
                                                                                                                                                                                        (letrec ((x9116
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x9114
                                                                                                                                                                                                  (letrec ((x9115
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x9115
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x9116
                                                                                                                                                                                           x9114))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x9113)))
                                                                                                                                                                             (x9110
                                                                                                                                                                              (letrec ((x9111
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9111
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9112
                                                                                                                                                                       x9110))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x9109)))
                                                                                                                                                         (x9106
                                                                                                                                                          (letrec ((x9107
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9107
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9108
                                                                                                                                                   x9106))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x9105))))
                                                                                                                              (x9117
                                                                                                                               x9104)))
                                                                                                                           (g8873
                                                                                                                            (letrec ((x9119
                                                                                                                                      ((lambda (j7414
                                                                                                                                                k7415
                                                                                                                                                f7416)
                                                                                                                                         (lambda (g7413)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7414
                                                                                                                                            k7415
                                                                                                                                            (f7416
                                                                                                                                             (any/c
                                                                                                                                              j7414
                                                                                                                                              k7415
                                                                                                                                              g7413)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       image?))
                                                                                                                                     (x9118
                                                                                                                                      (input)))
                                                                                                                              (x9119
                                                                                                                               x9118)))
                                                                                                                           (g8874
                                                                                                                            (letrec ((x9122
                                                                                                                                      ((lambda (j7419
                                                                                                                                                k7420
                                                                                                                                                f7421)
                                                                                                                                         (lambda (g7417
                                                                                                                                                  g7418)
                                                                                                                                           (image?
                                                                                                                                            j7419
                                                                                                                                            k7420
                                                                                                                                            (f7421
                                                                                                                                             (image?
                                                                                                                                              j7419
                                                                                                                                              k7420
                                                                                                                                              g7417)
                                                                                                                                             (image?
                                                                                                                                              j7419
                                                                                                                                              k7420
                                                                                                                                              g7418)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       overlay))
                                                                                                                                     (x9121
                                                                                                                                      (input))
                                                                                                                                     (x9120
                                                                                                                                      (input)))
                                                                                                                              (x9122
                                                                                                                               x9121
                                                                                                                               x9120)))
                                                                                                                           (g8875
                                                                                                                            (letrec ((x9126
                                                                                                                                      ((lambda (j7425
                                                                                                                                                k7426
                                                                                                                                                f7427)
                                                                                                                                         (lambda (g7422
                                                                                                                                                  g7423
                                                                                                                                                  g7424)
                                                                                                                                           (image?
                                                                                                                                            j7425
                                                                                                                                            k7426
                                                                                                                                            (f7427
                                                                                                                                             (real?/c
                                                                                                                                              j7425
                                                                                                                                              k7426
                                                                                                                                              g7422)
                                                                                                                                             (real?/c
                                                                                                                                              j7425
                                                                                                                                              k7426
                                                                                                                                              g7423)
                                                                                                                                             (string?/c
                                                                                                                                              j7425
                                                                                                                                              k7426
                                                                                                                                              g7424)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       circle))
                                                                                                                                     (x9125
                                                                                                                                      (input))
                                                                                                                                     (x9124
                                                                                                                                      (input))
                                                                                                                                     (x9123
                                                                                                                                      (input)))
                                                                                                                              (x9126
                                                                                                                               x9125
                                                                                                                               x9124
                                                                                                                               x9123)))
                                                                                                                           (g8876
                                                                                                                            (letrec ((x9131
                                                                                                                                      ((lambda (j7432
                                                                                                                                                k7433
                                                                                                                                                f7434)
                                                                                                                                         (lambda (g7428
                                                                                                                                                  g7429
                                                                                                                                                  g7430
                                                                                                                                                  g7431)
                                                                                                                                           (image?
                                                                                                                                            j7432
                                                                                                                                            k7433
                                                                                                                                            (f7434
                                                                                                                                             (real?/c
                                                                                                                                              j7432
                                                                                                                                              k7433
                                                                                                                                              g7428)
                                                                                                                                             (real?/c
                                                                                                                                              j7432
                                                                                                                                              k7433
                                                                                                                                              g7429)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7432
                                                                                                                                              k7433
                                                                                                                                              g7430)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7432
                                                                                                                                              k7433
                                                                                                                                              g7431)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       rectangle))
                                                                                                                                     (x9130
                                                                                                                                      (input))
                                                                                                                                     (x9129
                                                                                                                                      (input))
                                                                                                                                     (x9128
                                                                                                                                      (input))
                                                                                                                                     (x9127
                                                                                                                                      (input)))
                                                                                                                              (x9131
                                                                                                                               x9130
                                                                                                                               x9129
                                                                                                                               x9128
                                                                                                                               x9127)))
                                                                                                                           (g8877
                                                                                                                            (letrec ((x9136
                                                                                                                                      ((lambda (j7439
                                                                                                                                                k7440
                                                                                                                                                f7441)
                                                                                                                                         (lambda (g7435
                                                                                                                                                  g7436
                                                                                                                                                  g7437
                                                                                                                                                  g7438)
                                                                                                                                           (image/c
                                                                                                                                            j7439
                                                                                                                                            k7440
                                                                                                                                            (f7441
                                                                                                                                             (image/c
                                                                                                                                              j7439
                                                                                                                                              k7440
                                                                                                                                              g7435)
                                                                                                                                             (real?/c
                                                                                                                                              j7439
                                                                                                                                              k7440
                                                                                                                                              g7436)
                                                                                                                                             (real?/c
                                                                                                                                              j7439
                                                                                                                                              k7440
                                                                                                                                              g7437)
                                                                                                                                             (image/c
                                                                                                                                              j7439
                                                                                                                                              k7440
                                                                                                                                              g7438)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       place-image))
                                                                                                                                     (x9135
                                                                                                                                      (input))
                                                                                                                                     (x9134
                                                                                                                                      (input))
                                                                                                                                     (x9133
                                                                                                                                      (input))
                                                                                                                                     (x9132
                                                                                                                                      (input)))
                                                                                                                              (x9136
                                                                                                                               x9135
                                                                                                                               x9134
                                                                                                                               x9133
                                                                                                                               x9132)))
                                                                                                                           (g8878
                                                                                                                            (letrec ((x9139
                                                                                                                                      ((lambda (j7444
                                                                                                                                                k7445
                                                                                                                                                f7446)
                                                                                                                                         (lambda (g7442
                                                                                                                                                  g7443)
                                                                                                                                           (image?
                                                                                                                                            j7444
                                                                                                                                            k7445
                                                                                                                                            (f7446
                                                                                                                                             (real?/c
                                                                                                                                              j7444
                                                                                                                                              k7445
                                                                                                                                              g7442)
                                                                                                                                             (real?/c
                                                                                                                                              j7444
                                                                                                                                              k7445
                                                                                                                                              g7443)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       empty-scene))
                                                                                                                                     (x9138
                                                                                                                                      (input))
                                                                                                                                     (x9137
                                                                                                                                      (input)))
                                                                                                                              (x9139
                                                                                                                               x9138
                                                                                                                               x9137)))
                                                                                                                           (g8879
                                                                                                                            (letrec ((x9141
                                                                                                                                      ((lambda (j7448
                                                                                                                                                k7449
                                                                                                                                                f7450)
                                                                                                                                         (lambda (g7447)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7448
                                                                                                                                            k7449
                                                                                                                                            (f7450
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7448
                                                                                                                                              k7449
                                                                                                                                              g7447)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       list-pick-random))
                                                                                                                                     (x9140
                                                                                                                                      (input)))
                                                                                                                              (x9141
                                                                                                                               x9140)))
                                                                                                                           (g8880
                                                                                                                            (integer?/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             neg-1))
                                                                                                                           (g8881
                                                                                                                            (letrec ((x9155
                                                                                                                                      ((lambda (j7452
                                                                                                                                                k7453
                                                                                                                                                f7454)
                                                                                                                                         (lambda (g7451)
                                                                                                                                           (image/c
                                                                                                                                            j7452
                                                                                                                                            k7453
                                                                                                                                            (f7454
                                                                                                                                             (WORLD/C
                                                                                                                                              j7452
                                                                                                                                              k7453
                                                                                                                                              g7451)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world->image))
                                                                                                                                     (x9142
                                                                                                                                      (letrec ((x9143
                                                                                                                                                (letrec ((x9146
                                                                                                                                                          (letrec ((x9147
                                                                                                                                                                    (letrec ((x9150
                                                                                                                                                                              (letrec ((x9151
                                                                                                                                                                                        (letrec ((x9154
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x9152
                                                                                                                                                                                                  (letrec ((x9153
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x9153
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x9154
                                                                                                                                                                                           x9152))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x9151)))
                                                                                                                                                                             (x9148
                                                                                                                                                                              (letrec ((x9149
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x9149
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9150
                                                                                                                                                                       x9148))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x9147)))
                                                                                                                                                         (x9144
                                                                                                                                                          (letrec ((x9145
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x9145
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x9146
                                                                                                                                                   x9144))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x9143))))
                                                                                                                              (x9155
                                                                                                                               x9142)))
                                                                                                                           (g8882
                                                                                                                            (letrec ((x9157
                                                                                                                                      ((lambda (j7456
                                                                                                                                                k7457
                                                                                                                                                f7458)
                                                                                                                                         (lambda (g7455)
                                                                                                                                           (image/c
                                                                                                                                            j7456
                                                                                                                                            k7457
                                                                                                                                            (f7458
                                                                                                                                             (BSET/C
                                                                                                                                              j7456
                                                                                                                                              k7457
                                                                                                                                              g7455)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks->image))
                                                                                                                                     (x9156
                                                                                                                                      (input)))
                                                                                                                              (x9157
                                                                                                                               x9156)))
                                                                                                                           (g8883
                                                                                                                            (letrec ((x9165
                                                                                                                                      ((lambda (j7460
                                                                                                                                                k7461
                                                                                                                                                f7462)
                                                                                                                                         (lambda (g7459)
                                                                                                                                           (image/c
                                                                                                                                            j7460
                                                                                                                                            k7461
                                                                                                                                            (f7462
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7460
                                                                                                                                              k7461
                                                                                                                                              g7459)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block->image))
                                                                                                                                     (x9158
                                                                                                                                      (letrec ((x9159
                                                                                                                                                (letrec ((x9164
                                                                                                                                                          (input))
                                                                                                                                                         (x9160
                                                                                                                                                          (letrec ((x9163
                                                                                                                                                                    (input))
                                                                                                                                                                   (x9161
                                                                                                                                                                    (letrec ((x9162
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9162
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x9163
                                                                                                                                                             x9161))))
                                                                                                                                                  (cons
                                                                                                                                                   x9164
                                                                                                                                                   x9160))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x9159))))
                                                                                                                              (x9165
                                                                                                                               x9158)))
                                                                                                                           (g8884
                                                                                                                            (letrec ((x9174
                                                                                                                                      ((lambda (j7465
                                                                                                                                                k7466
                                                                                                                                                f7467)
                                                                                                                                         (lambda (g7463
                                                                                                                                                  g7464)
                                                                                                                                           (image/c
                                                                                                                                            j7465
                                                                                                                                            k7466
                                                                                                                                            (f7467
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7465
                                                                                                                                              k7466
                                                                                                                                              g7463)
                                                                                                                                             (image/c
                                                                                                                                              j7465
                                                                                                                                              k7466
                                                                                                                                              g7464)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       place-block))
                                                                                                                                     (x9167
                                                                                                                                      (letrec ((x9168
                                                                                                                                                (letrec ((x9173
                                                                                                                                                          (input))
                                                                                                                                                         (x9169
                                                                                                                                                          (letrec ((x9172
                                                                                                                                                                    (input))
                                                                                                                                                                   (x9170
                                                                                                                                                                    (letrec ((x9171
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x9171
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x9172
                                                                                                                                                             x9170))))
                                                                                                                                                  (cons
                                                                                                                                                   x9173
                                                                                                                                                   x9169))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x9168)))
                                                                                                                                     (x9166
                                                                                                                                      (input)))
                                                                                                                              (x9174
                                                                                                                               x9167
                                                                                                                               x9166)))
                                                                                                                           (g8885
                                                                                                                            (letrec ((x9176
                                                                                                                                      ((lambda (j7469
                                                                                                                                                k7470
                                                                                                                                                f7471)
                                                                                                                                         (lambda (g7468)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7469
                                                                                                                                            k7470
                                                                                                                                            (f7471
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7469
                                                                                                                                              k7470
                                                                                                                                              g7468)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world0))
                                                                                                                                     (x9175
                                                                                                                                      (input)))
                                                                                                                              (x9176
                                                                                                                               x9175))))
                                                                                                                    g8885)))
                                                                                                          g8832)))
                                                                                                g8831))))
                                                                                    g8773))))
                                                                        g8467))))
                                                            g8446))))
                                                g8425))))
                                    g8394)))
                          g8393))))
              g7506)))
    g7505))
