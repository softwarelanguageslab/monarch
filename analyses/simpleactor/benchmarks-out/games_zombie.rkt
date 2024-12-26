(letrec ((any? (lambda (v) (letrec ((g7453 #t)) g7453)))
         (meta (lambda (v) (letrec ((g7454 v)) g7454)))
         (member
          (lambda (v lst)
            (letrec ((g7455
                      (letrec ((g7456
                                (letrec ((x-e7457 lst))
                                  (match
                                   x-e7457
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7458 (eq? v v1)))
                                       (if x-cnd7458 #t (member v vs)))))))))
                        g7456)))
              g7455)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7459 (lambda (v) (letrec ((g7460 v)) g7460)))) g7459)))
         (nonzero?
          (lambda (v)
            (letrec ((g7461 (letrec ((x7462 (= v 0))) (not x7462)))) g7461))))
  (letrec ((g7463
            (letrec ((g7464
                      (letrec ((real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7465
                                            (letrec ((x-cnd7466 (real? g7162)))
                                              (if x-cnd7466
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7465)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7467
                                            (letrec ((x-cnd7468
                                                      (boolean? g7165)))
                                              (if x-cnd7468
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7467)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7469
                                            (letrec ((x-cnd7470
                                                      (number? g7168)))
                                              (if x-cnd7470
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7469)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7471
                                            (letrec ((x-cnd7472
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7472
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7471)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7473
                                            (letrec ((x-cnd7474
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7474
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7473)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7475
                                            (letrec ((x-cnd7476 (pair? g7177)))
                                              (if x-cnd7476
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7475)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7477
                                            (letrec ((x-cnd7478 (pair? g7180)))
                                              (if x-cnd7478
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7477)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7479
                                            (letrec ((x-cnd7480
                                                      (integer? g7183)))
                                              (if x-cnd7480
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7479)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7481
                                            (lambda (k j v)
                                              (letrec ((g7482
                                                        (letrec ((x-cnd7483
                                                                  (c1 k j v)))
                                                          (if x-cnd7483
                                                            (c2 k j v)
                                                            #f))))
                                                g7482))))
                                    g7481)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7484
                                            (lambda (k j v)
                                              (letrec ((g7485
                                                        (letrec ((x-cnd7486
                                                                  (null? v)))
                                                          (if x-cnd7486
                                                            '()
                                                            (letrec ((x7490
                                                                      (letrec ((x7491
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7491)))
                                                                     (x7487
                                                                      (letrec ((x7489
                                                                                (list-of
                                                                                 contract))
                                                                               (x7488
                                                                                (cdr
                                                                                 v)))
                                                                        (x7489
                                                                         k
                                                                         j
                                                                         x7488))))
                                                              (cons
                                                               x7490
                                                               x7487))))))
                                                g7485))))
                                    g7484)))
                               (any? (lambda (v) (letrec ((g7492 #t)) g7492)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7493
                                            (letrec ((x7494 (= v 0)))
                                              (not x7494))))
                                    g7493)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7495
                                            (letrec ((x-cnd7496
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7496
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7495)))
                               (meta (lambda (v) (letrec ((g7497 v)) g7497)))
                               (orig-+ +)
                               (+
                                ((lambda (j7189 k7190 f7191)
                                   (lambda (g7187 g7188)
                                     (number?/c
                                      j7189
                                      k7190
                                      (f7191
                                       (number?/c j7189 k7190 g7187)
                                       (number?/c j7189 k7190 g7188)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7194 k7195 f7196)
                                   (lambda (g7192 g7193)
                                     (number?/c
                                      j7194
                                      k7195
                                      (f7196
                                       (number?/c j7194 k7195 g7192)
                                       (number?/c j7194 k7195 g7193)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7199 k7200 f7201)
                                   (lambda (g7197 g7198)
                                     (number?/c
                                      j7199
                                      k7200
                                      (f7201
                                       (number?/c j7199 k7200 g7197)
                                       (number?/c j7199 k7200 g7198)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7202 g7203)
                                     (number?/c
                                      j7204
                                      k7205
                                      (f7206
                                       (number?/c j7204 k7205 g7202)
                                       (number?/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7207)
                                     (any/c
                                      j7208
                                      k7209
                                      (f7210 (pair?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7217 k7218 f7219)
                                   (lambda (g7215 g7216)
                                     (pair?/c
                                      j7217
                                      k7218
                                      (f7219
                                       (any/c j7217 k7218 g7215)
                                       (any/c j7217 k7218 g7216)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7220)
                                     (integer?/c
                                      j7221
                                      k7222
                                      (f7223 (vector?/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7226 k7227 f7228)
                                   (lambda (g7224 g7225)
                                     (any/c
                                      j7226
                                      k7227
                                      (f7228
                                       (vector?/c j7226 k7227 g7224)
                                       (integer?/c j7226 k7227 g7225)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7498 #t)) g7498)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7499
                                            (letrec ((x7500
                                                      (letrec ((x7501 (cdr x)))
                                                        (cdr x7501))))
                                              (cdr x7500))))
                                    g7499)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7502
                                            (letrec ((x7505 (procedure? f)))
                                              (assert x7505)))
                                           (g7503
                                            (letrec ((x7506 (list? l)))
                                              (assert x7506)))
                                           (g7504
                                            (letrec ((x-cnd7507 (null? l)))
                                              (if x-cnd7507
                                                '()
                                                (letrec ((x7510
                                                          (letrec ((x7511
                                                                    (car l)))
                                                            (f x7511)))
                                                         (x7508
                                                          (letrec ((x7509
                                                                    (cdr l)))
                                                            (map f x7509))))
                                                  (cons x7510 x7508))))))
                                    g7504)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7512
                                            (letrec ((x7513 (car x)))
                                              (cdr x7513))))
                                    g7512)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7514
                                            (letrec ((x7515
                                                      (letrec ((x7516
                                                                (letrec ((x7517
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7517))))
                                                        (cdr x7516))))
                                              (car x7515))))
                                    g7514)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7518
                                            (letrec ((x7519
                                                      (letrec ((x7520
                                                                (letrec ((x7521
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7521))))
                                                        (car x7520))))
                                              (cdr x7519))))
                                    g7518)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7522
                                            (letrec ((x7525
                                                      (string? filename)))
                                              (assert x7525)))
                                           (g7523
                                            (letrec ((x7526 (procedure? proc)))
                                              (assert x7526)))
                                           (g7524
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7527
                                                        (close-output-port
                                                         output-port))
                                                       (g7528 res))
                                                g7528))))
                                    g7524)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7529
                                            (letrec ((x7530
                                                      (letrec ((x7531 (cdr x)))
                                                        (cdr x7531))))
                                              (car x7530))))
                                    g7529)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7532
                                            (letrec ((x7533
                                                      (letrec ((x7534
                                                                (letrec ((x7535
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7535))))
                                                        (car x7534))))
                                              (cdr x7533))))
                                    g7532)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7536
                                            (letrec ((x7538 (list? l)))
                                              (assert x7538)))
                                           (g7537
                                            (letrec ((x-cnd7539 (null? l)))
                                              (if x-cnd7539
                                                #f
                                                (letrec ((x-cnd7540
                                                          (letrec ((x7541
                                                                    (caar l)))
                                                            (eq? x7541 k))))
                                                  (if x-cnd7540
                                                    (car l)
                                                    (letrec ((x7542 (cdr l)))
                                                      (assq k x7542))))))))
                                    g7537)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7543
                                            (letrec ((x7544 (modulo x 2)))
                                              (= 0 x7544))))
                                    g7543)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7545
                                            (letrec ((x7547 (list? l)))
                                              (assert x7547)))
                                           (g7546
                                            (letrec ((x-cnd7548 (null? l)))
                                              (if x-cnd7548
                                                ""
                                                (letrec ((x7551
                                                          (letrec ((x7552
                                                                    (car l)))
                                                            (char->string
                                                             x7552)))
                                                         (x7549
                                                          (letrec ((x7550
                                                                    (cdr l)))
                                                            (list->string
                                                             x7550))))
                                                  (string-append
                                                   x7551
                                                   x7549))))))
                                    g7546)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7553
                                            (letrec ((x7556 (char? c1)))
                                              (assert x7556)))
                                           (g7554
                                            (letrec ((x7557 (char? c2)))
                                              (assert x7557)))
                                           (g7555
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g7558
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g7558))))
                                    g7555)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g7559
                                            (letrec ((x7560
                                                      (letrec ((x7561
                                                                (letrec ((x7562
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7562))))
                                                        (cdr x7561))))
                                              (cdr x7560))))
                                    g7559)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g7563
                                            (letrec ((x7566 (list? l)))
                                              (assert x7566)))
                                           (g7564
                                            (letrec ((x7567 (numer?)))
                                              (assert x7567)))
                                           (g7565
                                            (letrec ((x-cnd7568 (zero? k)))
                                              (if x-cnd7568
                                                x
                                                (letrec ((x7570 (cdr x))
                                                         (x7569 (- k 1)))
                                                  (list-tail x7570 x7569))))))
                                    g7565)))
                               (halt (lambda () (letrec ((g7571 '())) g7571)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g7572
                                            (letrec ((x-cnd7573
                                                      (letrec ((x7574 #\a))
                                                        (char-ci>=? c x7574))))
                                              (if x-cnd7573
                                                (letrec ((x7575 #\z))
                                                  (char-ci<=? c x7575))
                                                #f))))
                                    g7572)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7576
                                            (letrec ((x7578 (number? x)))
                                              (assert x7578)))
                                           (g7577
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g7579
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g7580
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g7580)))))
                                                g7579))))
                                    g7577)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g7581
                                            (letrec ((val7146
                                                      (letrec ((x7582
                                                                (char->integer
                                                                 c)))
                                                        (= x7582 9))))
                                              (letrec ((g7583
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x7584
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x7584
                                                                       10))))
                                                            (letrec ((g7585
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x7586
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x7586
                                                                           32)))))
                                                              g7585)))))
                                                g7583))))
                                    g7581)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g7587
                                            (letrec ((x7588
                                                      (letrec ((x7589 (car x)))
                                                        (cdr x7589))))
                                              (cdr x7588))))
                                    g7587)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g7590
                                            (letrec ((x7592 (number? x)))
                                              (assert x7592)))
                                           (g7591 (> x 0)))
                                    g7591)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g7593 #f)) g7593)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g7594
                                            (letrec ((x7595 (cdr x)))
                                              (cdr x7595))))
                                    g7594)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g7596
                                            (letrec ((x7598 (number? x)))
                                              (assert x7598)))
                                           (g7597
                                            (letrec ((x-cnd7599 (< x 0)))
                                              (if x-cnd7599
                                                (ceiling x)
                                                (floor x)))))
                                    g7597)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g7600
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g7601
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x7603
                                                                              (null?
                                                                               a))
                                                                             (x7602
                                                                              (null?
                                                                               b)))
                                                                      (and x7603
                                                                           x7602))))
                                                            (letrec ((g7604
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x7607
                                                                                            (string?
                                                                                             a))
                                                                                           (x7606
                                                                                            (string?
                                                                                             b))
                                                                                           (x7605
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x7607
                                                                                         x7606
                                                                                         x7605))))
                                                                          (letrec ((g7608
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x7616
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x7615
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x7612
                                                                                                          (letrec ((x7614
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x7613
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7614
                                                                                                             x7613)))
                                                                                                         (x7609
                                                                                                          (letrec ((x7611
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x7610
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x7611
                                                                                                             x7610))))
                                                                                                  (and x7616
                                                                                                       x7615
                                                                                                       x7612
                                                                                                       x7609))))
                                                                                        (letrec ((g7617
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x7636
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x7635
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x7618
                                                                                                              (letrec ((x7632
                                                                                                                        (letrec ((x7633
                                                                                                                                  (letrec ((x7634
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x7634))))
                                                                                                                          (x7633)))
                                                                                                                       (x7619
                                                                                                                        (letrec ((x7630
                                                                                                                                  (letrec ((x7631
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x7631
                                                                                                                                     n)))
                                                                                                                                 (x7620
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g7621
                                                                                                                                                        (letrec ((x7628
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x7622
                                                                                                                                                                  (letrec ((x7625
                                                                                                                                                                            (letrec ((x7627
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x7626
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x7627
                                                                                                                                                                               x7626)))
                                                                                                                                                                           (x7623
                                                                                                                                                                            (letrec ((x7624
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x7624))))
                                                                                                                                                                    (and x7625
                                                                                                                                                                         x7623))))
                                                                                                                                                          (or x7628
                                                                                                                                                              x7622))))
                                                                                                                                                g7621))))
                                                                                                                                    (letrec ((g7629
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g7629))))
                                                                                                                          (and x7630
                                                                                                                               x7620))))
                                                                                                                (let x7632 x7619))))
                                                                                                      (and x7636
                                                                                                           x7635
                                                                                                           x7618)))))
                                                                                          g7617)))))
                                                                            g7608)))))
                                                              g7604)))))
                                                g7601))))
                                    g7600)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g7637
                                            (letrec ((x7638
                                                      (letrec ((x7639
                                                                (letrec ((x7640
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7640))))
                                                        (car x7639))))
                                              (cdr x7638))))
                                    g7637)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g7641
                                            (letrec ((x7642
                                                      (letrec ((x7643
                                                                (letrec ((x7644
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7644))))
                                                        (car x7643))))
                                              (car x7642))))
                                    g7641)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g7645 (eq? x y))) g7645)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7646
                                            (letrec ((x7648 (number? x)))
                                              (assert x7648)))
                                           (g7647
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g7649
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g7650
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g7650)))))
                                                g7649))))
                                    g7647)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g7651
                                            (letrec ((x7654
                                                      (string? filename)))
                                              (assert x7654)))
                                           (g7652
                                            (letrec ((x7655 (procedure? proc)))
                                              (assert x7655)))
                                           (g7653
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g7656
                                                        (close-input-port
                                                         input-port))
                                                       (g7657 res))
                                                g7657))))
                                    g7653)))
                               (ref
                                (lambda (x)
                                  (letrec ((g7658 (cons x '()))) g7658)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g7659
                                            (letrec ((x7662 (char? c1)))
                                              (assert x7662)))
                                           (g7660
                                            (letrec ((x7663 (char? c2)))
                                              (assert x7663)))
                                           (g7661
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g7664
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g7664))))
                                    g7661)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g7665
                                            (letrec ((x7666
                                                      (letrec ((x7667 (car x)))
                                                        (car x7667))))
                                              (cdr x7666))))
                                    g7665)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g7668
                                            (letrec ((x7669
                                                      (letrec ((x7670
                                                                (letrec ((x7671
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7671))))
                                                        (car x7670))))
                                              (cdr x7669))))
                                    g7668)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g7672
                                            (letrec ((x7673
                                                      (letrec ((x7674 (car x)))
                                                        (cdr x7674))))
                                              (car x7673))))
                                    g7672)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g7675
                                            (letrec ((x7676
                                                      (letrec ((x7677 (cdr x)))
                                                        (car x7677))))
                                              (car x7676))))
                                    g7675)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g7678
                                            (letrec ((x7681 (char? c1)))
                                              (assert x7681)))
                                           (g7679
                                            (letrec ((x7682 (char? c2)))
                                              (assert x7682)))
                                           (g7680
                                            (letrec ((x7683
                                                      (char-ci<=? c1 c2)))
                                              (not x7683))))
                                    g7680)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g7684
                                            (letrec ((x7685
                                                      (letrec ((x7686
                                                                (letrec ((x7687
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7687))))
                                                        (car x7686))))
                                              (car x7685))))
                                    g7684)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g7688
                                            (letrec ((x7690 (number? x)))
                                              (assert x7690)))
                                           (g7689 (< x 0)))
                                    g7689)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g7691 (memq e l))) g7691)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g7692
                                            (letrec ((x7693
                                                      (letrec ((x7694 (car x)))
                                                        (car x7694))))
                                              (car x7693))))
                                    g7692)))
                               (debug
                                (lambda (e) (letrec ((g7695 '())) g7695)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g7696
                                            (letrec ((x7698 (list? l)))
                                              (assert x7698)))
                                           (g7697
                                            (letrec ((x-cnd7699 (null? l)))
                                              (if x-cnd7699
                                                '()
                                                (letrec ((x7702
                                                          (letrec ((x7703
                                                                    (cdr l)))
                                                            (reverse x7703)))
                                                         (x7700
                                                          (letrec ((x7701
                                                                    (car l)))
                                                            (list x7701))))
                                                  (append x7702 x7700))))))
                                    g7697)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g7704
                                            (letrec ((x7705
                                                      (letrec ((x7706
                                                                (letrec ((x7707
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7707))))
                                                        (car x7706))))
                                              (car x7705))))
                                    g7704)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g7708
                                            (letrec ((x7709
                                                      (letrec ((x7710
                                                                (letrec ((x7711
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7711))))
                                                        (cdr x7710))))
                                              (cdr x7709))))
                                    g7708)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g7712
                                            (letrec ((x7714 (number? x)))
                                              (assert x7714)))
                                           (g7713
                                            (letrec ((x7715 (modulo x 2)))
                                              (= 1 x7715))))
                                    g7713)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g7716
                                            (letrec ((x7717
                                                      (letrec ((x7718
                                                                (letrec ((x7719
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7719))))
                                                        (car x7718))))
                                              (car x7717))))
                                    g7716)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g7720
                                            (letrec ((x7723 (procedure? proc)))
                                              (assert x7723)))
                                           (g7721
                                            (letrec ((x7724 (list? args)))
                                              (assert x7724)))
                                           (g7722
                                            (if cnd
                                              (letrec ((g7725 (proc))) g7725)
                                              (if cnd
                                                (letrec ((g7726
                                                          (letrec ((x7727
                                                                    (car
                                                                     args)))
                                                            (proc x7727))))
                                                  g7726)
                                                (if cnd
                                                  (letrec ((g7728
                                                            (letrec ((x7730
                                                                      (car
                                                                       args))
                                                                     (x7729
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x7730
                                                               x7729))))
                                                    g7728)
                                                  (if cnd
                                                    (letrec ((g7731
                                                              (letrec ((x7734
                                                                        (car
                                                                         args))
                                                                       (x7733
                                                                        (cadr
                                                                         args))
                                                                       (x7732
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x7734
                                                                 x7733
                                                                 x7732))))
                                                      g7731)
                                                    (if cnd
                                                      (letrec ((g7735
                                                                (letrec ((x7739
                                                                          (car
                                                                           args))
                                                                         (x7738
                                                                          (cadr
                                                                           args))
                                                                         (x7737
                                                                          (caddr
                                                                           args))
                                                                         (x7736
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x7739
                                                                   x7738
                                                                   x7737
                                                                   x7736))))
                                                        g7735)
                                                      (if cnd
                                                        (letrec ((g7740
                                                                  (letrec ((x7746
                                                                            (car
                                                                             args))
                                                                           (x7745
                                                                            (cadr
                                                                             args))
                                                                           (x7744
                                                                            (caddr
                                                                             args))
                                                                           (x7743
                                                                            (cadddr
                                                                             args))
                                                                           (x7741
                                                                            (letrec ((x7742
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x7742))))
                                                                    (proc
                                                                     x7746
                                                                     x7745
                                                                     x7744
                                                                     x7743
                                                                     x7741))))
                                                          g7740)
                                                        (if cnd
                                                          (letrec ((g7747
                                                                    (letrec ((x7755
                                                                              (car
                                                                               args))
                                                                             (x7754
                                                                              (cadr
                                                                               args))
                                                                             (x7753
                                                                              (caddr
                                                                               args))
                                                                             (x7752
                                                                              (cadddr
                                                                               args))
                                                                             (x7750
                                                                              (letrec ((x7751
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x7751)))
                                                                             (x7748
                                                                              (letrec ((x7749
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x7749))))
                                                                      (proc
                                                                       x7755
                                                                       x7754
                                                                       x7753
                                                                       x7752
                                                                       x7750
                                                                       x7748))))
                                                            g7747)
                                                          (if cnd
                                                            (letrec ((g7756
                                                                      (letrec ((x7766
                                                                                (car
                                                                                 args))
                                                                               (x7765
                                                                                (cadr
                                                                                 args))
                                                                               (x7764
                                                                                (caddr
                                                                                 args))
                                                                               (x7763
                                                                                (cadddr
                                                                                 args))
                                                                               (x7761
                                                                                (letrec ((x7762
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x7762)))
                                                                               (x7759
                                                                                (letrec ((x7760
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x7760)))
                                                                               (x7757
                                                                                (letrec ((x7758
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x7758))))
                                                                        (proc
                                                                         x7766
                                                                         x7765
                                                                         x7764
                                                                         x7763
                                                                         x7761
                                                                         x7759
                                                                         x7757))))
                                                              g7756)
                                                            (letrec ((g7767
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g7767)))))))))))
                                    g7722)))
                               (member
                                (lambda (e l)
                                  (letrec ((g7768
                                            (letrec ((x7770 (list? l)))
                                              (assert x7770)))
                                           (g7769
                                            (letrec ((x-cnd7771 (null? l)))
                                              (if x-cnd7771
                                                #f
                                                (letrec ((x-cnd7772
                                                          (letrec ((x7773
                                                                    (car l)))
                                                            (equal? x7773 e))))
                                                  (if x-cnd7772
                                                    l
                                                    (letrec ((x7774 (cdr l)))
                                                      (member e x7774))))))))
                                    g7769)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g7775
                                            (letrec ((x7776
                                                      (letrec ((x7777
                                                                (letrec ((x7778
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7778))))
                                                        (cdr x7777))))
                                              (cdr x7776))))
                                    g7775)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g7779
                                            (letrec ((x7780
                                                      (letrec ((x7781
                                                                (letrec ((x7782
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x7782))))
                                                        (cdr x7781))))
                                              (car x7780))))
                                    g7779)))
                               (int-top
                                (lambda ()
                                  (letrec ((g7783 (random 42))) g7783)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g7784
                                            (letrec ((x7786 (number? x)))
                                              (assert x7786)))
                                           (g7785 (= x 0)))
                                    g7785)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g7787
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g7788
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g7788))))
                                    g7787)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g7789
                                            (letrec ((x7790 (cdr x)))
                                              (car x7790))))
                                    g7789)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g7791
                                            (letrec ((val7156
                                                      (letrec ((x7794
                                                                (pair? l))
                                                               (x7792
                                                                (letrec ((x7793
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x7793))))
                                                        (and x7794 x7792))))
                                              (letrec ((g7795
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g7795))))
                                    g7791)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g7796
                                            (letrec ((x7797
                                                      (letrec ((x7798
                                                                (letrec ((x7799
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7799))))
                                                        (cdr x7798))))
                                              (cdr x7797))))
                                    g7796)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g7800
                                            (letrec ((x-cnd7801
                                                      (letrec ((x7802 #\0))
                                                        (char<=? x7802 c))))
                                              (if x-cnd7801
                                                (letrec ((x7803 #\9))
                                                  (char<=? c x7803))
                                                #f))))
                                    g7800)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g7804
                                            (letrec ((x7806 (list? l)))
                                              (assert x7806)))
                                           (g7805
                                            (letrec ((x-cnd7807 (null? l)))
                                              (if x-cnd7807
                                                #f
                                                (letrec ((x-cnd7808
                                                          (letrec ((x7809
                                                                    (caar l)))
                                                            (eqv? x7809 k))))
                                                  (if x-cnd7808
                                                    (car l)
                                                    (letrec ((x7810 (cdr l)))
                                                      (assq k x7810))))))))
                                    g7805)))
                               (not
                                (lambda (x)
                                  (letrec ((g7811 (if x #f #t))) g7811)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g7812 (append l1 l2))) g7812)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g7813
                                            (letrec ((x7815 (list? l)))
                                              (assert x7815)))
                                           (g7814
                                            (letrec ((x-cnd7816 (null? l)))
                                              (if x-cnd7816
                                                #f
                                                (letrec ((x-cnd7817
                                                          (letrec ((x7818
                                                                    (car l)))
                                                            (eq? x7818 e))))
                                                  (if x-cnd7817
                                                    l
                                                    (letrec ((x7819 (cdr l)))
                                                      (memq e x7819))))))))
                                    g7814)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g7820
                                            (letrec ((x7821
                                                      (letrec ((x7822
                                                                (letrec ((x7823
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x7823))))
                                                        (cdr x7822))))
                                              (car x7821))))
                                    g7820)))
                               (length
                                (lambda (l)
                                  (letrec ((g7824
                                            (letrec ((x7826 (list? l)))
                                              (assert x7826)))
                                           (g7825
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g7827
                                                                  (letrec ((x-cnd7828
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd7828
                                                                      0
                                                                      (letrec ((x7829
                                                                                (letrec ((x7830
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x7830))))
                                                                        (+
                                                                         1
                                                                         x7829))))))
                                                          g7827))))
                                              (letrec ((g7831 (rec l)))
                                                g7831))))
                                    g7825)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g7832
                                            (letrec ((x7835 (char? c1)))
                                              (assert x7835)))
                                           (g7833
                                            (letrec ((x7836 (char? c2)))
                                              (assert x7836)))
                                           (g7834
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g7837
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g7837))))
                                    g7834)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g7838
                                            (letrec ((x7839 (string<=? s1 s2)))
                                              (not x7839))))
                                    g7838)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g7840
                                            (letrec ((x7841
                                                      (letrec ((x7842 (cdr x)))
                                                        (car x7842))))
                                              (cdr x7841))))
                                    g7840)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g7843
                                            (letrec ((x7845 (list? l)))
                                              (assert x7845)))
                                           (g7844
                                            (letrec ((x-cnd7846 (null? l)))
                                              (if x-cnd7846
                                                #f
                                                (letrec ((x-cnd7847
                                                          (letrec ((x7848
                                                                    (caar l)))
                                                            (equal? x7848 k))))
                                                  (if x-cnd7847
                                                    (car l)
                                                    (letrec ((x7849 (cdr l)))
                                                      (assoc k x7849))))))))
                                    g7844)))
                               (caar
                                (lambda (x)
                                  (letrec ((g7850
                                            (letrec ((x7851 (car x)))
                                              (car x7851))))
                                    g7850)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g7852
                                            (letrec ((x7855 (char? c1)))
                                              (assert x7855)))
                                           (g7853
                                            (letrec ((x7856 (char? c2)))
                                              (assert x7856)))
                                           (g7854
                                            (letrec ((x7857 (char<=? c1 c2)))
                                              (not x7857))))
                                    g7854)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g7858
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g7859
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g7859))))
                                    g7858)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g7860
                                            (letrec ((x7863 (procedure? f)))
                                              (assert x7863)))
                                           (g7861
                                            (letrec ((x7864 (list? l)))
                                              (assert x7864)))
                                           (g7862
                                            (letrec ((x-cnd7865 (null? l)))
                                              (if x-cnd7865
                                                #t
                                                (letrec ((x-cnd7866 (pair? l)))
                                                  (if x-cnd7866
                                                    (letrec ((g7867
                                                              (letrec ((x7869
                                                                        (car
                                                                         l)))
                                                                (f x7869)))
                                                             (g7868
                                                              (letrec ((x7870
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x7870))))
                                                      g7868)
                                                    '()))))))
                                    g7862)))
                               (abs
                                (lambda (x)
                                  (letrec ((g7871
                                            (letrec ((x7873 (number? x)))
                                              (assert x7873)))
                                           (g7872
                                            (letrec ((x-cnd7874 (< x 0)))
                                              (if x-cnd7874 (- 0 x) x))))
                                    g7872)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g7875
                                            (letrec ((x7878 (char? c1)))
                                              (assert x7878)))
                                           (g7876
                                            (letrec ((x7879 (char? c2)))
                                              (assert x7879)))
                                           (g7877
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g7880
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g7880))))
                                    g7877)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g7881
                                            (letrec ((x7882
                                                      (letrec ((x7883
                                                                (letrec ((x7884
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7884))))
                                                        (cdr x7883))))
                                              (car x7882))))
                                    g7881)))
                               (newline
                                (lambda () (letrec ((g7885 #f)) g7885)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g7886
                                            (letrec ((x7888
                                                      (letrec ((x7889 (* m n)))
                                                        (abs x7889)))
                                                     (x7887 (gcd m n)))
                                              (/ x7888 x7887))))
                                    g7886)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g7890
                                            (letrec ((x7892 (number? x)))
                                              (assert x7892)))
                                           (g7891
                                            (letrec ((x7893 (<= x y)))
                                              (not x7893))))
                                    g7891)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g7894
                                            (letrec ((x7898 (list? l)))
                                              (assert x7898)))
                                           (g7895
                                            (letrec ((x7899 (number? index)))
                                              (assert x7899)))
                                           (g7896
                                            (letrec ((x7900
                                                      (letrec ((x7901
                                                                (length l)))
                                                        (< index x7901))))
                                              (assert x7900)))
                                           (g7897
                                            (letrec ((x-cnd7902 (= index 0)))
                                              (if x-cnd7902
                                                (car l)
                                                (letrec ((x7904 (cdr l))
                                                         (x7903 (- index 1)))
                                                  (list-ref x7904 x7903))))))
                                    g7897)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g7905
                                            (letrec ((x-cnd7906 (= b 0)))
                                              (if x-cnd7906
                                                a
                                                (letrec ((x7907 (modulo a b)))
                                                  (gcd b x7907))))))
                                    g7905)))
                               (real/c
                                (lambda (g7160 g7161 g7162)
                                  (letrec ((g7908
                                            (letrec ((x-cnd7909 (real? g7162)))
                                              (if x-cnd7909
                                                g7162
                                                (blame g7160 'real?)))))
                                    g7908)))
                               (boolean?/c
                                (lambda (g7163 g7164 g7165)
                                  (letrec ((g7910
                                            (letrec ((x-cnd7911
                                                      (boolean? g7165)))
                                              (if x-cnd7911
                                                g7165
                                                (blame g7163 'boolean?)))))
                                    g7910)))
                               (number?/c
                                (lambda (g7166 g7167 g7168)
                                  (letrec ((g7912
                                            (letrec ((x-cnd7913
                                                      (number? g7168)))
                                              (if x-cnd7913
                                                g7168
                                                (blame g7166 'number?)))))
                                    g7912)))
                               (any/c
                                (lambda (g7169 g7170 g7171)
                                  (letrec ((g7914
                                            (letrec ((x-cnd7915
                                                      ((lambda (v) #t) g7171)))
                                              (if x-cnd7915
                                                g7171
                                                (blame
                                                 g7169
                                                 '(lambda (v) #t))))))
                                    g7914)))
                               (any?/c
                                (lambda (g7172 g7173 g7174)
                                  (letrec ((g7916
                                            (letrec ((x-cnd7917
                                                      ((lambda (v) #t) g7174)))
                                              (if x-cnd7917
                                                g7174
                                                (blame
                                                 g7172
                                                 '(lambda (v) #t))))))
                                    g7916)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7175 g7176 g7177)
                                  (letrec ((g7918
                                            (letrec ((x-cnd7919 (pair? g7177)))
                                              (if x-cnd7919
                                                g7177
                                                (blame g7175 'pair?)))))
                                    g7918)))
                               (pair?/c
                                (lambda (g7178 g7179 g7180)
                                  (letrec ((g7920
                                            (letrec ((x-cnd7921 (pair? g7180)))
                                              (if x-cnd7921
                                                g7180
                                                (blame g7178 'pair?)))))
                                    g7920)))
                               (integer?
                                (lambda (g7181 g7182 g7183)
                                  (letrec ((g7922
                                            (letrec ((x-cnd7923
                                                      (integer? g7183)))
                                              (if x-cnd7923
                                                g7183
                                                (blame g7181 'integer?)))))
                                    g7922)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7924
                                            (lambda (k j v)
                                              (letrec ((g7925
                                                        (letrec ((x-cnd7926
                                                                  (c1 k j v)))
                                                          (if x-cnd7926
                                                            (c2 k j v)
                                                            #f))))
                                                g7925))))
                                    g7924)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7927
                                            (lambda (k j v)
                                              (letrec ((g7928
                                                        (letrec ((x-cnd7929
                                                                  (null? v)))
                                                          (if x-cnd7929
                                                            '()
                                                            (letrec ((x7933
                                                                      (letrec ((x7934
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7934)))
                                                                     (x7930
                                                                      (letrec ((x7932
                                                                                (list-of
                                                                                 contract))
                                                                               (x7931
                                                                                (cdr
                                                                                 v)))
                                                                        (x7932
                                                                         k
                                                                         j
                                                                         x7931))))
                                                              (cons
                                                               x7933
                                                               x7930))))))
                                                g7928))))
                                    g7927)))
                               (any? (lambda (v) (letrec ((g7935 #t)) g7935)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7936
                                            (letrec ((x7937 (= v 0)))
                                              (not x7937))))
                                    g7936)))
                               (nonzero?/c
                                (lambda (g7184 g7185 g7186)
                                  (letrec ((g7938
                                            (letrec ((x-cnd7939
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7186)))
                                              (if x-cnd7939
                                                g7186
                                                (blame
                                                 g7184
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7938)))
                               (meta (lambda (v) (letrec ((g7940 v)) g7940)))
                               (orig-+ +)
                               (+
                                ((lambda (j7189 k7190 f7191)
                                   (lambda (g7187 g7188)
                                     (number?/c
                                      j7189
                                      k7190
                                      (f7191
                                       (number?/c j7189 k7190 g7187)
                                       (number?/c j7189 k7190 g7188)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (orig-- -)
                               (-
                                ((lambda (j7194 k7195 f7196)
                                   (lambda (g7192 g7193)
                                     (number?/c
                                      j7194
                                      k7195
                                      (f7196
                                       (number?/c j7194 k7195 g7192)
                                       (number?/c j7194 k7195 g7193)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (orig-* *)
                               (*
                                ((lambda (j7199 k7200 f7201)
                                   (lambda (g7197 g7198)
                                     (number?/c
                                      j7199
                                      k7200
                                      (f7201
                                       (number?/c j7199 k7200 g7197)
                                       (number?/c j7199 k7200 g7198)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (orig-/ /)
                               (/
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7202 g7203)
                                     (number?/c
                                      j7204
                                      k7205
                                      (f7206
                                       (number?/c j7204 k7205 g7202)
                                       (number?/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (orig-car car)
                               (car
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7207)
                                     (any/c
                                      j7208
                                      k7209
                                      (f7210 (pair?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (orig-cdr cdr)
                               (cdr
                                ((lambda (j7212 k7213 f7214)
                                   (lambda (g7211)
                                     (any/c
                                      j7212
                                      k7213
                                      (f7214 (pair?/c j7212 k7213 g7211)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (orig-cons cons)
                               (cons
                                ((lambda (j7217 k7218 f7219)
                                   (lambda (g7215 g7216)
                                     (pair?/c
                                      j7217
                                      k7218
                                      (f7219
                                       (any/c j7217 k7218 g7215)
                                       (any/c j7217 k7218 g7216)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (orig-vector-ref vector-ref)
                               (vector-ref
                                ((lambda (j7221 k7222 f7223)
                                   (lambda (g7220)
                                     (integer?/c
                                      j7221
                                      k7222
                                      (f7223 (vector?/c j7221 k7222 g7220)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (orig-vector-set vector-set!)
                               (vector-set!
                                ((lambda (j7226 k7227 f7228)
                                   (lambda (g7224 g7225)
                                     (any/c
                                      j7226
                                      k7227
                                      (f7228
                                       (vector?/c j7226 k7227 g7224)
                                       (integer?/c j7226 k7227 g7225)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7941 #t)) g7941)))
                               (cdddr
                                (lambda (x)
                                  (letrec ((g7942
                                            (letrec ((x7943
                                                      (letrec ((x7944 (cdr x)))
                                                        (cdr x7944))))
                                              (cdr x7943))))
                                    g7942)))
                               (__toplevel_set-car! set-car!)
                               (map
                                (lambda (f l)
                                  (letrec ((g7945
                                            (letrec ((x7948 (procedure? f)))
                                              (assert x7948)))
                                           (g7946
                                            (letrec ((x7949 (list? l)))
                                              (assert x7949)))
                                           (g7947
                                            (letrec ((x-cnd7950 (null? l)))
                                              (if x-cnd7950
                                                '()
                                                (letrec ((x7953
                                                          (letrec ((x7954
                                                                    (car l)))
                                                            (f x7954)))
                                                         (x7951
                                                          (letrec ((x7952
                                                                    (cdr l)))
                                                            (map f x7952))))
                                                  (cons x7953 x7951))))))
                                    g7947)))
                               (cdar
                                (lambda (x)
                                  (letrec ((g7955
                                            (letrec ((x7956 (car x)))
                                              (cdr x7956))))
                                    g7955)))
                               (cadadr
                                (lambda (x)
                                  (letrec ((g7957
                                            (letrec ((x7958
                                                      (letrec ((x7959
                                                                (letrec ((x7960
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7960))))
                                                        (cdr x7959))))
                                              (car x7958))))
                                    g7957)))
                               (cdadar
                                (lambda (x)
                                  (letrec ((g7961
                                            (letrec ((x7962
                                                      (letrec ((x7963
                                                                (letrec ((x7964
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x7964))))
                                                        (car x7963))))
                                              (cdr x7962))))
                                    g7961)))
                               (call-with-output-file
                                (lambda (filename proc)
                                  (letrec ((g7965
                                            (letrec ((x7968
                                                      (string? filename)))
                                              (assert x7968)))
                                           (g7966
                                            (letrec ((x7969 (procedure? proc)))
                                              (assert x7969)))
                                           (g7967
                                            (letrec ((output-port
                                                      (open-output-file
                                                       filename))
                                                     (res (proc output-port)))
                                              (letrec ((g7970
                                                        (close-output-port
                                                         output-port))
                                                       (g7971 res))
                                                g7971))))
                                    g7967)))
                               (caddr
                                (lambda (x)
                                  (letrec ((g7972
                                            (letrec ((x7973
                                                      (letrec ((x7974 (cdr x)))
                                                        (cdr x7974))))
                                              (car x7973))))
                                    g7972)))
                               (cdaadr
                                (lambda (x)
                                  (letrec ((g7975
                                            (letrec ((x7976
                                                      (letrec ((x7977
                                                                (letrec ((x7978
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x7978))))
                                                        (car x7977))))
                                              (cdr x7976))))
                                    g7975)))
                               (assq
                                (lambda (k l)
                                  (letrec ((g7979
                                            (letrec ((x7981 (list? l)))
                                              (assert x7981)))
                                           (g7980
                                            (letrec ((x-cnd7982 (null? l)))
                                              (if x-cnd7982
                                                #f
                                                (letrec ((x-cnd7983
                                                          (letrec ((x7984
                                                                    (caar l)))
                                                            (eq? x7984 k))))
                                                  (if x-cnd7983
                                                    (car l)
                                                    (letrec ((x7985 (cdr l)))
                                                      (assq k x7985))))))))
                                    g7980)))
                               (even?
                                (lambda (x)
                                  (letrec ((g7986
                                            (letrec ((x7987 (modulo x 2)))
                                              (= 0 x7987))))
                                    g7986)))
                               (list->string
                                (lambda (l)
                                  (letrec ((g7988
                                            (letrec ((x7990 (list? l)))
                                              (assert x7990)))
                                           (g7989
                                            (letrec ((x-cnd7991 (null? l)))
                                              (if x-cnd7991
                                                ""
                                                (letrec ((x7994
                                                          (letrec ((x7995
                                                                    (car l)))
                                                            (char->string
                                                             x7995)))
                                                         (x7992
                                                          (letrec ((x7993
                                                                    (cdr l)))
                                                            (list->string
                                                             x7993))))
                                                  (string-append
                                                   x7994
                                                   x7992))))))
                                    g7989)))
                               (char<=?
                                (lambda (c1 c2)
                                  (letrec ((g7996
                                            (letrec ((x7999 (char? c1)))
                                              (assert x7999)))
                                           (g7997
                                            (letrec ((x8000 (char? c2)))
                                              (assert x8000)))
                                           (g7998
                                            (letrec ((val7143 (char<? c1 c2)))
                                              (letrec ((g8001
                                                        (if val7143
                                                          val7143
                                                          (char=? c1 c2))))
                                                g8001))))
                                    g7998)))
                               (cdddar
                                (lambda (x)
                                  (letrec ((g8002
                                            (letrec ((x8003
                                                      (letrec ((x8004
                                                                (letrec ((x8005
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8005))))
                                                        (cdr x8004))))
                                              (cdr x8003))))
                                    g8002)))
                               (list-tail
                                (lambda (x k)
                                  (letrec ((g8006
                                            (letrec ((x8009 (list? l)))
                                              (assert x8009)))
                                           (g8007
                                            (letrec ((x8010 (numer?)))
                                              (assert x8010)))
                                           (g8008
                                            (letrec ((x-cnd8011 (zero? k)))
                                              (if x-cnd8011
                                                x
                                                (letrec ((x8013 (cdr x))
                                                         (x8012 (- k 1)))
                                                  (list-tail x8013 x8012))))))
                                    g8008)))
                               (halt (lambda () (letrec ((g8014 '())) g8014)))
                               (char-alphabetic?
                                (lambda (c)
                                  (letrec ((g8015
                                            (letrec ((x-cnd8016
                                                      (letrec ((x8017 #\a))
                                                        (char-ci>=? c x8017))))
                                              (if x-cnd8016
                                                (letrec ((x8018 #\z))
                                                  (char-ci<=? c x8018))
                                                #f))))
                                    g8015)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g8019
                                            (letrec ((x8021 (number? x)))
                                              (assert x8021)))
                                           (g8020
                                            (letrec ((val7144 (< x y)))
                                              (letrec ((g8022
                                                        (if val7144
                                                          val7144
                                                          (letrec ((val7145
                                                                    (= x y)))
                                                            (letrec ((g8023
                                                                      (if val7145
                                                                        val7145
                                                                        #f)))
                                                              g8023)))))
                                                g8022))))
                                    g8020)))
                               (char-whitespace?
                                (lambda (c)
                                  (letrec ((g8024
                                            (letrec ((val7146
                                                      (letrec ((x8025
                                                                (char->integer
                                                                 c)))
                                                        (= x8025 9))))
                                              (letrec ((g8026
                                                        (if val7146
                                                          val7146
                                                          (letrec ((val7147
                                                                    (letrec ((x8027
                                                                              (char->integer
                                                                               c)))
                                                                      (=
                                                                       x8027
                                                                       10))))
                                                            (letrec ((g8028
                                                                      (if val7147
                                                                        val7147
                                                                        (letrec ((x8029
                                                                                  (char->integer
                                                                                   c)))
                                                                          (=
                                                                           x8029
                                                                           32)))))
                                                              g8028)))))
                                                g8026))))
                                    g8024)))
                               (cddar
                                (lambda (x)
                                  (letrec ((g8030
                                            (letrec ((x8031
                                                      (letrec ((x8032 (car x)))
                                                        (cdr x8032))))
                                              (cdr x8031))))
                                    g8030)))
                               (positive?
                                (lambda (x)
                                  (letrec ((g8033
                                            (letrec ((x8035 (number? x)))
                                              (assert x8035)))
                                           (g8034 (> x 0)))
                                    g8034)))
                               ($pc '())
                               (ref-set set-car!)
                               (void (lambda () (letrec ((g8036 #f)) g8036)))
                               (cddr
                                (lambda (x)
                                  (letrec ((g8037
                                            (letrec ((x8038 (cdr x)))
                                              (cdr x8038))))
                                    g8037)))
                               (truncate
                                (lambda (x)
                                  (letrec ((g8039
                                            (letrec ((x8041 (number? x)))
                                              (assert x8041)))
                                           (g8040
                                            (letrec ((x-cnd8042 (< x 0)))
                                              (if x-cnd8042
                                                (ceiling x)
                                                (floor x)))))
                                    g8040)))
                               ($cmp '())
                               (equal?
                                (lambda (a b)
                                  (letrec ((g8043
                                            (letrec ((val7148 (eq? a b)))
                                              (letrec ((g8044
                                                        (if val7148
                                                          val7148
                                                          (letrec ((val7149
                                                                    (letrec ((x8046
                                                                              (null?
                                                                               a))
                                                                             (x8045
                                                                              (null?
                                                                               b)))
                                                                      (and x8046
                                                                           x8045))))
                                                            (letrec ((g8047
                                                                      (if val7149
                                                                        val7149
                                                                        (letrec ((val7150
                                                                                  (letrec ((x8050
                                                                                            (string?
                                                                                             a))
                                                                                           (x8049
                                                                                            (string?
                                                                                             b))
                                                                                           (x8048
                                                                                            (string=?
                                                                                             a
                                                                                             b)))
                                                                                    (and x8050
                                                                                         x8049
                                                                                         x8048))))
                                                                          (letrec ((g8051
                                                                                    (if val7150
                                                                                      val7150
                                                                                      (letrec ((val7151
                                                                                                (letrec ((x8059
                                                                                                          (pair?
                                                                                                           a))
                                                                                                         (x8058
                                                                                                          (pair?
                                                                                                           b))
                                                                                                         (x8055
                                                                                                          (letrec ((x8057
                                                                                                                    (car
                                                                                                                     a))
                                                                                                                   (x8056
                                                                                                                    (car
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x8057
                                                                                                             x8056)))
                                                                                                         (x8052
                                                                                                          (letrec ((x8054
                                                                                                                    (cdr
                                                                                                                     a))
                                                                                                                   (x8053
                                                                                                                    (cdr
                                                                                                                     b)))
                                                                                                            (equal?
                                                                                                             x8054
                                                                                                             x8053))))
                                                                                                  (and x8059
                                                                                                       x8058
                                                                                                       x8055
                                                                                                       x8052))))
                                                                                        (letrec ((g8060
                                                                                                  (if val7151
                                                                                                    val7151
                                                                                                    (letrec ((x8079
                                                                                                              (vector?
                                                                                                               a))
                                                                                                             (x8078
                                                                                                              (vector?
                                                                                                               b))
                                                                                                             (x8061
                                                                                                              (letrec ((x8075
                                                                                                                        (letrec ((x8076
                                                                                                                                  (letrec ((x8077
                                                                                                                                            (vector-length
                                                                                                                                             a)))
                                                                                                                                    (n
                                                                                                                                     x8077))))
                                                                                                                          (x8076)))
                                                                                                                       (x8062
                                                                                                                        (letrec ((x8073
                                                                                                                                  (letrec ((x8074
                                                                                                                                            (vector-length
                                                                                                                                             b)))
                                                                                                                                    (=
                                                                                                                                     x8074
                                                                                                                                     n)))
                                                                                                                                 (x8063
                                                                                                                                  (letrec ((loop
                                                                                                                                            (lambda (i)
                                                                                                                                              (letrec ((g8064
                                                                                                                                                        (letrec ((x8071
                                                                                                                                                                  (=
                                                                                                                                                                   i
                                                                                                                                                                   n))
                                                                                                                                                                 (x8065
                                                                                                                                                                  (letrec ((x8068
                                                                                                                                                                            (letrec ((x8070
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       a
                                                                                                                                                                                       i))
                                                                                                                                                                                     (x8069
                                                                                                                                                                                      (vector-ref
                                                                                                                                                                                       b
                                                                                                                                                                                       i)))
                                                                                                                                                                              (equal?
                                                                                                                                                                               x8070
                                                                                                                                                                               x8069)))
                                                                                                                                                                           (x8066
                                                                                                                                                                            (letrec ((x8067
                                                                                                                                                                                      (+
                                                                                                                                                                                       i
                                                                                                                                                                                       1)))
                                                                                                                                                                              (loop
                                                                                                                                                                               x8067))))
                                                                                                                                                                    (and x8068
                                                                                                                                                                         x8066))))
                                                                                                                                                          (or x8071
                                                                                                                                                              x8065))))
                                                                                                                                                g8064))))
                                                                                                                                    (letrec ((g8072
                                                                                                                                              (loop
                                                                                                                                               0)))
                                                                                                                                      g8072))))
                                                                                                                          (and x8073
                                                                                                                               x8063))))
                                                                                                                (let x8075 x8062))))
                                                                                                      (and x8079
                                                                                                           x8078
                                                                                                           x8061)))))
                                                                                          g8060)))))
                                                                            g8051)))))
                                                              g8047)))))
                                                g8044))))
                                    g8043)))
                               (cdaaar
                                (lambda (x)
                                  (letrec ((g8080
                                            (letrec ((x8081
                                                      (letrec ((x8082
                                                                (letrec ((x8083
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8083))))
                                                        (car x8082))))
                                              (cdr x8081))))
                                    g8080)))
                               (caaddr
                                (lambda (x)
                                  (letrec ((g8084
                                            (letrec ((x8085
                                                      (letrec ((x8086
                                                                (letrec ((x8087
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8087))))
                                                        (car x8086))))
                                              (car x8085))))
                                    g8084)))
                               (eqv?
                                (lambda (x y)
                                  (letrec ((g8088 (eq? x y))) g8088)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g8089
                                            (letrec ((x8091 (number? x)))
                                              (assert x8091)))
                                           (g8090
                                            (letrec ((val7152 (> x y)))
                                              (letrec ((g8092
                                                        (if val7152
                                                          val7152
                                                          (letrec ((val7153
                                                                    (= x y)))
                                                            (letrec ((g8093
                                                                      (if val7153
                                                                        val7153
                                                                        #f)))
                                                              g8093)))))
                                                g8092))))
                                    g8090)))
                               (call-with-input-file
                                (lambda (filename proc)
                                  (letrec ((g8094
                                            (letrec ((x8097
                                                      (string? filename)))
                                              (assert x8097)))
                                           (g8095
                                            (letrec ((x8098 (procedure? proc)))
                                              (assert x8098)))
                                           (g8096
                                            (letrec ((input-port
                                                      (open-input-file
                                                       filename))
                                                     (res (proc input-port)))
                                              (letrec ((g8099
                                                        (close-input-port
                                                         input-port))
                                                       (g8100 res))
                                                g8100))))
                                    g8096)))
                               (ref
                                (lambda (x)
                                  (letrec ((g8101 (cons x '()))) g8101)))
                               (char>=?
                                (lambda (c1 c2)
                                  (letrec ((g8102
                                            (letrec ((x8105 (char? c1)))
                                              (assert x8105)))
                                           (g8103
                                            (letrec ((x8106 (char? c2)))
                                              (assert x8106)))
                                           (g8104
                                            (letrec ((val7154 (char>? c1 c2)))
                                              (letrec ((g8107
                                                        (if val7154
                                                          val7154
                                                          (char=? c1 c2))))
                                                g8107))))
                                    g8104)))
                               (cdaar
                                (lambda (x)
                                  (letrec ((g8108
                                            (letrec ((x8109
                                                      (letrec ((x8110 (car x)))
                                                        (car x8110))))
                                              (cdr x8109))))
                                    g8108)))
                               (cdaddr
                                (lambda (x)
                                  (letrec ((g8111
                                            (letrec ((x8112
                                                      (letrec ((x8113
                                                                (letrec ((x8114
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8114))))
                                                        (car x8113))))
                                              (cdr x8112))))
                                    g8111)))
                               (__toplevel_cdr cdr)
                               (cadar
                                (lambda (x)
                                  (letrec ((g8115
                                            (letrec ((x8116
                                                      (letrec ((x8117 (car x)))
                                                        (cdr x8117))))
                                              (car x8116))))
                                    g8115)))
                               (caadr
                                (lambda (x)
                                  (letrec ((g8118
                                            (letrec ((x8119
                                                      (letrec ((x8120 (cdr x)))
                                                        (car x8120))))
                                              (car x8119))))
                                    g8118)))
                               (char-ci>?
                                (lambda (c1 c2)
                                  (letrec ((g8121
                                            (letrec ((x8124 (char? c1)))
                                              (assert x8124)))
                                           (g8122
                                            (letrec ((x8125 (char? c2)))
                                              (assert x8125)))
                                           (g8123
                                            (letrec ((x8126
                                                      (char-ci<=? c1 c2)))
                                              (not x8126))))
                                    g8123)))
                               (__toplevel_set-cdr! set-cdr!)
                               (caaaar
                                (lambda (x)
                                  (letrec ((g8127
                                            (letrec ((x8128
                                                      (letrec ((x8129
                                                                (letrec ((x8130
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8130))))
                                                        (car x8129))))
                                              (car x8128))))
                                    g8127)))
                               (negative?
                                (lambda (x)
                                  (letrec ((g8131
                                            (letrec ((x8133 (number? x)))
                                              (assert x8133)))
                                           (g8132 (< x 0)))
                                    g8132)))
                               (memv
                                (lambda (e l)
                                  (letrec ((g8134 (memq e l))) g8134)))
                               (caaar
                                (lambda (x)
                                  (letrec ((g8135
                                            (letrec ((x8136
                                                      (letrec ((x8137 (car x)))
                                                        (car x8137))))
                                              (car x8136))))
                                    g8135)))
                               (debug
                                (lambda (e) (letrec ((g8138 '())) g8138)))
                               (reverse
                                (lambda (l)
                                  (letrec ((g8139
                                            (letrec ((x8141 (list? l)))
                                              (assert x8141)))
                                           (g8140
                                            (letrec ((x-cnd8142 (null? l)))
                                              (if x-cnd8142
                                                '()
                                                (letrec ((x8145
                                                          (letrec ((x8146
                                                                    (cdr l)))
                                                            (reverse x8146)))
                                                         (x8143
                                                          (letrec ((x8144
                                                                    (car l)))
                                                            (list x8144))))
                                                  (append x8145 x8143))))))
                                    g8140)))
                               (caaadr
                                (lambda (x)
                                  (letrec ((g8147
                                            (letrec ((x8148
                                                      (letrec ((x8149
                                                                (letrec ((x8150
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8150))))
                                                        (car x8149))))
                                              (car x8148))))
                                    g8147)))
                               (cddadr
                                (lambda (x)
                                  (letrec ((g8151
                                            (letrec ((x8152
                                                      (letrec ((x8153
                                                                (letrec ((x8154
                                                                          (cdr
                                                                           x)))
                                                                  (car
                                                                   x8154))))
                                                        (cdr x8153))))
                                              (cdr x8152))))
                                    g8151)))
                               (odd?
                                (lambda (x)
                                  (letrec ((g8155
                                            (letrec ((x8157 (number? x)))
                                              (assert x8157)))
                                           (g8156
                                            (letrec ((x8158 (modulo x 2)))
                                              (= 1 x8158))))
                                    g8156)))
                               (caadar
                                (lambda (x)
                                  (letrec ((g8159
                                            (letrec ((x8160
                                                      (letrec ((x8161
                                                                (letrec ((x8162
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8162))))
                                                        (car x8161))))
                                              (car x8160))))
                                    g8159)))
                               (apply
                                (lambda (proc args)
                                  (letrec ((g8163
                                            (letrec ((x8166 (procedure? proc)))
                                              (assert x8166)))
                                           (g8164
                                            (letrec ((x8167 (list? args)))
                                              (assert x8167)))
                                           (g8165
                                            (if cnd
                                              (letrec ((g8168 (proc))) g8168)
                                              (if cnd
                                                (letrec ((g8169
                                                          (letrec ((x8170
                                                                    (car
                                                                     args)))
                                                            (proc x8170))))
                                                  g8169)
                                                (if cnd
                                                  (letrec ((g8171
                                                            (letrec ((x8173
                                                                      (car
                                                                       args))
                                                                     (x8172
                                                                      (cadr
                                                                       args)))
                                                              (proc
                                                               x8173
                                                               x8172))))
                                                    g8171)
                                                  (if cnd
                                                    (letrec ((g8174
                                                              (letrec ((x8177
                                                                        (car
                                                                         args))
                                                                       (x8176
                                                                        (cadr
                                                                         args))
                                                                       (x8175
                                                                        (caddr
                                                                         args)))
                                                                (proc
                                                                 x8177
                                                                 x8176
                                                                 x8175))))
                                                      g8174)
                                                    (if cnd
                                                      (letrec ((g8178
                                                                (letrec ((x8182
                                                                          (car
                                                                           args))
                                                                         (x8181
                                                                          (cadr
                                                                           args))
                                                                         (x8180
                                                                          (caddr
                                                                           args))
                                                                         (x8179
                                                                          (cadddr
                                                                           args)))
                                                                  (proc
                                                                   x8182
                                                                   x8181
                                                                   x8180
                                                                   x8179))))
                                                        g8178)
                                                      (if cnd
                                                        (letrec ((g8183
                                                                  (letrec ((x8189
                                                                            (car
                                                                             args))
                                                                           (x8188
                                                                            (cadr
                                                                             args))
                                                                           (x8187
                                                                            (caddr
                                                                             args))
                                                                           (x8186
                                                                            (cadddr
                                                                             args))
                                                                           (x8184
                                                                            (letrec ((x8185
                                                                                      (cddddr
                                                                                       args)))
                                                                              (car
                                                                               x8185))))
                                                                    (proc
                                                                     x8189
                                                                     x8188
                                                                     x8187
                                                                     x8186
                                                                     x8184))))
                                                          g8183)
                                                        (if cnd
                                                          (letrec ((g8190
                                                                    (letrec ((x8198
                                                                              (car
                                                                               args))
                                                                             (x8197
                                                                              (cadr
                                                                               args))
                                                                             (x8196
                                                                              (caddr
                                                                               args))
                                                                             (x8195
                                                                              (cadddr
                                                                               args))
                                                                             (x8193
                                                                              (letrec ((x8194
                                                                                        (cddddr
                                                                                         args)))
                                                                                (car
                                                                                 x8194)))
                                                                             (x8191
                                                                              (letrec ((x8192
                                                                                        (cddddr
                                                                                         args)))
                                                                                (cadr
                                                                                 x8192))))
                                                                      (proc
                                                                       x8198
                                                                       x8197
                                                                       x8196
                                                                       x8195
                                                                       x8193
                                                                       x8191))))
                                                            g8190)
                                                          (if cnd
                                                            (letrec ((g8199
                                                                      (letrec ((x8209
                                                                                (car
                                                                                 args))
                                                                               (x8208
                                                                                (cadr
                                                                                 args))
                                                                               (x8207
                                                                                (caddr
                                                                                 args))
                                                                               (x8206
                                                                                (cadddr
                                                                                 args))
                                                                               (x8204
                                                                                (letrec ((x8205
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (car
                                                                                   x8205)))
                                                                               (x8202
                                                                                (letrec ((x8203
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (cadr
                                                                                   x8203)))
                                                                               (x8200
                                                                                (letrec ((x8201
                                                                                          (cddddr
                                                                                           args)))
                                                                                  (caddr
                                                                                   x8201))))
                                                                        (proc
                                                                         x8209
                                                                         x8208
                                                                         x8207
                                                                         x8206
                                                                         x8204
                                                                         x8202
                                                                         x8200))))
                                                              g8199)
                                                            (letrec ((g8210
                                                                      (error
                                                                       "Unsupported call.")))
                                                              g8210)))))))))))
                                    g8165)))
                               (member
                                (lambda (e l)
                                  (letrec ((g8211
                                            (letrec ((x8213 (list? l)))
                                              (assert x8213)))
                                           (g8212
                                            (letrec ((x-cnd8214 (null? l)))
                                              (if x-cnd8214
                                                #f
                                                (letrec ((x-cnd8215
                                                          (letrec ((x8216
                                                                    (car l)))
                                                            (equal? x8216 e))))
                                                  (if x-cnd8215
                                                    l
                                                    (letrec ((x8217 (cdr l)))
                                                      (member e x8217))))))))
                                    g8212)))
                               (call-with-current-continuation call/cc)
                               (cddddr
                                (lambda (x)
                                  (letrec ((g8218
                                            (letrec ((x8219
                                                      (letrec ((x8220
                                                                (letrec ((x8221
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8221))))
                                                        (cdr x8220))))
                                              (cdr x8219))))
                                    g8218)))
                               (cadddr
                                (lambda (x)
                                  (letrec ((g8222
                                            (letrec ((x8223
                                                      (letrec ((x8224
                                                                (letrec ((x8225
                                                                          (cdr
                                                                           x)))
                                                                  (cdr
                                                                   x8225))))
                                                        (cdr x8224))))
                                              (car x8223))))
                                    g8222)))
                               (int-top
                                (lambda ()
                                  (letrec ((g8226 (random 42))) g8226)))
                               (zero?
                                (lambda (x)
                                  (letrec ((g8227
                                            (letrec ((x8229 (number? x)))
                                              (assert x8229)))
                                           (g8228 (= x 0)))
                                    g8228)))
                               (string>=?
                                (lambda (s1 s2)
                                  (letrec ((g8230
                                            (letrec ((val7155
                                                      (string>? s1 s2)))
                                              (letrec ((g8231
                                                        (if val7155
                                                          val7155
                                                          (string=? s1 s2))))
                                                g8231))))
                                    g8230)))
                               (cadr
                                (lambda (x)
                                  (letrec ((g8232
                                            (letrec ((x8233 (cdr x)))
                                              (car x8233))))
                                    g8232)))
                               (__toplevel_car car)
                               (list?
                                (lambda (l)
                                  (letrec ((g8234
                                            (letrec ((val7156
                                                      (letrec ((x8237
                                                                (pair? l))
                                                               (x8235
                                                                (letrec ((x8236
                                                                          (cdr
                                                                           l)))
                                                                  (list?
                                                                   x8236))))
                                                        (and x8237 x8235))))
                                              (letrec ((g8238
                                                        (if val7156
                                                          val7156
                                                          (null? l))))
                                                g8238))))
                                    g8234)))
                               (cddaar
                                (lambda (x)
                                  (letrec ((g8239
                                            (letrec ((x8240
                                                      (letrec ((x8241
                                                                (letrec ((x8242
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8242))))
                                                        (cdr x8241))))
                                              (cdr x8240))))
                                    g8239)))
                               (char-numeric?
                                (lambda (c)
                                  (letrec ((g8243
                                            (letrec ((x-cnd8244
                                                      (letrec ((x8245 #\0))
                                                        (char<=? x8245 c))))
                                              (if x-cnd8244
                                                (letrec ((x8246 #\9))
                                                  (char<=? c x8246))
                                                #f))))
                                    g8243)))
                               (__toplevel_cons cons)
                               (assv
                                (lambda (k l)
                                  (letrec ((g8247
                                            (letrec ((x8249 (list? l)))
                                              (assert x8249)))
                                           (g8248
                                            (letrec ((x-cnd8250 (null? l)))
                                              (if x-cnd8250
                                                #f
                                                (letrec ((x-cnd8251
                                                          (letrec ((x8252
                                                                    (caar l)))
                                                            (eqv? x8252 k))))
                                                  (if x-cnd8251
                                                    (car l)
                                                    (letrec ((x8253 (cdr l)))
                                                      (assq k x8253))))))))
                                    g8248)))
                               (not
                                (lambda (x)
                                  (letrec ((g8254 (if x #f #t))) g8254)))
                               (__toplevel_append
                                (lambda (l1 l2)
                                  (letrec ((g8255 (append l1 l2))) g8255)))
                               (memq
                                (lambda (e l)
                                  (letrec ((g8256
                                            (letrec ((x8258 (list? l)))
                                              (assert x8258)))
                                           (g8257
                                            (letrec ((x-cnd8259 (null? l)))
                                              (if x-cnd8259
                                                #f
                                                (letrec ((x-cnd8260
                                                          (letrec ((x8261
                                                                    (car l)))
                                                            (eq? x8261 e))))
                                                  (if x-cnd8260
                                                    l
                                                    (letrec ((x8262 (cdr l)))
                                                      (memq e x8262))))))))
                                    g8257)))
                               (cadaar
                                (lambda (x)
                                  (letrec ((g8263
                                            (letrec ((x8264
                                                      (letrec ((x8265
                                                                (letrec ((x8266
                                                                          (car
                                                                           x)))
                                                                  (car
                                                                   x8266))))
                                                        (cdr x8265))))
                                              (car x8264))))
                                    g8263)))
                               (length
                                (lambda (l)
                                  (letrec ((g8267
                                            (letrec ((x8269 (list? l)))
                                              (assert x8269)))
                                           (g8268
                                            (letrec ((rec
                                                      (lambda (l)
                                                        (letrec ((g8270
                                                                  (letrec ((x-cnd8271
                                                                            (null?
                                                                             l)))
                                                                    (if x-cnd8271
                                                                      0
                                                                      (letrec ((x8272
                                                                                (letrec ((x8273
                                                                                          (cdr
                                                                                           l)))
                                                                                  (rec
                                                                                   x8273))))
                                                                        (+
                                                                         1
                                                                         x8272))))))
                                                          g8270))))
                                              (letrec ((g8274 (rec l)))
                                                g8274))))
                                    g8268)))
                               (char-ci<=?
                                (lambda (c1 c2)
                                  (letrec ((g8275
                                            (letrec ((x8278 (char? c1)))
                                              (assert x8278)))
                                           (g8276
                                            (letrec ((x8279 (char? c2)))
                                              (assert x8279)))
                                           (g8277
                                            (letrec ((val7157
                                                      (char-ci<? c1 c2)))
                                              (letrec ((g8280
                                                        (if val7157
                                                          val7157
                                                          (char-ci=? c1 c2))))
                                                g8280))))
                                    g8277)))
                               (string>?
                                (lambda (s1 s2)
                                  (letrec ((g8281
                                            (letrec ((x8282 (string<=? s1 s2)))
                                              (not x8282))))
                                    g8281)))
                               (cdadr
                                (lambda (x)
                                  (letrec ((g8283
                                            (letrec ((x8284
                                                      (letrec ((x8285 (cdr x)))
                                                        (car x8285))))
                                              (cdr x8284))))
                                    g8283)))
                               (assoc
                                (lambda (k l)
                                  (letrec ((g8286
                                            (letrec ((x8288 (list? l)))
                                              (assert x8288)))
                                           (g8287
                                            (letrec ((x-cnd8289 (null? l)))
                                              (if x-cnd8289
                                                #f
                                                (letrec ((x-cnd8290
                                                          (letrec ((x8291
                                                                    (caar l)))
                                                            (equal? x8291 k))))
                                                  (if x-cnd8290
                                                    (car l)
                                                    (letrec ((x8292 (cdr l)))
                                                      (assoc k x8292))))))))
                                    g8287)))
                               (caar
                                (lambda (x)
                                  (letrec ((g8293
                                            (letrec ((x8294 (car x)))
                                              (car x8294))))
                                    g8293)))
                               (char>?
                                (lambda (c1 c2)
                                  (letrec ((g8295
                                            (letrec ((x8298 (char? c1)))
                                              (assert x8298)))
                                           (g8296
                                            (letrec ((x8299 (char? c2)))
                                              (assert x8299)))
                                           (g8297
                                            (letrec ((x8300 (char<=? c1 c2)))
                                              (not x8300))))
                                    g8297)))
                               (string<=?
                                (lambda (s1 s2)
                                  (letrec ((g8301
                                            (letrec ((val7158
                                                      (string<? s1 s2)))
                                              (letrec ((g8302
                                                        (if val7158
                                                          val7158
                                                          (string=? s1 s2))))
                                                g8302))))
                                    g8301)))
                               (for-each
                                (lambda (f l)
                                  (letrec ((g8303
                                            (letrec ((x8306 (procedure? f)))
                                              (assert x8306)))
                                           (g8304
                                            (letrec ((x8307 (list? l)))
                                              (assert x8307)))
                                           (g8305
                                            (letrec ((x-cnd8308 (null? l)))
                                              (if x-cnd8308
                                                #t
                                                (letrec ((x-cnd8309 (pair? l)))
                                                  (if x-cnd8309
                                                    (letrec ((g8310
                                                              (letrec ((x8312
                                                                        (car
                                                                         l)))
                                                                (f x8312)))
                                                             (g8311
                                                              (letrec ((x8313
                                                                        (cdr
                                                                         l)))
                                                                (for-each
                                                                 f
                                                                 x8313))))
                                                      g8311)
                                                    '()))))))
                                    g8305)))
                               (abs
                                (lambda (x)
                                  (letrec ((g8314
                                            (letrec ((x8316 (number? x)))
                                              (assert x8316)))
                                           (g8315
                                            (letrec ((x-cnd8317 (< x 0)))
                                              (if x-cnd8317 (- 0 x) x))))
                                    g8315)))
                               (char-ci>=?
                                (lambda (c1 c2)
                                  (letrec ((g8318
                                            (letrec ((x8321 (char? c1)))
                                              (assert x8321)))
                                           (g8319
                                            (letrec ((x8322 (char? c2)))
                                              (assert x8322)))
                                           (g8320
                                            (letrec ((val7159
                                                      (char-ci>? c1 c2)))
                                              (letrec ((g8323
                                                        (if val7159
                                                          val7159
                                                          (char-ci=? c1 c2))))
                                                g8323))))
                                    g8320)))
                               (caddar
                                (lambda (x)
                                  (letrec ((g8324
                                            (letrec ((x8325
                                                      (letrec ((x8326
                                                                (letrec ((x8327
                                                                          (car
                                                                           x)))
                                                                  (cdr
                                                                   x8327))))
                                                        (cdr x8326))))
                                              (car x8325))))
                                    g8324)))
                               (newline
                                (lambda () (letrec ((g8328 #f)) g8328)))
                               (lcm
                                (lambda (m n)
                                  (letrec ((g8329
                                            (letrec ((x8331
                                                      (letrec ((x8332 (* m n)))
                                                        (abs x8332)))
                                                     (x8330 (gcd m n)))
                                              (/ x8331 x8330))))
                                    g8329)))
                               (deref car)
                               (>
                                (lambda (x y)
                                  (letrec ((g8333
                                            (letrec ((x8335 (number? x)))
                                              (assert x8335)))
                                           (g8334
                                            (letrec ((x8336 (<= x y)))
                                              (not x8336))))
                                    g8334)))
                               (list-ref
                                (lambda (l index)
                                  (letrec ((g8337
                                            (letrec ((x8341 (list? l)))
                                              (assert x8341)))
                                           (g8338
                                            (letrec ((x8342 (number? index)))
                                              (assert x8342)))
                                           (g8339
                                            (letrec ((x8343
                                                      (letrec ((x8344
                                                                (length l)))
                                                        (< index x8344))))
                                              (assert x8343)))
                                           (g8340
                                            (letrec ((x-cnd8345 (= index 0)))
                                              (if x-cnd8345
                                                (car l)
                                                (letrec ((x8347 (cdr l))
                                                         (x8346 (- index 1)))
                                                  (list-ref x8347 x8346))))))
                                    g8340)))
                               (gcd
                                (lambda (a b)
                                  (letrec ((g8348
                                            (letrec ((x-cnd8349 (= b 0)))
                                              (if x-cnd8349
                                                a
                                                (letrec ((x8350 (modulo a b)))
                                                  (gcd b x8350))))))
                                    g8348))))
                        (letrec ((g8351
                                  (letrec ((g8352
                                            (letrec ((image
                                                      (lambda ()
                                                        (letrec ((g8353
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g8353)))
                                                     (image?
                                                      (lambda (image7452)
                                                        (letrec ((g8354
                                                                  (letrec ((x8355
                                                                            (car
                                                                             image7452)))
                                                                    (eq?
                                                                     x8355
                                                                     'image))))
                                                          g8354)))
                                                     (image
                                                      (lambda ()
                                                        (letrec ((g8356
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g8356)))
                                                     (image?
                                                      (lambda (image7452)
                                                        (letrec ((g8357
                                                                  (letrec ((x8358
                                                                            (car
                                                                             image7452)))
                                                                    (eq?
                                                                     x8358
                                                                     'image))))
                                                          g8357)))
                                                     (empty-scene
                                                      (lambda (w h)
                                                        (letrec ((g8359
                                                                  (image)))
                                                          g8359)))
                                                     (place-image
                                                      (lambda (i₁ r c i₂)
                                                        (letrec ((g8360
                                                                  (image)))
                                                          g8360)))
                                                     (circle
                                                      (lambda (r m c)
                                                        (letrec ((g8361
                                                                  (image)))
                                                          g8361)))
                                                     (min
                                                      (lambda (x y)
                                                        (letrec ((g8362
                                                                  (letrec ((x-cnd8363
                                                                            (<=
                                                                             x
                                                                             y)))
                                                                    (if x-cnd8363
                                                                      x
                                                                      y))))
                                                          g8362)))
                                                     (max
                                                      (lambda (x y)
                                                        (letrec ((g8364
                                                                  (letrec ((x-cnd8365
                                                                            (>=
                                                                             x
                                                                             y)))
                                                                    (if x-cnd8365
                                                                      x
                                                                      y))))
                                                          g8364)))
                                                     (abs
                                                      (lambda (x)
                                                        (letrec ((g8366
                                                                  (letrec ((x-cnd8367
                                                                            (>=
                                                                             x
                                                                             0)))
                                                                    (if x-cnd8367
                                                                      x
                                                                      (-
                                                                       0
                                                                       x)))))
                                                          g8366)))
                                                     (sqr
                                                      (lambda (x)
                                                        (letrec ((g8368
                                                                  (* x x)))
                                                          g8368)))
                                                     (WIDTH 400)
                                                     (HEIGHT 400)
                                                     (MT-SCENE
                                                      (empty-scene
                                                       WIDTH
                                                       HEIGHT))
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
                                                      (lambda (j7230
                                                               k7231
                                                               f7232)
                                                        (letrec ((g8369
                                                                  (lambda (g7229)
                                                                    (letrec ((g8370
                                                                              (letrec ((x7233
                                                                                        ((lambda (g7237
                                                                                                  g7238
                                                                                                  g7239)
                                                                                           (if ((lambda (v7236)
                                                                                                  (if (eq?
                                                                                                       'x
                                                                                                       v7236)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'y
                                                                                                         v7236)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'posn
                                                                                                           v7236)
                                                                                                        #t
                                                                                                        (if (eq?
                                                                                                             'move-toward/speed
                                                                                                             v7236)
                                                                                                          #t
                                                                                                          (if (eq?
                                                                                                               'draw-on/image
                                                                                                               v7236)
                                                                                                            #t
                                                                                                            (eq?
                                                                                                             'dist
                                                                                                             v7236)))))))
                                                                                                g7239)
                                                                                             g7239
                                                                                             (blame
                                                                                              g7237
                                                                                              '(lambda (v7236)
                                                                                                 (if (eq?
                                                                                                      'x
                                                                                                      v7236)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'y
                                                                                                        v7236)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'posn
                                                                                                          v7236)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'move-toward/speed
                                                                                                            v7236)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'draw-on/image
                                                                                                              v7236)
                                                                                                           #t
                                                                                                           (eq?
                                                                                                            'dist
                                                                                                            v7236))))))))))
                                                                                         j7230
                                                                                         k7231
                                                                                         g7229)))
                                                                                (letrec ((g8371
                                                                                          (letrec ((x8373
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7240
                                                                                                                    k7241
                                                                                                                    f7242)
                                                                                                             (lambda ()
                                                                                                               (real?
                                                                                                                j7240
                                                                                                                k7241
                                                                                                                (f7242)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7243
                                                                                                                      k7244
                                                                                                                      f7245)
                                                                                                               (lambda ()
                                                                                                                 (real?
                                                                                                                  j7243
                                                                                                                  k7244
                                                                                                                  (f7245)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7246
                                                                                                                        k7247
                                                                                                                        f7248)
                                                                                                                 (lambda ()
                                                                                                                   (posn/c
                                                                                                                    j7246
                                                                                                                    k7247
                                                                                                                    (f7248)))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7251
                                                                                                                          k7252
                                                                                                                          f7253)
                                                                                                                   (lambda (g7249
                                                                                                                            g7250)
                                                                                                                     (posn/c
                                                                                                                      j7251
                                                                                                                      k7252
                                                                                                                      (f7253
                                                                                                                       (posn/c
                                                                                                                        j7251
                                                                                                                        k7252
                                                                                                                        g7249)
                                                                                                                       (real?
                                                                                                                        j7251
                                                                                                                        k7252
                                                                                                                        g7250))))))
                                                                                                               (if cnd
                                                                                                                 (begin
                                                                                                                   (lambda (j7256
                                                                                                                            k7257
                                                                                                                            f7258)
                                                                                                                     (lambda (g7254
                                                                                                                              g7255)
                                                                                                                       (image?
                                                                                                                        j7256
                                                                                                                        k7257
                                                                                                                        (f7258
                                                                                                                         (image?
                                                                                                                          j7256
                                                                                                                          k7257
                                                                                                                          g7254)
                                                                                                                         (image?
                                                                                                                          j7256
                                                                                                                          k7257
                                                                                                                          g7255))))))
                                                                                                                 (if cnd
                                                                                                                   (begin
                                                                                                                     (lambda (j7260
                                                                                                                              k7261
                                                                                                                              f7262)
                                                                                                                       (lambda (g7259)
                                                                                                                         (real?
                                                                                                                          j7260
                                                                                                                          k7261
                                                                                                                          (f7262
                                                                                                                           (posn/c
                                                                                                                            j7260
                                                                                                                            k7261
                                                                                                                            g7259))))))
                                                                                                                   (begin
                                                                                                                     "error"))))))))
                                                                                                     x7233))
                                                                                                   (x8372
                                                                                                    (f7232
                                                                                                     x7233)))
                                                                                            (x8373
                                                                                             j7230
                                                                                             k7231
                                                                                             x8372))))
                                                                                  g8371))))
                                                                      g8370))))
                                                          g8369)))
                                                     (player/c
                                                      (lambda (j7264
                                                               k7265
                                                               f7266)
                                                        (letrec ((g8374
                                                                  (lambda (g7263)
                                                                    (letrec ((g8375
                                                                              (letrec ((x7267
                                                                                        ((lambda (g7271
                                                                                                  g7272
                                                                                                  g7273)
                                                                                           (if ((lambda (v7270)
                                                                                                  (if (eq?
                                                                                                       'posn
                                                                                                       v7270)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'move-toward
                                                                                                         v7270)
                                                                                                      #t
                                                                                                      (eq?
                                                                                                       'draw-on
                                                                                                       v7270))))
                                                                                                g7273)
                                                                                             g7273
                                                                                             (blame
                                                                                              g7271
                                                                                              '(lambda (v7270)
                                                                                                 (if (eq?
                                                                                                      'posn
                                                                                                      v7270)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7270)
                                                                                                     #t
                                                                                                     (eq?
                                                                                                      'draw-on
                                                                                                      v7270)))))))
                                                                                         j7264
                                                                                         k7265
                                                                                         g7263)))
                                                                                (letrec ((g8376
                                                                                          (letrec ((x8378
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7274
                                                                                                                    k7275
                                                                                                                    f7276)
                                                                                                             (lambda ()
                                                                                                               (posn/c
                                                                                                                j7274
                                                                                                                k7275
                                                                                                                (f7276)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7278
                                                                                                                      k7279
                                                                                                                      f7280)
                                                                                                               (lambda (g7277)
                                                                                                                 (player/c
                                                                                                                  j7278
                                                                                                                  k7279
                                                                                                                  (f7280
                                                                                                                   (posn/c
                                                                                                                    j7278
                                                                                                                    k7279
                                                                                                                    g7277))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7282
                                                                                                                        k7283
                                                                                                                        f7284)
                                                                                                                 (lambda (g7281)
                                                                                                                   (image?
                                                                                                                    j7282
                                                                                                                    k7283
                                                                                                                    (f7284
                                                                                                                     (image?
                                                                                                                      j7282
                                                                                                                      k7283
                                                                                                                      g7281))))))
                                                                                                             (begin
                                                                                                               "error")))))
                                                                                                     x7267))
                                                                                                   (x8377
                                                                                                    (f7266
                                                                                                     x7267)))
                                                                                            (x8378
                                                                                             j7264
                                                                                             k7265
                                                                                             x8377))))
                                                                                  g8376))))
                                                                      g8375))))
                                                          g8374)))
                                                     (zombie/c
                                                      (lambda (j7286
                                                               k7287
                                                               f7288)
                                                        (letrec ((g8379
                                                                  (lambda (g7285)
                                                                    (letrec ((g8380
                                                                              (letrec ((x7289
                                                                                        ((lambda (g7293
                                                                                                  g7294
                                                                                                  g7295)
                                                                                           (if ((lambda (v7292)
                                                                                                  (if (eq?
                                                                                                       'posn
                                                                                                       v7292)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'draw-on/color
                                                                                                         v7292)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'touching?
                                                                                                           v7292)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'move-toward
                                                                                                         v7292)))))
                                                                                                g7295)
                                                                                             g7295
                                                                                             (blame
                                                                                              g7293
                                                                                              '(lambda (v7292)
                                                                                                 (if (eq?
                                                                                                      'posn
                                                                                                      v7292)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'draw-on/color
                                                                                                        v7292)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'touching?
                                                                                                          v7292)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'move-toward
                                                                                                        v7292))))))))
                                                                                         j7286
                                                                                         k7287
                                                                                         g7285)))
                                                                                (letrec ((g8381
                                                                                          (letrec ((x8383
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7296
                                                                                                                    k7297
                                                                                                                    f7298)
                                                                                                             (lambda ()
                                                                                                               (posn/c
                                                                                                                j7296
                                                                                                                k7297
                                                                                                                (f7298)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7301
                                                                                                                      k7302
                                                                                                                      f7303)
                                                                                                               (lambda (g7299
                                                                                                                        g7300)
                                                                                                                 (image?
                                                                                                                  j7301
                                                                                                                  k7302
                                                                                                                  (f7303
                                                                                                                   (string?
                                                                                                                    j7301
                                                                                                                    k7302
                                                                                                                    g7299)
                                                                                                                   (image?
                                                                                                                    j7301
                                                                                                                    k7302
                                                                                                                    g7300))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7305
                                                                                                                        k7306
                                                                                                                        f7307)
                                                                                                                 (lambda (g7304)
                                                                                                                   (boolean?
                                                                                                                    j7305
                                                                                                                    k7306
                                                                                                                    (f7307
                                                                                                                     (posn/c
                                                                                                                      j7305
                                                                                                                      k7306
                                                                                                                      g7304))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7309
                                                                                                                          k7310
                                                                                                                          f7311)
                                                                                                                   (lambda (g7308)
                                                                                                                     (zombie/c
                                                                                                                      j7309
                                                                                                                      k7310
                                                                                                                      (f7311
                                                                                                                       (posn/c
                                                                                                                        j7309
                                                                                                                        k7310
                                                                                                                        g7308))))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7289))
                                                                                                   (x8382
                                                                                                    (f7288
                                                                                                     x7289)))
                                                                                            (x8383
                                                                                             j7286
                                                                                             k7287
                                                                                             x8382))))
                                                                                  g8381))))
                                                                      g8380))))
                                                          g8379)))
                                                     (horde/c
                                                      (lambda (j7313
                                                               k7314
                                                               f7315)
                                                        (letrec ((g8384
                                                                  (lambda (g7312)
                                                                    (letrec ((g8385
                                                                              (letrec ((x7316
                                                                                        ((lambda (g7320
                                                                                                  g7321
                                                                                                  g7322)
                                                                                           (if ((lambda (v7319)
                                                                                                  (if (eq?
                                                                                                       'dead
                                                                                                       v7319)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'undead
                                                                                                         v7319)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'draw-on
                                                                                                           v7319)
                                                                                                        #t
                                                                                                        (if (eq?
                                                                                                             'touching?
                                                                                                             v7319)
                                                                                                          #t
                                                                                                          (if (eq?
                                                                                                               'move-toward
                                                                                                               v7319)
                                                                                                            #t
                                                                                                            (eq?
                                                                                                             'eat-brains
                                                                                                             v7319)))))))
                                                                                                g7322)
                                                                                             g7322
                                                                                             (blame
                                                                                              g7320
                                                                                              '(lambda (v7319)
                                                                                                 (if (eq?
                                                                                                      'dead
                                                                                                      v7319)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'undead
                                                                                                        v7319)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on
                                                                                                          v7319)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7319)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward
                                                                                                              v7319)
                                                                                                           #t
                                                                                                           (eq?
                                                                                                            'eat-brains
                                                                                                            v7319))))))))))
                                                                                         j7313
                                                                                         k7314
                                                                                         g7312)))
                                                                                (letrec ((g8386
                                                                                          (letrec ((x8388
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7323
                                                                                                                    k7324
                                                                                                                    f7325)
                                                                                                             (lambda ()
                                                                                                               (zombies/c
                                                                                                                j7323
                                                                                                                k7324
                                                                                                                (f7325)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7326
                                                                                                                      k7327
                                                                                                                      f7328)
                                                                                                               (lambda ()
                                                                                                                 (zombies/c
                                                                                                                  j7326
                                                                                                                  k7327
                                                                                                                  (f7328)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7330
                                                                                                                        k7331
                                                                                                                        f7332)
                                                                                                                 (lambda (g7329)
                                                                                                                   (image?
                                                                                                                    j7330
                                                                                                                    k7331
                                                                                                                    (f7332
                                                                                                                     (image?
                                                                                                                      j7330
                                                                                                                      k7331
                                                                                                                      g7329))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7334
                                                                                                                          k7335
                                                                                                                          f7336)
                                                                                                                   (lambda (g7333)
                                                                                                                     (boolean?
                                                                                                                      j7334
                                                                                                                      k7335
                                                                                                                      (f7336
                                                                                                                       (posn/c
                                                                                                                        j7334
                                                                                                                        k7335
                                                                                                                        g7333))))))
                                                                                                               (if cnd
                                                                                                                 (begin
                                                                                                                   (lambda (j7338
                                                                                                                            k7339
                                                                                                                            f7340)
                                                                                                                     (lambda (g7337)
                                                                                                                       (horde/c
                                                                                                                        j7338
                                                                                                                        k7339
                                                                                                                        (f7340
                                                                                                                         (posn/c
                                                                                                                          j7338
                                                                                                                          k7339
                                                                                                                          g7337))))))
                                                                                                                 (if cnd
                                                                                                                   (begin
                                                                                                                     (lambda (j7341
                                                                                                                              k7342
                                                                                                                              f7343)
                                                                                                                       (lambda ()
                                                                                                                         (horde/c
                                                                                                                          j7341
                                                                                                                          k7342
                                                                                                                          (f7343)))))
                                                                                                                   (begin
                                                                                                                     "error"))))))))
                                                                                                     x7316))
                                                                                                   (x8387
                                                                                                    (f7315
                                                                                                     x7316)))
                                                                                            (x8388
                                                                                             j7313
                                                                                             k7314
                                                                                             x8387))))
                                                                                  g8386))))
                                                                      g8385))))
                                                          g8384)))
                                                     (zombies/c
                                                      (lambda (j7345
                                                               k7346
                                                               f7347)
                                                        (letrec ((g8389
                                                                  (lambda (g7344)
                                                                    (letrec ((g8390
                                                                              (letrec ((x7348
                                                                                        ((lambda (g7352
                                                                                                  g7353
                                                                                                  g7354)
                                                                                           (if ((lambda (v7351)
                                                                                                  (if (eq?
                                                                                                       'move-toward
                                                                                                       v7351)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'draw-on/color
                                                                                                         v7351)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'touching?
                                                                                                           v7351)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'kill-all
                                                                                                         v7351)))))
                                                                                                g7354)
                                                                                             g7354
                                                                                             (blame
                                                                                              g7352
                                                                                              '(lambda (v7351)
                                                                                                 (if (eq?
                                                                                                      'move-toward
                                                                                                      v7351)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'draw-on/color
                                                                                                        v7351)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'touching?
                                                                                                          v7351)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'kill-all
                                                                                                        v7351))))))))
                                                                                         j7345
                                                                                         k7346
                                                                                         g7344)))
                                                                                (letrec ((g8391
                                                                                          (letrec ((x8393
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7356
                                                                                                                    k7357
                                                                                                                    f7358)
                                                                                                             (lambda (g7355)
                                                                                                               (zombies/c
                                                                                                                j7356
                                                                                                                k7357
                                                                                                                (f7358
                                                                                                                 (posn/c
                                                                                                                  j7356
                                                                                                                  k7357
                                                                                                                  g7355))))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7361
                                                                                                                      k7362
                                                                                                                      f7363)
                                                                                                               (lambda (g7359
                                                                                                                        g7360)
                                                                                                                 (image?
                                                                                                                  j7361
                                                                                                                  k7362
                                                                                                                  (f7363
                                                                                                                   (string?
                                                                                                                    j7361
                                                                                                                    k7362
                                                                                                                    g7359)
                                                                                                                   (image?
                                                                                                                    j7361
                                                                                                                    k7362
                                                                                                                    g7360))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7365
                                                                                                                        k7366
                                                                                                                        f7367)
                                                                                                                 (lambda (g7364)
                                                                                                                   (boolean?
                                                                                                                    j7365
                                                                                                                    k7366
                                                                                                                    (f7367
                                                                                                                     (posn/c
                                                                                                                      j7365
                                                                                                                      k7366
                                                                                                                      g7364))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7369
                                                                                                                          k7370
                                                                                                                          f7371)
                                                                                                                   (lambda (g7368)
                                                                                                                     (horde/c
                                                                                                                      j7369
                                                                                                                      k7370
                                                                                                                      (f7371
                                                                                                                       (zombies/c
                                                                                                                        j7369
                                                                                                                        k7370
                                                                                                                        g7368))))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7348))
                                                                                                   (x8392
                                                                                                    (f7347
                                                                                                     x7348)))
                                                                                            (x8393
                                                                                             j7345
                                                                                             k7346
                                                                                             x8392))))
                                                                                  g8391))))
                                                                      g8390))))
                                                          g8389)))
                                                     (world/c
                                                      (lambda (j7373
                                                               k7374
                                                               f7375)
                                                        (letrec ((g8394
                                                                  (lambda (g7372)
                                                                    (letrec ((g8395
                                                                              (letrec ((x7376
                                                                                        ((lambda (g7380
                                                                                                  g7381
                                                                                                  g7382)
                                                                                           (if ((lambda (v7379)
                                                                                                  (if (eq?
                                                                                                       'on-mouse
                                                                                                       v7379)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'on-tick
                                                                                                         v7379)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'to-draw
                                                                                                           v7379)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'stop-when
                                                                                                         v7379)))))
                                                                                                g7382)
                                                                                             g7382
                                                                                             (blame
                                                                                              g7380
                                                                                              '(lambda (v7379)
                                                                                                 (if (eq?
                                                                                                      'on-mouse
                                                                                                      v7379)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'on-tick
                                                                                                        v7379)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'to-draw
                                                                                                          v7379)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'stop-when
                                                                                                        v7379))))))))
                                                                                         j7373
                                                                                         k7374
                                                                                         g7372)))
                                                                                (letrec ((g8396
                                                                                          (letrec ((x8398
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7386
                                                                                                                    k7387
                                                                                                                    f7388)
                                                                                                             (lambda (g7383
                                                                                                                      g7384
                                                                                                                      g7385)
                                                                                                               (world/c
                                                                                                                j7386
                                                                                                                k7387
                                                                                                                (f7388
                                                                                                                 (real?
                                                                                                                  j7386
                                                                                                                  k7387
                                                                                                                  g7383)
                                                                                                                 (real?
                                                                                                                  j7386
                                                                                                                  k7387
                                                                                                                  g7384)
                                                                                                                 (string?
                                                                                                                  j7386
                                                                                                                  k7387
                                                                                                                  g7385))))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7389
                                                                                                                      k7390
                                                                                                                      f7391)
                                                                                                               (lambda ()
                                                                                                                 (world/c
                                                                                                                  j7389
                                                                                                                  k7390
                                                                                                                  (f7391)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7392
                                                                                                                        k7393
                                                                                                                        f7394)
                                                                                                                 (lambda ()
                                                                                                                   (image?
                                                                                                                    j7392
                                                                                                                    k7393
                                                                                                                    (f7394)))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7395
                                                                                                                          k7396
                                                                                                                          f7397)
                                                                                                                   (lambda ()
                                                                                                                     (boolean?
                                                                                                                      j7395
                                                                                                                      k7396
                                                                                                                      (f7397)))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7376))
                                                                                                   (x8397
                                                                                                    (f7375
                                                                                                     x7376)))
                                                                                            (x8398
                                                                                             j7373
                                                                                             k7374
                                                                                             x8397))))
                                                                                  g8396))))
                                                                      g8395))))
                                                          g8394)))
                                                     (new-world
                                                      (lambda (player
                                                               mouse
                                                               zombies)
                                                        (letrec ((g8399
                                                                  (letrec ((x8428
                                                                            (msg))
                                                                           (x8400
                                                                            (if cnd
                                                                              (letrec ((g8401
                                                                                        (letrec ((x8406
                                                                                                  (x
                                                                                                   y
                                                                                                   me))
                                                                                                 (x8402
                                                                                                  (letrec ((x8403
                                                                                                            (letrec ((x-cnd8404
                                                                                                                      (equal?
                                                                                                                       me
                                                                                                                       "leave")))
                                                                                                              (if x-cnd8404
                                                                                                                (letrec ((x8405
                                                                                                                          (player
                                                                                                                           'posn)))
                                                                                                                  (x8405))
                                                                                                                (new-posn
                                                                                                                 x
                                                                                                                 y)))))
                                                                                                    (new-world
                                                                                                     player
                                                                                                     x8403
                                                                                                     zombies))))
                                                                                          (λ x8406
                                                                                            x8402))))
                                                                                g8401)
                                                                              (if cnd
                                                                                (letrec ((g8407
                                                                                          (letrec ((x8408
                                                                                                    (letrec ((x8415
                                                                                                              (letrec ((x8416
                                                                                                                        (player
                                                                                                                         'move-toward)))
                                                                                                                (x8416
                                                                                                                 mouse)))
                                                                                                             (x8409
                                                                                                              (letrec ((x8412
                                                                                                                        (letrec ((x8413
                                                                                                                                  (letrec ((x8414
                                                                                                                                            (zombies
                                                                                                                                             'eat-brains)))
                                                                                                                                    (x8414))))
                                                                                                                          (x8413
                                                                                                                           'move-toward)))
                                                                                                                       (x8410
                                                                                                                        (letrec ((x8411
                                                                                                                                  (player
                                                                                                                                   'posn)))
                                                                                                                          (x8411))))
                                                                                                                (x8412
                                                                                                                 x8410))))
                                                                                                      (new-world
                                                                                                       x8415
                                                                                                       mouse
                                                                                                       x8409))))
                                                                                            (λ ()
                                                                                              x8408))))
                                                                                  g8407)
                                                                                (if cnd
                                                                                  (letrec ((g8417
                                                                                            (letrec ((x8418
                                                                                                      (letrec ((x8421
                                                                                                                (player
                                                                                                                 'draw-on))
                                                                                                               (x8419
                                                                                                                (letrec ((x8420
                                                                                                                          (zombies
                                                                                                                           'draw-on)))
                                                                                                                  (x8420
                                                                                                                   MT-SCENE))))
                                                                                                        (x8421
                                                                                                         x8419))))
                                                                                              (λ ()
                                                                                                x8418))))
                                                                                    g8417)
                                                                                  (if cnd
                                                                                    (letrec ((g8422
                                                                                              (letrec ((x8423
                                                                                                        (letrec ((x8426
                                                                                                                  (zombies
                                                                                                                   'touching?))
                                                                                                                 (x8424
                                                                                                                  (letrec ((x8425
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8425))))
                                                                                                          (x8426
                                                                                                           x8424))))
                                                                                                (λ ()
                                                                                                  x8423))))
                                                                                      g8422)
                                                                                    (letrec ((g8427
                                                                                              "unknown message"))
                                                                                      g8427)))))))
                                                                    (λ x8428
                                                                      x8400))))
                                                          g8399)))
                                                     (new-player
                                                      (lambda (p)
                                                        (letrec ((g8429
                                                                  (letrec ((x8442
                                                                            (msg))
                                                                           (x8430
                                                                            (if cnd
                                                                              (letrec ((g8431
                                                                                        (λ ()
                                                                                          p)))
                                                                                g8431)
                                                                              (if cnd
                                                                                (letrec ((g8432
                                                                                          (letrec ((x8436
                                                                                                    (q))
                                                                                                   (x8433
                                                                                                    (letrec ((x8434
                                                                                                              (letrec ((x8435
                                                                                                                        (p
                                                                                                                         'move-toward/speed)))
                                                                                                                (x8435
                                                                                                                 q
                                                                                                                 PLAYER-SPEED))))
                                                                                                      (new-player
                                                                                                       x8434))))
                                                                                            (λ x8436
                                                                                              x8433))))
                                                                                  g8432)
                                                                                (if cnd
                                                                                  (letrec ((g8437
                                                                                            (letrec ((x8440
                                                                                                      (scn))
                                                                                                     (x8438
                                                                                                      (letrec ((x8439
                                                                                                                (p
                                                                                                                 'draw-on/image)))
                                                                                                        (x8439
                                                                                                         PLAYER-IMG
                                                                                                         scn))))
                                                                                              (λ x8440
                                                                                                x8438))))
                                                                                    g8437)
                                                                                  (letrec ((g8441
                                                                                            "unknown message"))
                                                                                    g8441))))))
                                                                    (λ x8442
                                                                      x8430))))
                                                          g8429)))
                                                     (new-horde
                                                      (lambda (undead dead)
                                                        (letrec ((g8443
                                                                  (letrec ((x8469
                                                                            (msg))
                                                                           (x8444
                                                                            (if cnd
                                                                              (letrec ((g8445
                                                                                        (λ ()
                                                                                          dead)))
                                                                                g8445)
                                                                              (if cnd
                                                                                (letrec ((g8446
                                                                                          (λ ()
                                                                                            undead)))
                                                                                  g8446)
                                                                                (if cnd
                                                                                  (letrec ((g8447
                                                                                            (letrec ((x8452
                                                                                                      (scn))
                                                                                                     (x8448
                                                                                                      (letrec ((x8451
                                                                                                                (undead
                                                                                                                 'draw-on/color))
                                                                                                               (x8449
                                                                                                                (letrec ((x8450
                                                                                                                          (dead
                                                                                                                           'draw-on/color)))
                                                                                                                  (x8450
                                                                                                                   "black"
                                                                                                                   scn))))
                                                                                                        (x8451
                                                                                                         "yellow"
                                                                                                         x8449))))
                                                                                              (λ x8452
                                                                                                x8448))))
                                                                                    g8447)
                                                                                  (if cnd
                                                                                    (letrec ((g8453
                                                                                              (letrec ((x8459
                                                                                                        (p))
                                                                                                       (x8454
                                                                                                        (letrec ((x8457
                                                                                                                  (letrec ((x8458
                                                                                                                            (undead
                                                                                                                             'touching?)))
                                                                                                                    (x8458
                                                                                                                     p)))
                                                                                                                 (x8455
                                                                                                                  (letrec ((x8456
                                                                                                                            (dead
                                                                                                                             'touching?)))
                                                                                                                    (x8456
                                                                                                                     p))))
                                                                                                          (or x8457
                                                                                                              x8455))))
                                                                                                (λ x8459
                                                                                                  x8454))))
                                                                                      g8453)
                                                                                    (if cnd
                                                                                      (letrec ((g8460
                                                                                                (letrec ((x8464
                                                                                                          (p))
                                                                                                         (x8461
                                                                                                          (letrec ((x8462
                                                                                                                    (letrec ((x8463
                                                                                                                              (undead
                                                                                                                               'move-toward)))
                                                                                                                      (x8463
                                                                                                                       p))))
                                                                                                            (new-horde
                                                                                                             x8462
                                                                                                             dead))))
                                                                                                  (λ x8464
                                                                                                    x8461))))
                                                                                        g8460)
                                                                                      (if cnd
                                                                                        (letrec ((g8465
                                                                                                  (letrec ((x8466
                                                                                                            (letrec ((x8467
                                                                                                                      (undead
                                                                                                                       'kill-all)))
                                                                                                              (x8467
                                                                                                               dead))))
                                                                                                    (λ ()
                                                                                                      x8466))))
                                                                                          g8465)
                                                                                        (letrec ((g8468
                                                                                                  "unknown message"))
                                                                                          g8468)))))))))
                                                                    (λ x8469
                                                                      x8444))))
                                                          g8443)))
                                                     (new-cons-zombies
                                                      (lambda (z r)
                                                        (letrec ((g8470
                                                                  (letrec ((x8521
                                                                            (msg))
                                                                           (x8471
                                                                            (if cnd
                                                                              (letrec ((g8472
                                                                                        (letrec ((x8478
                                                                                                  (p))
                                                                                                 (x8473
                                                                                                  (letrec ((x8476
                                                                                                            (letrec ((x8477
                                                                                                                      (z
                                                                                                                       'move-toward)))
                                                                                                              (x8477
                                                                                                               p)))
                                                                                                           (x8474
                                                                                                            (letrec ((x8475
                                                                                                                      (r
                                                                                                                       'move-toward)))
                                                                                                              (x8475
                                                                                                               p))))
                                                                                                    (new-cons-zombies
                                                                                                     x8476
                                                                                                     x8474))))
                                                                                          (λ x8478
                                                                                            x8473))))
                                                                                g8472)
                                                                              (if cnd
                                                                                (letrec ((g8479
                                                                                          (letrec ((x8484
                                                                                                    (c
                                                                                                     s))
                                                                                                   (x8480
                                                                                                    (letrec ((x8483
                                                                                                              (z
                                                                                                               'draw-on/color))
                                                                                                             (x8481
                                                                                                              (letrec ((x8482
                                                                                                                        (r
                                                                                                                         'draw-on/color)))
                                                                                                                (x8482
                                                                                                                 c
                                                                                                                 s))))
                                                                                                      (x8483
                                                                                                       c
                                                                                                       x8481))))
                                                                                            (λ x8484
                                                                                              x8480))))
                                                                                  g8479)
                                                                                (if cnd
                                                                                  (letrec ((g8485
                                                                                            (letrec ((x8491
                                                                                                      (p))
                                                                                                     (x8486
                                                                                                      (letrec ((x8489
                                                                                                                (letrec ((x8490
                                                                                                                          (z
                                                                                                                           'touching?)))
                                                                                                                  (x8490
                                                                                                                   p)))
                                                                                                               (x8487
                                                                                                                (letrec ((x8488
                                                                                                                          (r
                                                                                                                           'touching?)))
                                                                                                                  (x8488
                                                                                                                   p))))
                                                                                                        (or x8489
                                                                                                            x8487))))
                                                                                              (λ x8491
                                                                                                x8486))))
                                                                                    g8485)
                                                                                  (if cnd
                                                                                    (letrec ((g8492
                                                                                              (letrec ((x8519
                                                                                                        (dead))
                                                                                                       (x8493
                                                                                                        (letrec ((x8506
                                                                                                                  (letrec ((x8510
                                                                                                                            (letrec ((x8515
                                                                                                                                      (letrec ((x8518
                                                                                                                                                (r
                                                                                                                                                 'touching?))
                                                                                                                                               (x8516
                                                                                                                                                (letrec ((x8517
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8517))))
                                                                                                                                        (x8518
                                                                                                                                         x8516)))
                                                                                                                                     (x8511
                                                                                                                                      (letrec ((x8514
                                                                                                                                                (dead
                                                                                                                                                 'touching?))
                                                                                                                                               (x8512
                                                                                                                                                (letrec ((x8513
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8513))))
                                                                                                                                        (x8514
                                                                                                                                         x8512))))
                                                                                                                              (or x8515
                                                                                                                                  x8511)))
                                                                                                                           (x8507
                                                                                                                            (letrec ((x8509
                                                                                                                                      (r
                                                                                                                                       'kill-all))
                                                                                                                                     (x8508
                                                                                                                                      (new-cons-zombies
                                                                                                                                       z
                                                                                                                                       dead)))
                                                                                                                              (x8509
                                                                                                                               x8508))))
                                                                                                                    (x8510
                                                                                                                     x8507)))
                                                                                                                 (x8494
                                                                                                                  (letrec ((x8495
                                                                                                                            (letrec ((x8502
                                                                                                                                      (letrec ((x8503
                                                                                                                                                (letrec ((x8504
                                                                                                                                                          (letrec ((x8505
                                                                                                                                                                    (r
                                                                                                                                                                     'kill-all)))
                                                                                                                                                            (x8505
                                                                                                                                                             dead))))
                                                                                                                                                  (res
                                                                                                                                                   x8504))))
                                                                                                                                        (x8503)))
                                                                                                                                     (x8496
                                                                                                                                      (letrec ((x8499
                                                                                                                                                (letrec ((x8500
                                                                                                                                                          (letrec ((x8501
                                                                                                                                                                    (res
                                                                                                                                                                     'undead)))
                                                                                                                                                            (x8501))))
                                                                                                                                                  (new-cons-zombies
                                                                                                                                                   z
                                                                                                                                                   x8500)))
                                                                                                                                               (x8497
                                                                                                                                                (letrec ((x8498
                                                                                                                                                          (res
                                                                                                                                                           'dead)))
                                                                                                                                                  (x8498))))
                                                                                                                                        (new-horde
                                                                                                                                         x8499
                                                                                                                                         x8497))))
                                                                                                                              (let x8502 x8496))))
                                                                                                                    (else
                                                                                                                     x8495))))
                                                                                                          (cond
                                                                                                           x8506
                                                                                                           x8494))))
                                                                                                (λ x8519
                                                                                                  x8493))))
                                                                                      g8492)
                                                                                    (letrec ((g8520
                                                                                              "unknown message"))
                                                                                      g8520)))))))
                                                                    (λ x8521
                                                                      x8471))))
                                                          g8470)))
                                                     (new-mt-zombies
                                                      (lambda ()
                                                        (letrec ((g8522
                                                                  (letrec ((x8536
                                                                            (msg))
                                                                           (x8523
                                                                            (if cnd
                                                                              (letrec ((g8524
                                                                                        (letrec ((x8526
                                                                                                  (p))
                                                                                                 (x8525
                                                                                                  (new-mt-zombies)))
                                                                                          (λ x8526
                                                                                            x8525))))
                                                                                g8524)
                                                                              (if cnd
                                                                                (letrec ((g8527
                                                                                          (letrec ((x8528
                                                                                                    (c
                                                                                                     s)))
                                                                                            (λ x8528
                                                                                              s))))
                                                                                  g8527)
                                                                                (if cnd
                                                                                  (letrec ((g8529
                                                                                            (letrec ((x8530
                                                                                                      (p)))
                                                                                              (λ x8530
                                                                                                #f))))
                                                                                    g8529)
                                                                                  (if cnd
                                                                                    (letrec ((g8531
                                                                                              (letrec ((x8534
                                                                                                        (dead))
                                                                                                       (x8532
                                                                                                        (letrec ((x8533
                                                                                                                  (new-mt-zombies)))
                                                                                                          (new-horde
                                                                                                           x8533
                                                                                                           dead))))
                                                                                                (λ x8534
                                                                                                  x8532))))
                                                                                      g8531)
                                                                                    (letrec ((g8535
                                                                                              "unknown message"))
                                                                                      g8535)))))))
                                                                    (λ x8536
                                                                      x8523))))
                                                          g8522)))
                                                     (new-zombie
                                                      (lambda (p)
                                                        (letrec ((g8537
                                                                  (letrec ((x8556
                                                                            (msg))
                                                                           (x8538
                                                                            (if cnd
                                                                              (letrec ((g8539
                                                                                        (λ ()
                                                                                          p)))
                                                                                g8539)
                                                                              (if cnd
                                                                                (letrec ((g8540
                                                                                          (letrec ((x8544
                                                                                                    (c
                                                                                                     s))
                                                                                                   (x8541
                                                                                                    (letrec ((x8543
                                                                                                              (p
                                                                                                               'draw-on/image))
                                                                                                             (x8542
                                                                                                              (circle
                                                                                                               ZOMBIE-RADIUS
                                                                                                               "solid"
                                                                                                               c)))
                                                                                                      (x8543
                                                                                                       x8542
                                                                                                       s))))
                                                                                            (λ x8544
                                                                                              x8541))))
                                                                                  g8540)
                                                                                (if cnd
                                                                                  (letrec ((g8545
                                                                                            (letrec ((x8549
                                                                                                      (q))
                                                                                                     (x8546
                                                                                                      (letrec ((x8547
                                                                                                                (letrec ((x8548
                                                                                                                          (p
                                                                                                                           'dist)))
                                                                                                                  (x8548
                                                                                                                   q))))
                                                                                                        (<=
                                                                                                         x8547
                                                                                                         ZOMBIE-RADIUS))))
                                                                                              (λ x8549
                                                                                                x8546))))
                                                                                    g8545)
                                                                                  (if cnd
                                                                                    (letrec ((g8550
                                                                                              (letrec ((x8554
                                                                                                        (q))
                                                                                                       (x8551
                                                                                                        (letrec ((x8552
                                                                                                                  (letrec ((x8553
                                                                                                                            (p
                                                                                                                             'move-toward/speed)))
                                                                                                                    (x8553
                                                                                                                     q
                                                                                                                     ZOMBIE-SPEED))))
                                                                                                          (new-zombie
                                                                                                           x8552))))
                                                                                                (λ x8554
                                                                                                  x8551))))
                                                                                      g8550)
                                                                                    (letrec ((g8555
                                                                                              "unknown message"))
                                                                                      g8555)))))))
                                                                    (λ x8556
                                                                      x8538))))
                                                          g8537)))
                                                     (new-posn
                                                      (lambda (x y)
                                                        (letrec ((g8557
                                                                  (letrec ((this
                                                                            (letrec ((x8614
                                                                                      (msg))
                                                                                     (x8558
                                                                                      (if cnd
                                                                                        (letrec ((g8559
                                                                                                  (λ ()
                                                                                                    x)))
                                                                                          g8559)
                                                                                        (if cnd
                                                                                          (letrec ((g8560
                                                                                                    (λ ()
                                                                                                      y)))
                                                                                            g8560)
                                                                                          (if cnd
                                                                                            (letrec ((g8561
                                                                                                      (λ ()
                                                                                                        this)))
                                                                                              g8561)
                                                                                            (if cnd
                                                                                              (letrec ((g8562
                                                                                                        (letrec ((x8592
                                                                                                                  (p
                                                                                                                   speed))
                                                                                                                 (x8563
                                                                                                                  (letrec ((x8578
                                                                                                                            (letrec ((x8588
                                                                                                                                      (letrec ((x8589
                                                                                                                                                (letrec ((x8590
                                                                                                                                                          (letrec ((x8591
                                                                                                                                                                    (p
                                                                                                                                                                     'x)))
                                                                                                                                                            (x8591))))
                                                                                                                                                  (-
                                                                                                                                                   x8590
                                                                                                                                                   x))))
                                                                                                                                        (δx
                                                                                                                                         x8589)))
                                                                                                                                     (x8584
                                                                                                                                      (letrec ((x8585
                                                                                                                                                (letrec ((x8586
                                                                                                                                                          (letrec ((x8587
                                                                                                                                                                    (p
                                                                                                                                                                     'y)))
                                                                                                                                                            (x8587))))
                                                                                                                                                  (-
                                                                                                                                                   x8586
                                                                                                                                                   y))))
                                                                                                                                        (δy
                                                                                                                                         x8585)))
                                                                                                                                     (x8579
                                                                                                                                      (letrec ((x8580
                                                                                                                                                (letrec ((x8581
                                                                                                                                                          (letrec ((x8583
                                                                                                                                                                    (abs
                                                                                                                                                                     δx))
                                                                                                                                                                   (x8582
                                                                                                                                                                    (abs
                                                                                                                                                                     δy)))
                                                                                                                                                            (max
                                                                                                                                                             x8583
                                                                                                                                                             x8582))))
                                                                                                                                                  (min
                                                                                                                                                   speed
                                                                                                                                                   x8581))))
                                                                                                                                        (move-distance
                                                                                                                                         x8580))))
                                                                                                                              (x8588
                                                                                                                               x8584
                                                                                                                               x8579)))
                                                                                                                           (x8564
                                                                                                                            (letrec ((x8570
                                                                                                                                      (letrec ((x8575
                                                                                                                                                (letrec ((x8577
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8576
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (<
                                                                                                                                                   x8577
                                                                                                                                                   x8576)))
                                                                                                                                               (x8571
                                                                                                                                                (letrec ((x8574
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8572
                                                                                                                                                          (letrec ((x-cnd8573
                                                                                                                                                                    (positive?
                                                                                                                                                                     δy)))
                                                                                                                                                            (if x-cnd8573
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8574
                                                                                                                                                   0
                                                                                                                                                   x8572))))
                                                                                                                                        (x8575
                                                                                                                                         x8571)))
                                                                                                                                     (x8565
                                                                                                                                      (letrec ((x8566
                                                                                                                                                (letrec ((x8569
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8567
                                                                                                                                                          (letrec ((x-cnd8568
                                                                                                                                                                    (positive?
                                                                                                                                                                     δx)))
                                                                                                                                                            (if x-cnd8568
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8569
                                                                                                                                                   x8567
                                                                                                                                                   0))))
                                                                                                                                        (else
                                                                                                                                         x8566))))
                                                                                                                              (cond
                                                                                                                               x8570
                                                                                                                               x8565))))
                                                                                                                    (let* x8578 x8564))))
                                                                                                          (λ x8592
                                                                                                            x8563))))
                                                                                                g8562)
                                                                                              (if cnd
                                                                                                (letrec ((g8593
                                                                                                          (letrec ((x8597
                                                                                                                    (δx
                                                                                                                     δy))
                                                                                                                   (x8594
                                                                                                                    (letrec ((x8596
                                                                                                                              (+
                                                                                                                               x
                                                                                                                               δx))
                                                                                                                             (x8595
                                                                                                                              (+
                                                                                                                               y
                                                                                                                               δy)))
                                                                                                                      (new-posn
                                                                                                                       x8596
                                                                                                                       x8595))))
                                                                                                            (λ x8597
                                                                                                              x8594))))
                                                                                                  g8593)
                                                                                                (if cnd
                                                                                                  (letrec ((g8598
                                                                                                            (letrec ((x8600
                                                                                                                      (img
                                                                                                                       scn))
                                                                                                                     (x8599
                                                                                                                      (place-image
                                                                                                                       img
                                                                                                                       x
                                                                                                                       y
                                                                                                                       scn)))
                                                                                                              (λ x8600
                                                                                                                x8599))))
                                                                                                    g8598)
                                                                                                  (if cnd
                                                                                                    (letrec ((g8601
                                                                                                              (letrec ((x8612
                                                                                                                        (p))
                                                                                                                       (x8602
                                                                                                                        (letrec ((x8603
                                                                                                                                  (letrec ((x8608
                                                                                                                                            (letrec ((x8609
                                                                                                                                                      (letrec ((x8610
                                                                                                                                                                (letrec ((x8611
                                                                                                                                                                          (p
                                                                                                                                                                           'y)))
                                                                                                                                                                  (x8611))))
                                                                                                                                                        (-
                                                                                                                                                         x8610
                                                                                                                                                         y))))
                                                                                                                                              (sqr
                                                                                                                                               x8609)))
                                                                                                                                           (x8604
                                                                                                                                            (letrec ((x8605
                                                                                                                                                      (letrec ((x8606
                                                                                                                                                                (letrec ((x8607
                                                                                                                                                                          (p
                                                                                                                                                                           'x)))
                                                                                                                                                                  (x8607))))
                                                                                                                                                        (-
                                                                                                                                                         x8606
                                                                                                                                                         x))))
                                                                                                                                              (sqr
                                                                                                                                               x8605))))
                                                                                                                                    (+
                                                                                                                                     x8608
                                                                                                                                     x8604))))
                                                                                                                          (sqrt
                                                                                                                           x8603))))
                                                                                                                (λ x8612
                                                                                                                  x8602))))
                                                                                                      g8601)
                                                                                                    (letrec ((g8613
                                                                                                              "unknown message"))
                                                                                                      g8613))))))))))
                                                                              (λ x8614
                                                                                x8558))))
                                                                    (letrec ((g8615
                                                                              this))
                                                                      g8615))))
                                                          g8557)))
                                                     (w0
                                                      (letrec ((x8629
                                                                (letrec ((x8630
                                                                          (new-posn
                                                                           0
                                                                           0)))
                                                                  (new-player
                                                                   x8630)))
                                                               (x8628
                                                                (new-posn 0 0))
                                                               (x8616
                                                                (letrec ((x8621
                                                                          (letrec ((x8626
                                                                                    (letrec ((x8627
                                                                                              (new-posn
                                                                                               100
                                                                                               300)))
                                                                                      (new-zombie
                                                                                       x8627)))
                                                                                   (x8622
                                                                                    (letrec ((x8624
                                                                                              (letrec ((x8625
                                                                                                        (new-posn
                                                                                                         100
                                                                                                         200)))
                                                                                                (new-zombie
                                                                                                 x8625)))
                                                                                             (x8623
                                                                                              (new-mt-zombies)))
                                                                                      (new-cons-zombies
                                                                                       x8624
                                                                                       x8623))))
                                                                            (new-cons-zombies
                                                                             x8626
                                                                             x8622)))
                                                                         (x8617
                                                                          (letrec ((x8619
                                                                                    (letrec ((x8620
                                                                                              (new-posn
                                                                                               200
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8620)))
                                                                                   (x8618
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8619
                                                                             x8618))))
                                                                  (new-horde
                                                                   x8621
                                                                   x8617))))
                                                        (new-world
                                                         x8629
                                                         x8628
                                                         x8616))))
                                              (letrec ((g8631
                                                        (letrec ((g8632
                                                                  (letrec ((g8633
                                                                            (letrec ((x8646
                                                                                      ((lambda (j7399
                                                                                                k7400
                                                                                                f7401)
                                                                                         (lambda (g7398)
                                                                                           (boolean?/c
                                                                                            j7399
                                                                                            k7400
                                                                                            (f7401
                                                                                             (any/c
                                                                                              j7399
                                                                                              k7400
                                                                                              g7398)))))
                                                                                       'module
                                                                                       'importer
                                                                                       image?))
                                                                                     (x8645
                                                                                      (input)))
                                                                              (x8646
                                                                               x8645)))
                                                                           (g8634
                                                                            (letrec ((x8649
                                                                                      ((lambda (j7404
                                                                                                k7405
                                                                                                f7406)
                                                                                         (lambda (g7402
                                                                                                  g7403)
                                                                                           (image?
                                                                                            j7404
                                                                                            k7405
                                                                                            (f7406
                                                                                             (real?/c
                                                                                              j7404
                                                                                              k7405
                                                                                              g7402)
                                                                                             (real?/c
                                                                                              j7404
                                                                                              k7405
                                                                                              g7403)))))
                                                                                       'module
                                                                                       'importer
                                                                                       empty-scene))
                                                                                     (x8648
                                                                                      (input))
                                                                                     (x8647
                                                                                      (input)))
                                                                              (x8649
                                                                               x8648
                                                                               x8647)))
                                                                           (g8635
                                                                            (letrec ((x8654
                                                                                      ((lambda (j7411
                                                                                                k7412
                                                                                                f7413)
                                                                                         (lambda (g7407
                                                                                                  g7408
                                                                                                  g7409
                                                                                                  g7410)
                                                                                           (image?
                                                                                            j7411
                                                                                            k7412
                                                                                            (f7413
                                                                                             (image?/c
                                                                                              j7411
                                                                                              k7412
                                                                                              g7407)
                                                                                             (real?/c
                                                                                              j7411
                                                                                              k7412
                                                                                              g7408)
                                                                                             (real?/c
                                                                                              j7411
                                                                                              k7412
                                                                                              g7409)
                                                                                             (image?
                                                                                              j7411
                                                                                              k7412
                                                                                              g7410)))))
                                                                                       'module
                                                                                       'importer
                                                                                       place-image))
                                                                                     (x8653
                                                                                      (input))
                                                                                     (x8652
                                                                                      (input))
                                                                                     (x8651
                                                                                      (input))
                                                                                     (x8650
                                                                                      (input)))
                                                                              (x8654
                                                                               x8653
                                                                               x8652
                                                                               x8651
                                                                               x8650)))
                                                                           (g8636
                                                                            (letrec ((x8658
                                                                                      ((lambda (j7417
                                                                                                k7418
                                                                                                f7419)
                                                                                         (lambda (g7414
                                                                                                  g7415
                                                                                                  g7416)
                                                                                           (image?
                                                                                            j7417
                                                                                            k7418
                                                                                            (f7419
                                                                                             (real?/c
                                                                                              j7417
                                                                                              k7418
                                                                                              g7414)
                                                                                             (string?/c
                                                                                              j7417
                                                                                              k7418
                                                                                              g7415)
                                                                                             (string?/c
                                                                                              j7417
                                                                                              k7418
                                                                                              g7416)))))
                                                                                       'module
                                                                                       'importer
                                                                                       circle))
                                                                                     (x8657
                                                                                      (input))
                                                                                     (x8656
                                                                                      (input))
                                                                                     (x8655
                                                                                      (input)))
                                                                              (x8658
                                                                               x8657
                                                                               x8656
                                                                               x8655)))
                                                                           (g8637
                                                                            (letrec ((x8662
                                                                                      ((lambda (j7423
                                                                                                k7424
                                                                                                f7425)
                                                                                         (lambda (g7420
                                                                                                  g7421
                                                                                                  g7422)
                                                                                           (world/c
                                                                                            j7423
                                                                                            k7424
                                                                                            (f7425
                                                                                             (player/c
                                                                                              j7423
                                                                                              k7424
                                                                                              g7420)
                                                                                             (posn/c
                                                                                              j7423
                                                                                              k7424
                                                                                              g7421)
                                                                                             (horde/c
                                                                                              j7423
                                                                                              k7424
                                                                                              g7422)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-world))
                                                                                     (x8661
                                                                                      (input))
                                                                                     (x8660
                                                                                      (input))
                                                                                     (x8659
                                                                                      (input)))
                                                                              (x8662
                                                                               x8661
                                                                               x8660
                                                                               x8659)))
                                                                           (g8638
                                                                            (letrec ((x8664
                                                                                      ((lambda (j7427
                                                                                                k7428
                                                                                                f7429)
                                                                                         (lambda (g7426)
                                                                                           (player/c
                                                                                            j7427
                                                                                            k7428
                                                                                            (f7429
                                                                                             (posn/c
                                                                                              j7427
                                                                                              k7428
                                                                                              g7426)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-player))
                                                                                     (x8663
                                                                                      (input)))
                                                                              (x8664
                                                                               x8663)))
                                                                           (g8639
                                                                            (letrec ((x8667
                                                                                      ((lambda (j7432
                                                                                                k7433
                                                                                                f7434)
                                                                                         (lambda (g7430
                                                                                                  g7431)
                                                                                           (horde/c
                                                                                            j7432
                                                                                            k7433
                                                                                            (f7434
                                                                                             (zombies/c
                                                                                              j7432
                                                                                              k7433
                                                                                              g7430)
                                                                                             (zombies/c
                                                                                              j7432
                                                                                              k7433
                                                                                              g7431)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-horde))
                                                                                     (x8666
                                                                                      (input))
                                                                                     (x8665
                                                                                      (input)))
                                                                              (x8667
                                                                               x8666
                                                                               x8665)))
                                                                           (g8640
                                                                            (letrec ((x8670
                                                                                      ((lambda (j7437
                                                                                                k7438
                                                                                                f7439)
                                                                                         (lambda (g7435
                                                                                                  g7436)
                                                                                           (zombies/c
                                                                                            j7437
                                                                                            k7438
                                                                                            (f7439
                                                                                             (zombie/c
                                                                                              j7437
                                                                                              k7438
                                                                                              g7435)
                                                                                             (zombies/c
                                                                                              j7437
                                                                                              k7438
                                                                                              g7436)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-cons-zombies))
                                                                                     (x8669
                                                                                      (input))
                                                                                     (x8668
                                                                                      (input)))
                                                                              (x8670
                                                                               x8669
                                                                               x8668)))
                                                                           (g8641
                                                                            ((lambda (j7440
                                                                                      k7441
                                                                                      f7442)
                                                                               (lambda ()
                                                                                 (zombies/c
                                                                                  j7440
                                                                                  k7441
                                                                                  (f7442))))
                                                                             'module
                                                                             'importer
                                                                             new-mt-zombies))
                                                                           (g8642
                                                                            (letrec ((x8672
                                                                                      ((lambda (j7444
                                                                                                k7445
                                                                                                f7446)
                                                                                         (lambda (g7443)
                                                                                           (zombie/c
                                                                                            j7444
                                                                                            k7445
                                                                                            (f7446
                                                                                             (posn/c
                                                                                              j7444
                                                                                              k7445
                                                                                              g7443)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-zombie))
                                                                                     (x8671
                                                                                      (input)))
                                                                              (x8672
                                                                               x8671)))
                                                                           (g8643
                                                                            (letrec ((x8675
                                                                                      ((lambda (j7449
                                                                                                k7450
                                                                                                f7451)
                                                                                         (lambda (g7447
                                                                                                  g7448)
                                                                                           (posn/c
                                                                                            j7449
                                                                                            k7450
                                                                                            (f7451
                                                                                             (real?/c
                                                                                              j7449
                                                                                              k7450
                                                                                              g7447)
                                                                                             (real?/c
                                                                                              j7449
                                                                                              k7450
                                                                                              g7448)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-posn))
                                                                                     (x8674
                                                                                      (input))
                                                                                     (x8673
                                                                                      (input)))
                                                                              (x8675
                                                                               x8674
                                                                               x8673)))
                                                                           (g8644
                                                                            (world/c
                                                                             'module
                                                                             'importer
                                                                             w0)))
                                                                    g8644)))
                                                          g8632)))
                                                g8631))))
                                    g8352)))
                          g8351))))
              g7464)))
    g7463))
