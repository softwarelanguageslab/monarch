(letrec ((any? (lambda (v) (letrec ((g7478 #t)) g7478)))
         (meta (lambda (v) (letrec ((g7479 v)) g7479)))
         (member
          (lambda (v lst)
            (letrec ((g7480
                      (letrec ((g7481
                                (letrec ((x-e7482 lst))
                                  (match
                                   x-e7482
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7483 (eq? v v1)))
                                       (if x-cnd7483 #t (member v vs)))))))))
                        g7481)))
              g7480)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7484 (lambda (v) (letrec ((g7485 v)) g7485)))) g7484)))
         (nonzero?
          (lambda (v)
            (letrec ((g7486 (letrec ((x7487 (= v 0))) (not x7487)))) g7486))))
  (letrec ((g7488
            (letrec ((g7489
                      (letrec ((g7491
                                (letrec ((real/c
                                          (lambda (g7144 g7145 g7146)
                                            (letrec ((g7492
                                                      (letrec ((x-cnd7493
                                                                (real? g7146)))
                                                        (if x-cnd7493
                                                          g7146
                                                          (blame
                                                           g7144
                                                           'real?)))))
                                              g7492)))
                                         (boolean?/c
                                          (lambda (g7147 g7148 g7149)
                                            (letrec ((g7494
                                                      (letrec ((x-cnd7495
                                                                (boolean?
                                                                 g7149)))
                                                        (if x-cnd7495
                                                          g7149
                                                          (blame
                                                           g7147
                                                           'boolean?)))))
                                              g7494)))
                                         (number?/c
                                          (lambda (g7150 g7151 g7152)
                                            (letrec ((g7496
                                                      (letrec ((x-cnd7497
                                                                (number?
                                                                 g7152)))
                                                        (if x-cnd7497
                                                          g7152
                                                          (blame
                                                           g7150
                                                           'number?)))))
                                              g7496)))
                                         (any/c
                                          (lambda (g7153 g7154 g7155)
                                            (letrec ((g7498
                                                      (letrec ((x-cnd7499
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7155)))
                                                        (if x-cnd7499
                                                          g7155
                                                          (blame
                                                           g7153
                                                           '(lambda (v)
                                                              #t))))))
                                              g7498)))
                                         (any?/c
                                          (lambda (g7156 g7157 g7158)
                                            (letrec ((g7500
                                                      (letrec ((x-cnd7501
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7158)))
                                                        (if x-cnd7501
                                                          g7158
                                                          (blame
                                                           g7156
                                                           '(lambda (v)
                                                              #t))))))
                                              g7500)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7159 g7160 g7161)
                                            (letrec ((g7502
                                                      (letrec ((x-cnd7503
                                                                (pair? g7161)))
                                                        (if x-cnd7503
                                                          g7161
                                                          (blame
                                                           g7159
                                                           'pair?)))))
                                              g7502)))
                                         (pair?/c
                                          (lambda (g7162 g7163 g7164)
                                            (letrec ((g7504
                                                      (letrec ((x-cnd7505
                                                                (pair? g7164)))
                                                        (if x-cnd7505
                                                          g7164
                                                          (blame
                                                           g7162
                                                           'pair?)))))
                                              g7504)))
                                         (integer?
                                          (lambda (g7165 g7166 g7167)
                                            (letrec ((g7506
                                                      (letrec ((x-cnd7507
                                                                (integer?
                                                                 g7167)))
                                                        (if x-cnd7507
                                                          g7167
                                                          (blame
                                                           g7165
                                                           'integer?)))))
                                              g7506)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7508
                                                      (lambda (k j v)
                                                        (letrec ((g7509
                                                                  (letrec ((x-cnd7510
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7510
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7509))))
                                              g7508)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7511
                                                      (lambda (k j v)
                                                        (letrec ((g7512
                                                                  (letrec ((x-cnd7513
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7513
                                                                      '()
                                                                      (letrec ((x7517
                                                                                (letrec ((x7518
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7518)))
                                                                               (x7514
                                                                                (letrec ((x7516
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7515
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7516
                                                                                   k
                                                                                   j
                                                                                   x7515))))
                                                                        (cons
                                                                         x7517
                                                                         x7514))))))
                                                          g7512))))
                                              g7511)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7519 #t)) g7519)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7520
                                                      (letrec ((x7521 (= v 0)))
                                                        (not x7521))))
                                              g7520)))
                                         (nonzero?/c
                                          (lambda (g7168 g7169 g7170)
                                            (letrec ((g7522
                                                      (letrec ((x-cnd7523
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7170)))
                                                        (if x-cnd7523
                                                          g7170
                                                          (blame
                                                           g7168
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7522)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7524 v)) g7524)))
                                         (+
                                          ((lambda (j7173 k7174 f7175)
                                             (lambda (g7171 g7172)
                                               (number?/c
                                                j7173
                                                k7174
                                                (f7175
                                                 (number?/c j7173 k7174 g7171)
                                                 (number?/c
                                                  j7173
                                                  k7174
                                                  g7172)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-+ a b))))
                                         (-
                                          ((lambda (j7178 k7179 f7180)
                                             (lambda (g7176 g7177)
                                               (number?/c
                                                j7178
                                                k7179
                                                (f7180
                                                 (number?/c j7178 k7179 g7176)
                                                 (number?/c
                                                  j7178
                                                  k7179
                                                  g7177)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-- a b))))
                                         (*
                                          ((lambda (j7183 k7184 f7185)
                                             (lambda (g7181 g7182)
                                               (number?/c
                                                j7183
                                                k7184
                                                (f7185
                                                 (number?/c j7183 k7184 g7181)
                                                 (number?/c
                                                  j7183
                                                  k7184
                                                  g7182)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-* a b))))
                                         (/
                                          ((lambda (j7188 k7189 f7190)
                                             (lambda (g7186 g7187)
                                               (number?/c
                                                j7188
                                                k7189
                                                (f7190
                                                 (number?/c j7188 k7189 g7186)
                                                 (number?/c
                                                  j7188
                                                  k7189
                                                  g7187)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-/ a b))))
                                         (car
                                          ((lambda (j7192 k7193 f7194)
                                             (lambda (g7191)
                                               (any/c
                                                j7192
                                                k7193
                                                (f7194
                                                 (pair?/c
                                                  j7192
                                                  k7193
                                                  g7191)))))
                                           'server
                                           'client
                                           (lambda (p) (orig-car p))))
                                         (cdr
                                          ((lambda (j7196 k7197 f7198)
                                             (lambda (g7195)
                                               (any/c
                                                j7196
                                                k7197
                                                (f7198
                                                 (pair?/c
                                                  j7196
                                                  k7197
                                                  g7195)))))
                                           'server
                                           'client
                                           (lambda (p) (orig-cdr p))))
                                         (cons
                                          ((lambda (j7201 k7202 f7203)
                                             (lambda (g7199 g7200)
                                               (pair?/c
                                                j7201
                                                k7202
                                                (f7203
                                                 (any/c j7201 k7202 g7199)
                                                 (any/c j7201 k7202 g7200)))))
                                           'server
                                           'client
                                           (lambda (a b) (cons a b))))
                                         (vector-ref
                                          ((lambda (j7205 k7206 f7207)
                                             (lambda (g7204)
                                               (integer?/c
                                                j7205
                                                k7206
                                                (f7207
                                                 (vector?/c
                                                  j7205
                                                  k7206
                                                  g7204)))))
                                           'server
                                           'client
                                           (lambda (v i)
                                             (orig-vector-ref v i))))
                                         (vector-set!
                                          ((lambda (j7210 k7211 f7212)
                                             (lambda (g7208 g7209)
                                               (any/c
                                                j7210
                                                k7211
                                                (f7212
                                                 (vector?/c j7210 k7211 g7208)
                                                 (integer?/c
                                                  j7210
                                                  k7211
                                                  g7209)))))
                                           'server
                                           'client
                                           (lambda (vec i v)
                                             (orig-vector-set! vec i v))))
                                         (assert
                                          (lambda (cnd)
                                            (letrec ((g7525 #t)) g7525)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7526 '())) g7526))))
                        g7491))
                     (g7490
                      (letrec ((real/c
                                (lambda (g7144 g7145 g7146)
                                  (letrec ((g7527
                                            (letrec ((x-cnd7528 (real? g7146)))
                                              (if x-cnd7528
                                                g7146
                                                (blame g7144 'real?)))))
                                    g7527)))
                               (boolean?/c
                                (lambda (g7147 g7148 g7149)
                                  (letrec ((g7529
                                            (letrec ((x-cnd7530
                                                      (boolean? g7149)))
                                              (if x-cnd7530
                                                g7149
                                                (blame g7147 'boolean?)))))
                                    g7529)))
                               (number?/c
                                (lambda (g7150 g7151 g7152)
                                  (letrec ((g7531
                                            (letrec ((x-cnd7532
                                                      (number? g7152)))
                                              (if x-cnd7532
                                                g7152
                                                (blame g7150 'number?)))))
                                    g7531)))
                               (any/c
                                (lambda (g7153 g7154 g7155)
                                  (letrec ((g7533
                                            (letrec ((x-cnd7534
                                                      ((lambda (v) #t) g7155)))
                                              (if x-cnd7534
                                                g7155
                                                (blame
                                                 g7153
                                                 '(lambda (v) #t))))))
                                    g7533)))
                               (any?/c
                                (lambda (g7156 g7157 g7158)
                                  (letrec ((g7535
                                            (letrec ((x-cnd7536
                                                      ((lambda (v) #t) g7158)))
                                              (if x-cnd7536
                                                g7158
                                                (blame
                                                 g7156
                                                 '(lambda (v) #t))))))
                                    g7535)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7159 g7160 g7161)
                                  (letrec ((g7537
                                            (letrec ((x-cnd7538 (pair? g7161)))
                                              (if x-cnd7538
                                                g7161
                                                (blame g7159 'pair?)))))
                                    g7537)))
                               (pair?/c
                                (lambda (g7162 g7163 g7164)
                                  (letrec ((g7539
                                            (letrec ((x-cnd7540 (pair? g7164)))
                                              (if x-cnd7540
                                                g7164
                                                (blame g7162 'pair?)))))
                                    g7539)))
                               (integer?
                                (lambda (g7165 g7166 g7167)
                                  (letrec ((g7541
                                            (letrec ((x-cnd7542
                                                      (integer? g7167)))
                                              (if x-cnd7542
                                                g7167
                                                (blame g7165 'integer?)))))
                                    g7541)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7543
                                            (lambda (k j v)
                                              (letrec ((g7544
                                                        (letrec ((x-cnd7545
                                                                  (c1 k j v)))
                                                          (if x-cnd7545
                                                            (c2 k j v)
                                                            #f))))
                                                g7544))))
                                    g7543)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7546
                                            (lambda (k j v)
                                              (letrec ((g7547
                                                        (letrec ((x-cnd7548
                                                                  (null? v)))
                                                          (if x-cnd7548
                                                            '()
                                                            (letrec ((x7552
                                                                      (letrec ((x7553
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7553)))
                                                                     (x7549
                                                                      (letrec ((x7551
                                                                                (list-of
                                                                                 contract))
                                                                               (x7550
                                                                                (cdr
                                                                                 v)))
                                                                        (x7551
                                                                         k
                                                                         j
                                                                         x7550))))
                                                              (cons
                                                               x7552
                                                               x7549))))))
                                                g7547))))
                                    g7546)))
                               (any? (lambda (v) (letrec ((g7554 #t)) g7554)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7555
                                            (letrec ((x7556 (= v 0)))
                                              (not x7556))))
                                    g7555)))
                               (nonzero?/c
                                (lambda (g7168 g7169 g7170)
                                  (letrec ((g7557
                                            (letrec ((x-cnd7558
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7170)))
                                              (if x-cnd7558
                                                g7170
                                                (blame
                                                 g7168
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7557)))
                               (meta (lambda (v) (letrec ((g7559 v)) g7559)))
                               (+
                                ((lambda (j7173 k7174 f7175)
                                   (lambda (g7171 g7172)
                                     (number?/c
                                      j7173
                                      k7174
                                      (f7175
                                       (number?/c j7173 k7174 g7171)
                                       (number?/c j7173 k7174 g7172)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (-
                                ((lambda (j7178 k7179 f7180)
                                   (lambda (g7176 g7177)
                                     (number?/c
                                      j7178
                                      k7179
                                      (f7180
                                       (number?/c j7178 k7179 g7176)
                                       (number?/c j7178 k7179 g7177)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (*
                                ((lambda (j7183 k7184 f7185)
                                   (lambda (g7181 g7182)
                                     (number?/c
                                      j7183
                                      k7184
                                      (f7185
                                       (number?/c j7183 k7184 g7181)
                                       (number?/c j7183 k7184 g7182)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (/
                                ((lambda (j7188 k7189 f7190)
                                   (lambda (g7186 g7187)
                                     (number?/c
                                      j7188
                                      k7189
                                      (f7190
                                       (number?/c j7188 k7189 g7186)
                                       (number?/c j7188 k7189 g7187)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (car
                                ((lambda (j7192 k7193 f7194)
                                   (lambda (g7191)
                                     (any/c
                                      j7192
                                      k7193
                                      (f7194 (pair?/c j7192 k7193 g7191)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (cdr
                                ((lambda (j7196 k7197 f7198)
                                   (lambda (g7195)
                                     (any/c
                                      j7196
                                      k7197
                                      (f7198 (pair?/c j7196 k7197 g7195)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (cons
                                ((lambda (j7201 k7202 f7203)
                                   (lambda (g7199 g7200)
                                     (pair?/c
                                      j7201
                                      k7202
                                      (f7203
                                       (any/c j7201 k7202 g7199)
                                       (any/c j7201 k7202 g7200)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (vector-ref
                                ((lambda (j7205 k7206 f7207)
                                   (lambda (g7204)
                                     (integer?/c
                                      j7205
                                      k7206
                                      (f7207 (vector?/c j7205 k7206 g7204)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (vector-set!
                                ((lambda (j7210 k7211 f7212)
                                   (lambda (g7208 g7209)
                                     (any/c
                                      j7210
                                      k7211
                                      (f7212
                                       (vector?/c j7210 k7211 g7208)
                                       (integer?/c j7210 k7211 g7209)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7560 #t)) g7560))))
                        (letrec ((g7561
                                  (letrec ((g7562
                                            (letrec ((block
                                                      (lambda (x7456
                                                               y7457
                                                               color7458)
                                                        (letrec ((g7563
                                                                  (letrec ((x7564
                                                                            (letrec ((x7565
                                                                                      (letrec ((x7566
                                                                                                (cons
                                                                                                 color7458
                                                                                                 '())))
                                                                                        (cons
                                                                                         y7457
                                                                                         x7566))))
                                                                              (cons
                                                                               x7456
                                                                               x7565))))
                                                                    (cons
                                                                     'block
                                                                     x7564))))
                                                          g7563)))
                                                     (block?
                                                      (lambda (block7455)
                                                        (letrec ((g7567
                                                                  (letrec ((x7568
                                                                            (car
                                                                             block7455)))
                                                                    (eq?
                                                                     x7568
                                                                     'block))))
                                                          g7567)))
                                                     (block-x
                                                      (lambda (block)
                                                        (letrec ((g7569
                                                                  (letrec ((x7570
                                                                            (cdr
                                                                             block)))
                                                                    (car
                                                                     x7570))))
                                                          g7569)))
                                                     (block-y
                                                      (lambda (block)
                                                        (letrec ((g7571
                                                                  (letrec ((x7572
                                                                            (letrec ((x7573
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x7573))))
                                                                    (car
                                                                     x7572))))
                                                          g7571)))
                                                     (block-color
                                                      (lambda (block)
                                                        (letrec ((g7574
                                                                  (letrec ((x7575
                                                                            (letrec ((x7576
                                                                                      (letrec ((x7577
                                                                                                (cdr
                                                                                                 block)))
                                                                                        (cdr
                                                                                         x7577))))
                                                                              (cdr
                                                                               x7576))))
                                                                    (car
                                                                     x7575))))
                                                          g7574)))
                                                     (block
                                                      (lambda (x7456
                                                               y7457
                                                               color7458)
                                                        (letrec ((g7578
                                                                  (letrec ((x7579
                                                                            (letrec ((x7580
                                                                                      (letrec ((x7581
                                                                                                (cons
                                                                                                 color7458
                                                                                                 '())))
                                                                                        (cons
                                                                                         y7457
                                                                                         x7581))))
                                                                              (cons
                                                                               x7456
                                                                               x7580))))
                                                                    (cons
                                                                     'block
                                                                     x7579))))
                                                          g7578)))
                                                     (block?
                                                      (lambda (block7455)
                                                        (letrec ((g7582
                                                                  (letrec ((x7583
                                                                            (car
                                                                             block7455)))
                                                                    (eq?
                                                                     x7583
                                                                     'block))))
                                                          g7582)))
                                                     (block-x
                                                      (lambda (block)
                                                        (letrec ((g7584
                                                                  (letrec ((x7585
                                                                            (cdr
                                                                             block)))
                                                                    (car
                                                                     x7585))))
                                                          g7584)))
                                                     (block-y
                                                      (lambda (block)
                                                        (letrec ((g7586
                                                                  (letrec ((x7587
                                                                            (letrec ((x7588
                                                                                      (cdr
                                                                                       block)))
                                                                              (cdr
                                                                               x7588))))
                                                                    (car
                                                                     x7587))))
                                                          g7586)))
                                                     (block-color
                                                      (lambda (block)
                                                        (letrec ((g7589
                                                                  (letrec ((x7590
                                                                            (letrec ((x7591
                                                                                      (letrec ((x7592
                                                                                                (cdr
                                                                                                 block)))
                                                                                        (cdr
                                                                                         x7592))))
                                                                              (cdr
                                                                               x7591))))
                                                                    (car
                                                                     x7590))))
                                                          g7589))))
                                              (letrec ((g7593
                                                        (letrec ((tetra
                                                                  (lambda (center7463
                                                                           blocks7464)
                                                                    (letrec ((g7594
                                                                              (letrec ((x7595
                                                                                        (letrec ((x7596
                                                                                                  (cons
                                                                                                   blocks7464
                                                                                                   '())))
                                                                                          (cons
                                                                                           center7463
                                                                                           x7596))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x7595))))
                                                                      g7594)))
                                                                 (tetra?
                                                                  (lambda (tetra7462)
                                                                    (letrec ((g7597
                                                                              (letrec ((x7598
                                                                                        (car
                                                                                         tetra7462)))
                                                                                (eq?
                                                                                 x7598
                                                                                 'tetra))))
                                                                      g7597)))
                                                                 (tetra-center
                                                                  (lambda (tetra)
                                                                    (letrec ((g7599
                                                                              (letrec ((x7600
                                                                                        (cdr
                                                                                         tetra)))
                                                                                (car
                                                                                 x7600))))
                                                                      g7599)))
                                                                 (tetra-blocks
                                                                  (lambda (tetra)
                                                                    (letrec ((g7601
                                                                              (letrec ((x7602
                                                                                        (letrec ((x7603
                                                                                                  (cdr
                                                                                                   tetra)))
                                                                                          (cdr
                                                                                           x7603))))
                                                                                (car
                                                                                 x7602))))
                                                                      g7601)))
                                                                 (tetra
                                                                  (lambda (center7463
                                                                           blocks7464)
                                                                    (letrec ((g7604
                                                                              (letrec ((x7605
                                                                                        (letrec ((x7606
                                                                                                  (cons
                                                                                                   blocks7464
                                                                                                   '())))
                                                                                          (cons
                                                                                           center7463
                                                                                           x7606))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x7605))))
                                                                      g7604)))
                                                                 (tetra?
                                                                  (lambda (tetra7462)
                                                                    (letrec ((g7607
                                                                              (letrec ((x7608
                                                                                        (car
                                                                                         tetra7462)))
                                                                                (eq?
                                                                                 x7608
                                                                                 'tetra))))
                                                                      g7607)))
                                                                 (tetra-center
                                                                  (lambda (tetra)
                                                                    (letrec ((g7609
                                                                              (letrec ((x7610
                                                                                        (cdr
                                                                                         tetra)))
                                                                                (car
                                                                                 x7610))))
                                                                      g7609)))
                                                                 (tetra-blocks
                                                                  (lambda (tetra)
                                                                    (letrec ((g7611
                                                                              (letrec ((x7612
                                                                                        (letrec ((x7613
                                                                                                  (cdr
                                                                                                   tetra)))
                                                                                          (cdr
                                                                                           x7613))))
                                                                                (car
                                                                                 x7612))))
                                                                      g7611))))
                                                          (letrec ((g7614
                                                                    (letrec ((world
                                                                              (lambda (tetra7468
                                                                                       blocks7469)
                                                                                (letrec ((g7615
                                                                                          (letrec ((x7616
                                                                                                    (letrec ((x7617
                                                                                                              (cons
                                                                                                               blocks7469
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       tetra7468
                                                                                                       x7617))))
                                                                                            (cons
                                                                                             'world
                                                                                             x7616))))
                                                                                  g7615)))
                                                                             (world?
                                                                              (lambda (world7467)
                                                                                (letrec ((g7618
                                                                                          (letrec ((x7619
                                                                                                    (car
                                                                                                     world7467)))
                                                                                            (eq?
                                                                                             x7619
                                                                                             'world))))
                                                                                  g7618)))
                                                                             (world-tetra
                                                                              (lambda (world)
                                                                                (letrec ((g7620
                                                                                          (letrec ((x7621
                                                                                                    (cdr
                                                                                                     world)))
                                                                                            (car
                                                                                             x7621))))
                                                                                  g7620)))
                                                                             (world-blocks
                                                                              (lambda (world)
                                                                                (letrec ((g7622
                                                                                          (letrec ((x7623
                                                                                                    (letrec ((x7624
                                                                                                              (cdr
                                                                                                               world)))
                                                                                                      (cdr
                                                                                                       x7624))))
                                                                                            (car
                                                                                             x7623))))
                                                                                  g7622)))
                                                                             (world
                                                                              (lambda (tetra7468
                                                                                       blocks7469)
                                                                                (letrec ((g7625
                                                                                          (letrec ((x7626
                                                                                                    (letrec ((x7627
                                                                                                              (cons
                                                                                                               blocks7469
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       tetra7468
                                                                                                       x7627))))
                                                                                            (cons
                                                                                             'world
                                                                                             x7626))))
                                                                                  g7625)))
                                                                             (world?
                                                                              (lambda (world7467)
                                                                                (letrec ((g7628
                                                                                          (letrec ((x7629
                                                                                                    (car
                                                                                                     world7467)))
                                                                                            (eq?
                                                                                             x7629
                                                                                             'world))))
                                                                                  g7628)))
                                                                             (world-tetra
                                                                              (lambda (world)
                                                                                (letrec ((g7630
                                                                                          (letrec ((x7631
                                                                                                    (cdr
                                                                                                     world)))
                                                                                            (car
                                                                                             x7631))))
                                                                                  g7630)))
                                                                             (world-blocks
                                                                              (lambda (world)
                                                                                (letrec ((g7632
                                                                                          (letrec ((x7633
                                                                                                    (letrec ((x7634
                                                                                                              (cdr
                                                                                                               world)))
                                                                                                      (cdr
                                                                                                       x7634))))
                                                                                            (car
                                                                                             x7633))))
                                                                                  g7632))))
                                                                      (letrec ((g7635
                                                                                (letrec ((posn
                                                                                          (lambda (x7473
                                                                                                   y7474)
                                                                                            (letrec ((g7636
                                                                                                      (letrec ((x7637
                                                                                                                (letrec ((x7638
                                                                                                                          (cons
                                                                                                                           y7474
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   x7473
                                                                                                                   x7638))))
                                                                                                        (cons
                                                                                                         'posn
                                                                                                         x7637))))
                                                                                              g7636)))
                                                                                         (posn?
                                                                                          (lambda (posn7472)
                                                                                            (letrec ((g7639
                                                                                                      (letrec ((x7640
                                                                                                                (car
                                                                                                                 posn7472)))
                                                                                                        (eq?
                                                                                                         x7640
                                                                                                         'posn))))
                                                                                              g7639)))
                                                                                         (posn-x
                                                                                          (lambda (posn)
                                                                                            (letrec ((g7641
                                                                                                      (letrec ((x7642
                                                                                                                (cdr
                                                                                                                 posn)))
                                                                                                        (car
                                                                                                         x7642))))
                                                                                              g7641)))
                                                                                         (posn-y
                                                                                          (lambda (posn)
                                                                                            (letrec ((g7643
                                                                                                      (letrec ((x7644
                                                                                                                (letrec ((x7645
                                                                                                                          (cdr
                                                                                                                           posn)))
                                                                                                                  (cdr
                                                                                                                   x7645))))
                                                                                                        (car
                                                                                                         x7644))))
                                                                                              g7643)))
                                                                                         (posn
                                                                                          (lambda (x7473
                                                                                                   y7474)
                                                                                            (letrec ((g7646
                                                                                                      (letrec ((x7647
                                                                                                                (letrec ((x7648
                                                                                                                          (cons
                                                                                                                           y7474
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   x7473
                                                                                                                   x7648))))
                                                                                                        (cons
                                                                                                         'posn
                                                                                                         x7647))))
                                                                                              g7646)))
                                                                                         (posn?
                                                                                          (lambda (posn7472)
                                                                                            (letrec ((g7649
                                                                                                      (letrec ((x7650
                                                                                                                (car
                                                                                                                 posn7472)))
                                                                                                        (eq?
                                                                                                         x7650
                                                                                                         'posn))))
                                                                                              g7649)))
                                                                                         (posn-x
                                                                                          (lambda (posn)
                                                                                            (letrec ((g7651
                                                                                                      (letrec ((x7652
                                                                                                                (cdr
                                                                                                                 posn)))
                                                                                                        (car
                                                                                                         x7652))))
                                                                                              g7651)))
                                                                                         (posn-y
                                                                                          (lambda (posn)
                                                                                            (letrec ((g7653
                                                                                                      (letrec ((x7654
                                                                                                                (letrec ((x7655
                                                                                                                          (cdr
                                                                                                                           posn)))
                                                                                                                  (cdr
                                                                                                                   x7655))))
                                                                                                        (car
                                                                                                         x7654))))
                                                                                              g7653)))
                                                                                         (COLOR/C
                                                                                          symbol?)
                                                                                         (POSN/C
                                                                                          (lambda (j7214
                                                                                                   k7215
                                                                                                   v7213)
                                                                                            (letrec ((g7656
                                                                                                      (letrec ((checked7216
                                                                                                                (letrec ((x7657
                                                                                                                          (car
                                                                                                                           v7213)))
                                                                                                                  (real?/c
                                                                                                                   'j7214
                                                                                                                   'k7215
                                                                                                                   x7657))))
                                                                                                        (letrec ((g7658
                                                                                                                  (letrec ((checked7217
                                                                                                                            (letrec ((x7659
                                                                                                                                      (letrec ((x7660
                                                                                                                                                (cdr
                                                                                                                                                 v7213)))
                                                                                                                                        (car
                                                                                                                                         x7660))))
                                                                                                                              (real?/c
                                                                                                                               'j7214
                                                                                                                               'k7215
                                                                                                                               x7659))))
                                                                                                                    (letrec ((g7661
                                                                                                                              (letrec ((x7662
                                                                                                                                        (letrec ((x7663
                                                                                                                                                  (cons
                                                                                                                                                   checked7217
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7216
                                                                                                                                           x7663))))
                                                                                                                                (cons
                                                                                                                                 posn
                                                                                                                                 x7662))))
                                                                                                                      g7661))))
                                                                                                          g7658))))
                                                                                              g7656)))
                                                                                         (BLOCK/C
                                                                                          (lambda (j7220
                                                                                                   k7221
                                                                                                   v7219)
                                                                                            (letrec ((g7664
                                                                                                      (letrec ((checked7222
                                                                                                                (letrec ((x7665
                                                                                                                          (car
                                                                                                                           v7219)))
                                                                                                                  (real?/c
                                                                                                                   'j7220
                                                                                                                   'k7221
                                                                                                                   x7665))))
                                                                                                        (letrec ((g7666
                                                                                                                  (letrec ((checked7223
                                                                                                                            (letrec ((x7667
                                                                                                                                      (letrec ((x7668
                                                                                                                                                (cdr
                                                                                                                                                 v7219)))
                                                                                                                                        (car
                                                                                                                                         x7668))))
                                                                                                                              (real?/c
                                                                                                                               'j7220
                                                                                                                               'k7221
                                                                                                                               x7667))))
                                                                                                                    (letrec ((g7669
                                                                                                                              (letrec ((checked7224
                                                                                                                                        (letrec ((x7670
                                                                                                                                                  (letrec ((x7671
                                                                                                                                                            (letrec ((x7672
                                                                                                                                                                      (cdr
                                                                                                                                                                       v7219)))
                                                                                                                                                              (cdr
                                                                                                                                                               x7672))))
                                                                                                                                                    (car
                                                                                                                                                     x7671))))
                                                                                                                                          (COLOR/C
                                                                                                                                           'j7220
                                                                                                                                           'k7221
                                                                                                                                           x7670))))
                                                                                                                                (letrec ((g7673
                                                                                                                                          (letrec ((x7674
                                                                                                                                                    (letrec ((x7675
                                                                                                                                                              (letrec ((x7676
                                                                                                                                                                        (cons
                                                                                                                                                                         checked7224
                                                                                                                                                                         '())))
                                                                                                                                                                (cons
                                                                                                                                                                 checked7223
                                                                                                                                                                 x7676))))
                                                                                                                                                      (cons
                                                                                                                                                       checked7222
                                                                                                                                                       x7675))))
                                                                                                                                            (cons
                                                                                                                                             block
                                                                                                                                             x7674))))
                                                                                                                                  g7673))))
                                                                                                                      g7669))))
                                                                                                          g7666))))
                                                                                              g7664)))
                                                                                         (BSET/C
                                                                                          (listof
                                                                                           BLOCK/C))
                                                                                         (TETRA/C
                                                                                          (lambda (j7227
                                                                                                   k7228
                                                                                                   v7226)
                                                                                            (letrec ((g7677
                                                                                                      (letrec ((checked7229
                                                                                                                (letrec ((x7678
                                                                                                                          (car
                                                                                                                           v7226)))
                                                                                                                  (POSN/C
                                                                                                                   'j7227
                                                                                                                   'k7228
                                                                                                                   x7678))))
                                                                                                        (letrec ((g7679
                                                                                                                  (letrec ((checked7230
                                                                                                                            (letrec ((x7680
                                                                                                                                      (letrec ((x7681
                                                                                                                                                (cdr
                                                                                                                                                 v7226)))
                                                                                                                                        (car
                                                                                                                                         x7681))))
                                                                                                                              (BSET/C
                                                                                                                               'j7227
                                                                                                                               'k7228
                                                                                                                               x7680))))
                                                                                                                    (letrec ((g7682
                                                                                                                              (letrec ((x7683
                                                                                                                                        (letrec ((x7684
                                                                                                                                                  (cons
                                                                                                                                                   checked7230
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7229
                                                                                                                                           x7684))))
                                                                                                                                (cons
                                                                                                                                 tetra
                                                                                                                                 x7683))))
                                                                                                                      g7682))))
                                                                                                          g7679))))
                                                                                              g7677)))
                                                                                         (WORLD/C
                                                                                          (lambda (j7233
                                                                                                   k7234
                                                                                                   v7232)
                                                                                            (letrec ((g7685
                                                                                                      (letrec ((checked7235
                                                                                                                (letrec ((x7686
                                                                                                                          (car
                                                                                                                           v7232)))
                                                                                                                  (TETRA/C
                                                                                                                   'j7233
                                                                                                                   'k7234
                                                                                                                   x7686))))
                                                                                                        (letrec ((g7687
                                                                                                                  (letrec ((checked7236
                                                                                                                            (letrec ((x7688
                                                                                                                                      (letrec ((x7689
                                                                                                                                                (cdr
                                                                                                                                                 v7232)))
                                                                                                                                        (car
                                                                                                                                         x7689))))
                                                                                                                              (BSET/C
                                                                                                                               'j7233
                                                                                                                               'k7234
                                                                                                                               x7688))))
                                                                                                                    (letrec ((g7690
                                                                                                                              (letrec ((x7691
                                                                                                                                        (letrec ((x7692
                                                                                                                                                  (cons
                                                                                                                                                   checked7236
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7235
                                                                                                                                           x7692))))
                                                                                                                                (cons
                                                                                                                                 world
                                                                                                                                 x7691))))
                                                                                                                      g7690))))
                                                                                                          g7687))))
                                                                                              g7685)))
                                                                                         (posn=?
                                                                                          (lambda (p1
                                                                                                   p2)
                                                                                            (letrec ((g7693
                                                                                                      (letrec ((x-cnd7694
                                                                                                                (letrec ((x7696
                                                                                                                          (posn-x
                                                                                                                           p1))
                                                                                                                         (x7695
                                                                                                                          (posn-x
                                                                                                                           p2)))
                                                                                                                  (=
                                                                                                                   x7696
                                                                                                                   x7695))))
                                                                                                        (if x-cnd7694
                                                                                                          (letrec ((x7698
                                                                                                                    (posn-y
                                                                                                                     p1))
                                                                                                                   (x7697
                                                                                                                    (posn-y
                                                                                                                     p2)))
                                                                                                            (=
                                                                                                             x7698
                                                                                                             x7697))
                                                                                                          #f))))
                                                                                              g7693)))
                                                                                         (block-size
                                                                                          20)
                                                                                         (board-height
                                                                                          20)
                                                                                         (board-width
                                                                                          10)
                                                                                         (block=?
                                                                                          (lambda (b1
                                                                                                   b2)
                                                                                            (letrec ((g7699
                                                                                                      (letrec ((x-cnd7700
                                                                                                                (letrec ((x7702
                                                                                                                          (block-x
                                                                                                                           b1))
                                                                                                                         (x7701
                                                                                                                          (block-x
                                                                                                                           b2)))
                                                                                                                  (=
                                                                                                                   x7702
                                                                                                                   x7701))))
                                                                                                        (if x-cnd7700
                                                                                                          (letrec ((x7704
                                                                                                                    (block-y
                                                                                                                     b1))
                                                                                                                   (x7703
                                                                                                                    (block-y
                                                                                                                     b2)))
                                                                                                            (=
                                                                                                             x7704
                                                                                                             x7703))
                                                                                                          #f))))
                                                                                              g7699)))
                                                                                         (block-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   b)
                                                                                            (letrec ((g7705
                                                                                                      (letrec ((x7709
                                                                                                                (letrec ((x7710
                                                                                                                          (block-x
                                                                                                                           b)))
                                                                                                                  (+
                                                                                                                   dx
                                                                                                                   x7710)))
                                                                                                               (x7707
                                                                                                                (letrec ((x7708
                                                                                                                          (block-y
                                                                                                                           b)))
                                                                                                                  (+
                                                                                                                   dy
                                                                                                                   x7708)))
                                                                                                               (x7706
                                                                                                                (block-color
                                                                                                                 b)))
                                                                                                        (block
                                                                                                         x7709
                                                                                                         x7707
                                                                                                         x7706))))
                                                                                              g7705)))
                                                                                         (block-rotate-ccw
                                                                                          (lambda (c
                                                                                                   b)
                                                                                            (letrec ((g7711
                                                                                                      (letrec ((x7718
                                                                                                                (letrec ((x7722
                                                                                                                          (posn-x
                                                                                                                           c))
                                                                                                                         (x7719
                                                                                                                          (letrec ((x7721
                                                                                                                                    (posn-y
                                                                                                                                     c))
                                                                                                                                   (x7720
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (-
                                                                                                                             x7721
                                                                                                                             x7720))))
                                                                                                                  (+
                                                                                                                   x7722
                                                                                                                   x7719)))
                                                                                                               (x7713
                                                                                                                (letrec ((x7717
                                                                                                                          (posn-y
                                                                                                                           c))
                                                                                                                         (x7714
                                                                                                                          (letrec ((x7716
                                                                                                                                    (block-x
                                                                                                                                     b))
                                                                                                                                   (x7715
                                                                                                                                    (posn-x
                                                                                                                                     c)))
                                                                                                                            (-
                                                                                                                             x7716
                                                                                                                             x7715))))
                                                                                                                  (+
                                                                                                                   x7717
                                                                                                                   x7714)))
                                                                                                               (x7712
                                                                                                                (block-color
                                                                                                                 b)))
                                                                                                        (block
                                                                                                         x7718
                                                                                                         x7713
                                                                                                         x7712))))
                                                                                              g7711)))
                                                                                         (block-rotate-cw
                                                                                          (lambda (c
                                                                                                   b)
                                                                                            (letrec ((g7723
                                                                                                      (letrec ((x7724
                                                                                                                (letrec ((x7725
                                                                                                                          (block-rotate-ccw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (block-rotate-ccw
                                                                                                                   c
                                                                                                                   x7725))))
                                                                                                        (block-rotate-ccw
                                                                                                         c
                                                                                                         x7724))))
                                                                                              g7723)))
                                                                                         (ormap
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g7726
                                                                                                      (if cnd
                                                                                                        (letrec ((g7727
                                                                                                                  #f))
                                                                                                          g7727)
                                                                                                        (letrec ((g7728
                                                                                                                  (letrec ((x7731
                                                                                                                            (letrec ((x7732
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (p?
                                                                                                                               x7732)))
                                                                                                                           (x7729
                                                                                                                            (letrec ((x7730
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (ormap
                                                                                                                               p?
                                                                                                                               x7730))))
                                                                                                                    (or x7731
                                                                                                                        x7729))))
                                                                                                          g7728))))
                                                                                              g7726)))
                                                                                         (andmap
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g7733
                                                                                                      (if cnd
                                                                                                        (letrec ((g7734
                                                                                                                  #t))
                                                                                                          g7734)
                                                                                                        (letrec ((g7735
                                                                                                                  (letrec ((x7738
                                                                                                                            (letrec ((x7739
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (p?
                                                                                                                               x7739)))
                                                                                                                           (x7736
                                                                                                                            (letrec ((x7737
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (andmap
                                                                                                                               p?
                                                                                                                               x7737))))
                                                                                                                    (and x7738
                                                                                                                         x7736))))
                                                                                                          g7735))))
                                                                                              g7733)))
                                                                                         (map
                                                                                          (lambda (f
                                                                                                   xs)
                                                                                            (letrec ((g7740
                                                                                                      (if cnd
                                                                                                        (letrec ((g7741
                                                                                                                  null))
                                                                                                          g7741)
                                                                                                        (letrec ((g7742
                                                                                                                  (letrec ((x7745
                                                                                                                            (letrec ((x7746
                                                                                                                                      (car
                                                                                                                                       xs)))
                                                                                                                              (f
                                                                                                                               x7746)))
                                                                                                                           (x7743
                                                                                                                            (letrec ((x7744
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (map
                                                                                                                               f
                                                                                                                               x7744))))
                                                                                                                    (cons
                                                                                                                     x7745
                                                                                                                     x7743))))
                                                                                                          g7742))))
                                                                                              g7740)))
                                                                                         (filter
                                                                                          (lambda (p?
                                                                                                   xs)
                                                                                            (letrec ((g7747
                                                                                                      (if cnd
                                                                                                        (letrec ((g7748
                                                                                                                  null))
                                                                                                          g7748)
                                                                                                        (if cnd
                                                                                                          (letrec ((g7749
                                                                                                                    (letrec ((x7752
                                                                                                                              (car
                                                                                                                               xs))
                                                                                                                             (x7750
                                                                                                                              (letrec ((x7751
                                                                                                                                        (cdr
                                                                                                                                         xs)))
                                                                                                                                (filter
                                                                                                                                 p?
                                                                                                                                 x7751))))
                                                                                                                      (cons
                                                                                                                       x7752
                                                                                                                       x7750))))
                                                                                                            g7749)
                                                                                                          (letrec ((g7753
                                                                                                                    (letrec ((x7754
                                                                                                                              (cdr
                                                                                                                               xs)))
                                                                                                                      (filter
                                                                                                                       p?
                                                                                                                       x7754))))
                                                                                                            g7753)))))
                                                                                              g7747)))
                                                                                         (append
                                                                                          (lambda (l
                                                                                                   r)
                                                                                            (letrec ((g7755
                                                                                                      (if cnd
                                                                                                        (letrec ((g7756
                                                                                                                  r))
                                                                                                          g7756)
                                                                                                        (letrec ((g7757
                                                                                                                  (letrec ((x7760
                                                                                                                            (car
                                                                                                                             l))
                                                                                                                           (x7758
                                                                                                                            (letrec ((x7759
                                                                                                                                      (cdr
                                                                                                                                       l)))
                                                                                                                              (append
                                                                                                                               x7759
                                                                                                                               r))))
                                                                                                                    (cons
                                                                                                                     x7760
                                                                                                                     x7758))))
                                                                                                          g7757))))
                                                                                              g7755)))
                                                                                         (length
                                                                                          (lambda (xs)
                                                                                            (letrec ((g7761
                                                                                                      (if cnd
                                                                                                        (letrec ((g7762
                                                                                                                  0))
                                                                                                          g7762)
                                                                                                        (letrec ((g7763
                                                                                                                  (letrec ((x7764
                                                                                                                            (letrec ((x7765
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (length
                                                                                                                               x7765))))
                                                                                                                    (+
                                                                                                                     1
                                                                                                                     x7764))))
                                                                                                          g7763))))
                                                                                              g7761)))
                                                                                         (foldr
                                                                                          (lambda (f
                                                                                                   a
                                                                                                   xs)
                                                                                            (letrec ((g7766
                                                                                                      (if cnd
                                                                                                        (letrec ((g7767
                                                                                                                  a))
                                                                                                          g7767)
                                                                                                        (letrec ((g7768
                                                                                                                  (letrec ((x7771
                                                                                                                            (car
                                                                                                                             xs))
                                                                                                                           (x7769
                                                                                                                            (letrec ((x7770
                                                                                                                                      (cdr
                                                                                                                                       xs)))
                                                                                                                              (foldr
                                                                                                                               f
                                                                                                                               a
                                                                                                                               x7770))))
                                                                                                                    (f
                                                                                                                     x7771
                                                                                                                     x7769))))
                                                                                                          g7768))))
                                                                                              g7766)))
                                                                                         (blocks-contains?
                                                                                          (lambda (bs
                                                                                                   b)
                                                                                            (letrec ((g7772
                                                                                                      (letrec ((x7773
                                                                                                                (letrec ((x7775
                                                                                                                          (c))
                                                                                                                         (x7774
                                                                                                                          (block=?
                                                                                                                           b
                                                                                                                           c)))
                                                                                                                  (λ x7775
                                                                                                                    x7774))))
                                                                                                        (ormap
                                                                                                         x7773
                                                                                                         bs))))
                                                                                              g7772)))
                                                                                         (blocks-subset?
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g7776
                                                                                                      (letrec ((x7777
                                                                                                                (letrec ((x7779
                                                                                                                          (b))
                                                                                                                         (x7778
                                                                                                                          (blocks-contains?
                                                                                                                           bs2
                                                                                                                           b)))
                                                                                                                  (λ x7779
                                                                                                                    x7778))))
                                                                                                        (andmap
                                                                                                         x7777
                                                                                                         bs1))))
                                                                                              g7776)))
                                                                                         (blocks=?
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g7780
                                                                                                      (letrec ((x-cnd7781
                                                                                                                (blocks-subset?
                                                                                                                 bs1
                                                                                                                 bs2)))
                                                                                                        (if x-cnd7781
                                                                                                          (blocks-subset?
                                                                                                           bs2
                                                                                                           bs1)
                                                                                                          #f))))
                                                                                              g7780)))
                                                                                         (blocks-intersect
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g7782
                                                                                                      (letrec ((x7783
                                                                                                                (letrec ((x7785
                                                                                                                          (b))
                                                                                                                         (x7784
                                                                                                                          (blocks-contains?
                                                                                                                           bs2
                                                                                                                           b)))
                                                                                                                  (λ x7785
                                                                                                                    x7784))))
                                                                                                        (filter
                                                                                                         x7783
                                                                                                         bs1))))
                                                                                              g7782)))
                                                                                         (blocks-count
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7786
                                                                                                      (length
                                                                                                       bs)))
                                                                                              g7786)))
                                                                                         (blocks-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   bs)
                                                                                            (letrec ((g7787
                                                                                                      (letrec ((x7788
                                                                                                                (letrec ((x7790
                                                                                                                          (b))
                                                                                                                         (x7789
                                                                                                                          (block-move
                                                                                                                           dx
                                                                                                                           dy
                                                                                                                           b)))
                                                                                                                  (λ x7790
                                                                                                                    x7789))))
                                                                                                        (map
                                                                                                         x7788
                                                                                                         bs))))
                                                                                              g7787)))
                                                                                         (blocks-rotate-ccw
                                                                                          (lambda (c
                                                                                                   bs)
                                                                                            (letrec ((g7791
                                                                                                      (letrec ((x7792
                                                                                                                (letrec ((x7794
                                                                                                                          (b))
                                                                                                                         (x7793
                                                                                                                          (block-rotate-ccw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (λ x7794
                                                                                                                    x7793))))
                                                                                                        (map
                                                                                                         x7792
                                                                                                         bs))))
                                                                                              g7791)))
                                                                                         (blocks-rotate-cw
                                                                                          (lambda (c
                                                                                                   bs)
                                                                                            (letrec ((g7795
                                                                                                      (letrec ((x7796
                                                                                                                (letrec ((x7798
                                                                                                                          (b))
                                                                                                                         (x7797
                                                                                                                          (block-rotate-cw
                                                                                                                           c
                                                                                                                           b)))
                                                                                                                  (λ x7798
                                                                                                                    x7797))))
                                                                                                        (map
                                                                                                         x7796
                                                                                                         bs))))
                                                                                              g7795)))
                                                                                         (blocks-change-color
                                                                                          (lambda (bs
                                                                                                   c)
                                                                                            (letrec ((g7799
                                                                                                      (letrec ((x7800
                                                                                                                (letrec ((x7804
                                                                                                                          (b))
                                                                                                                         (x7801
                                                                                                                          (letrec ((x7803
                                                                                                                                    (block-x
                                                                                                                                     b))
                                                                                                                                   (x7802
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (block
                                                                                                                             x7803
                                                                                                                             x7802
                                                                                                                             c))))
                                                                                                                  (λ x7804
                                                                                                                    x7801))))
                                                                                                        (map
                                                                                                         x7800
                                                                                                         bs))))
                                                                                              g7799)))
                                                                                         (blocks-row
                                                                                          (lambda (bs
                                                                                                   i)
                                                                                            (letrec ((g7805
                                                                                                      (letrec ((x7806
                                                                                                                (letrec ((x7809
                                                                                                                          (b))
                                                                                                                         (x7807
                                                                                                                          (letrec ((x7808
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (=
                                                                                                                             i
                                                                                                                             x7808))))
                                                                                                                  (λ x7809
                                                                                                                    x7807))))
                                                                                                        (filter
                                                                                                         x7806
                                                                                                         bs))))
                                                                                              g7805)))
                                                                                         (full-row?
                                                                                          (lambda (bs
                                                                                                   i)
                                                                                            (letrec ((g7810
                                                                                                      (letrec ((x7811
                                                                                                                (letrec ((x7812
                                                                                                                          (blocks-row
                                                                                                                           bs
                                                                                                                           i)))
                                                                                                                  (blocks-count
                                                                                                                   x7812))))
                                                                                                        (=
                                                                                                         board-width
                                                                                                         x7811))))
                                                                                              g7810)))
                                                                                         (blocks-overflow?
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7813
                                                                                                      (letrec ((x7814
                                                                                                                (letrec ((x7817
                                                                                                                          (b))
                                                                                                                         (x7815
                                                                                                                          (letrec ((x7816
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (<=
                                                                                                                             x7816
                                                                                                                             0))))
                                                                                                                  (λ x7817
                                                                                                                    x7815))))
                                                                                                        (ormap
                                                                                                         x7814
                                                                                                         bs))))
                                                                                              g7813)))
                                                                                         (blocks-union
                                                                                          (lambda (bs1
                                                                                                   bs2)
                                                                                            (letrec ((g7818
                                                                                                      (letrec ((x7819
                                                                                                                (letrec ((x7823
                                                                                                                          (b
                                                                                                                           bs))
                                                                                                                         (x7820
                                                                                                                          (if cnd
                                                                                                                            (letrec ((g7821
                                                                                                                                      bs))
                                                                                                                              g7821)
                                                                                                                            (letrec ((g7822
                                                                                                                                      (cons
                                                                                                                                       b
                                                                                                                                       bs)))
                                                                                                                              g7822))))
                                                                                                                  (λ x7823
                                                                                                                    x7820))))
                                                                                                        (foldr
                                                                                                         x7819
                                                                                                         bs2
                                                                                                         bs1))))
                                                                                              g7818)))
                                                                                         (blocks-max-y
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7824
                                                                                                      (letrec ((x7825
                                                                                                                (letrec ((x7828
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x7826
                                                                                                                          (letrec ((x7827
                                                                                                                                    (block-y
                                                                                                                                     b)))
                                                                                                                            (max
                                                                                                                             x7827
                                                                                                                             n))))
                                                                                                                  (λ x7828
                                                                                                                    x7826))))
                                                                                                        (foldr
                                                                                                         x7825
                                                                                                         0
                                                                                                         bs))))
                                                                                              g7824)))
                                                                                         (blocks-min-x
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7829
                                                                                                      (letrec ((x7830
                                                                                                                (letrec ((x7833
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x7831
                                                                                                                          (letrec ((x7832
                                                                                                                                    (block-x
                                                                                                                                     b)))
                                                                                                                            (min
                                                                                                                             x7832
                                                                                                                             n))))
                                                                                                                  (λ x7833
                                                                                                                    x7831))))
                                                                                                        (foldr
                                                                                                         x7830
                                                                                                         board-width
                                                                                                         bs))))
                                                                                              g7829)))
                                                                                         (blocks-max-x
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7834
                                                                                                      (letrec ((x7835
                                                                                                                (letrec ((x7838
                                                                                                                          (b
                                                                                                                           n))
                                                                                                                         (x7836
                                                                                                                          (letrec ((x7837
                                                                                                                                    (block-x
                                                                                                                                     b)))
                                                                                                                            (max
                                                                                                                             x7837
                                                                                                                             n))))
                                                                                                                  (λ x7838
                                                                                                                    x7836))))
                                                                                                        (foldr
                                                                                                         x7835
                                                                                                         0
                                                                                                         bs))))
                                                                                              g7834)))
                                                                                         (eliminate-full-rows
                                                                                          (lambda (bs)
                                                                                            (letrec ((g7839
                                                                                                      (elim-row
                                                                                                       bs
                                                                                                       board-height
                                                                                                       0)))
                                                                                              g7839)))
                                                                                         (elim-row
                                                                                          (lambda (bs
                                                                                                   i
                                                                                                   offset)
                                                                                            (letrec ((g7840
                                                                                                      (if cnd
                                                                                                        (letrec ((g7841
                                                                                                                  empty))
                                                                                                          g7841)
                                                                                                        (if cnd
                                                                                                          (letrec ((g7842
                                                                                                                    (letrec ((x7844
                                                                                                                              (sub1
                                                                                                                               i))
                                                                                                                             (x7843
                                                                                                                              (add1
                                                                                                                               offset)))
                                                                                                                      (elim-row
                                                                                                                       bs
                                                                                                                       x7844
                                                                                                                       x7843))))
                                                                                                            g7842)
                                                                                                          (letrec ((g7845
                                                                                                                    (letrec ((x7848
                                                                                                                              (letrec ((x7849
                                                                                                                                        (sub1
                                                                                                                                         i)))
                                                                                                                                (elim-row
                                                                                                                                 bs
                                                                                                                                 x7849
                                                                                                                                 offset)))
                                                                                                                             (x7846
                                                                                                                              (letrec ((x7847
                                                                                                                                        (blocks-row
                                                                                                                                         bs
                                                                                                                                         i)))
                                                                                                                                (blocks-move
                                                                                                                                 0
                                                                                                                                 offset
                                                                                                                                 x7847))))
                                                                                                                      (blocks-union
                                                                                                                       x7848
                                                                                                                       x7846))))
                                                                                                            g7845)))))
                                                                                              g7840)))
                                                                                         (tetra-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   t)
                                                                                            (letrec ((g7850
                                                                                                      (letrec ((x7853
                                                                                                                (letrec ((x7857
                                                                                                                          (letrec ((x7858
                                                                                                                                    (letrec ((x7859
                                                                                                                                              (tetra-center
                                                                                                                                               t)))
                                                                                                                                      (posn-x
                                                                                                                                       x7859))))
                                                                                                                            (+
                                                                                                                             dx
                                                                                                                             x7858)))
                                                                                                                         (x7854
                                                                                                                          (letrec ((x7855
                                                                                                                                    (letrec ((x7856
                                                                                                                                              (tetra-center
                                                                                                                                               t)))
                                                                                                                                      (posn-y
                                                                                                                                       x7856))))
                                                                                                                            (+
                                                                                                                             dy
                                                                                                                             x7855))))
                                                                                                                  (posn
                                                                                                                   x7857
                                                                                                                   x7854)))
                                                                                                               (x7851
                                                                                                                (letrec ((x7852
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-move
                                                                                                                   dx
                                                                                                                   dy
                                                                                                                   x7852))))
                                                                                                        (tetra
                                                                                                         x7853
                                                                                                         x7851))))
                                                                                              g7850)))
                                                                                         (tetra-rotate-ccw
                                                                                          (lambda (t)
                                                                                            (letrec ((g7860
                                                                                                      (letrec ((x7864
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x7861
                                                                                                                (letrec ((x7863
                                                                                                                          (tetra-center
                                                                                                                           t))
                                                                                                                         (x7862
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-rotate-ccw
                                                                                                                   x7863
                                                                                                                   x7862))))
                                                                                                        (tetra
                                                                                                         x7864
                                                                                                         x7861))))
                                                                                              g7860)))
                                                                                         (tetra-rotate-cw
                                                                                          (lambda (t)
                                                                                            (letrec ((g7865
                                                                                                      (letrec ((x7869
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x7866
                                                                                                                (letrec ((x7868
                                                                                                                          (tetra-center
                                                                                                                           t))
                                                                                                                         (x7867
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-rotate-cw
                                                                                                                   x7868
                                                                                                                   x7867))))
                                                                                                        (tetra
                                                                                                         x7869
                                                                                                         x7866))))
                                                                                              g7865)))
                                                                                         (tetra-overlaps-blocks?
                                                                                          (lambda (t
                                                                                                   bs)
                                                                                            (letrec ((g7870
                                                                                                      (letrec ((x7871
                                                                                                                (letrec ((x7872
                                                                                                                          (letrec ((x7873
                                                                                                                                    (tetra-blocks
                                                                                                                                     t)))
                                                                                                                            (blocks-intersect
                                                                                                                             x7873
                                                                                                                             bs))))
                                                                                                                  (false?
                                                                                                                   x7872))))
                                                                                                        (false?
                                                                                                         x7871))))
                                                                                              g7870)))
                                                                                         (tetra-change-color
                                                                                          (lambda (t
                                                                                                   c)
                                                                                            (letrec ((g7874
                                                                                                      (letrec ((x7877
                                                                                                                (tetra-center
                                                                                                                 t))
                                                                                                               (x7875
                                                                                                                (letrec ((x7876
                                                                                                                          (tetra-blocks
                                                                                                                           t)))
                                                                                                                  (blocks-change-color
                                                                                                                   x7876
                                                                                                                   c))))
                                                                                                        (tetra
                                                                                                         x7877
                                                                                                         x7875))))
                                                                                              g7874)))
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
                                                                                            (letrec ((g7878
                                                                                                      (letrec ((x7879
                                                                                                                (letrec ((x7885
                                                                                                                          (posn
                                                                                                                           xc
                                                                                                                           yc))
                                                                                                                         (x7880
                                                                                                                          (letrec ((x7884
                                                                                                                                    (block
                                                                                                                                     x1
                                                                                                                                     y1
                                                                                                                                     color))
                                                                                                                                   (x7883
                                                                                                                                    (block
                                                                                                                                     x2
                                                                                                                                     y2
                                                                                                                                     color))
                                                                                                                                   (x7882
                                                                                                                                    (block
                                                                                                                                     x3
                                                                                                                                     y3
                                                                                                                                     color))
                                                                                                                                   (x7881
                                                                                                                                    (block
                                                                                                                                     x4
                                                                                                                                     y4
                                                                                                                                     color)))
                                                                                                                            (list
                                                                                                                             x7884
                                                                                                                             x7883
                                                                                                                             x7882
                                                                                                                             x7881))))
                                                                                                                  (tetra
                                                                                                                   x7885
                                                                                                                   x7880))))
                                                                                                        (tetra-move
                                                                                                         3
                                                                                                         0
                                                                                                         x7879))))
                                                                                              g7878)))
                                                                                         (touchdown
                                                                                          (lambda (w
                                                                                                   tetras)
                                                                                            (letrec ((g7886
                                                                                                      (letrec ((x7892
                                                                                                                (list-pick-random
                                                                                                                 tetras))
                                                                                                               (x7887
                                                                                                                (letrec ((x7888
                                                                                                                          (letrec ((x7890
                                                                                                                                    (letrec ((x7891
                                                                                                                                              (world-tetra
                                                                                                                                               w)))
                                                                                                                                      (tetra-blocks
                                                                                                                                       x7891)))
                                                                                                                                   (x7889
                                                                                                                                    (world-blocks
                                                                                                                                     w)))
                                                                                                                            (blocks-union
                                                                                                                             x7890
                                                                                                                             x7889))))
                                                                                                                  (eliminate-full-rows
                                                                                                                   x7888))))
                                                                                                        (world
                                                                                                         x7892
                                                                                                         x7887))))
                                                                                              g7886)))
                                                                                         (world-jump-down
                                                                                          (lambda (w)
                                                                                            (letrec ((g7893
                                                                                                      (if cnd
                                                                                                        (letrec ((g7894
                                                                                                                  w))
                                                                                                          g7894)
                                                                                                        (letrec ((g7895
                                                                                                                  (letrec ((x7896
                                                                                                                            (letrec ((x7898
                                                                                                                                      (letrec ((x7899
                                                                                                                                                (world-tetra
                                                                                                                                                 w)))
                                                                                                                                        (tetra-move
                                                                                                                                         0
                                                                                                                                         1
                                                                                                                                         x7899)))
                                                                                                                                     (x7897
                                                                                                                                      (world-blocks
                                                                                                                                       w)))
                                                                                                                              (world
                                                                                                                               x7898
                                                                                                                               x7897))))
                                                                                                                    (world-jump-down
                                                                                                                     x7896))))
                                                                                                          g7895))))
                                                                                              g7893)))
                                                                                         (landed-on-blocks?
                                                                                          (lambda (w)
                                                                                            (letrec ((g7900
                                                                                                      (letrec ((x7902
                                                                                                                (letrec ((x7903
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-move
                                                                                                                   0
                                                                                                                   1
                                                                                                                   x7903)))
                                                                                                               (x7901
                                                                                                                (world-blocks
                                                                                                                 w)))
                                                                                                        (tetra-overlaps-blocks?
                                                                                                         x7902
                                                                                                         x7901))))
                                                                                              g7900)))
                                                                                         (landed-on-floor?
                                                                                          (lambda (w)
                                                                                            (letrec ((g7904
                                                                                                      (letrec ((x7906
                                                                                                                (letrec ((x7907
                                                                                                                          (letrec ((x7908
                                                                                                                                    (world-tetra
                                                                                                                                     w)))
                                                                                                                            (tetra-blocks
                                                                                                                             x7908))))
                                                                                                                  (blocks-max-y
                                                                                                                   x7907)))
                                                                                                               (x7905
                                                                                                                (sub1
                                                                                                                 board-height)))
                                                                                                        (=
                                                                                                         x7906
                                                                                                         x7905))))
                                                                                              g7904)))
                                                                                         (landed?
                                                                                          (lambda (w)
                                                                                            (letrec ((g7909
                                                                                                      (letrec ((val7143
                                                                                                                (landed-on-blocks?
                                                                                                                 w)))
                                                                                                        (letrec ((g7910
                                                                                                                  (if val7143
                                                                                                                    val7143
                                                                                                                    (landed-on-floor?
                                                                                                                     w))))
                                                                                                          g7910))))
                                                                                              g7909)))
                                                                                         (next-world
                                                                                          (lambda (w
                                                                                                   tetras)
                                                                                            (letrec ((g7911
                                                                                                      (if cnd
                                                                                                        (letrec ((g7912
                                                                                                                  (touchdown
                                                                                                                   w
                                                                                                                   tetras)))
                                                                                                          g7912)
                                                                                                        (letrec ((g7913
                                                                                                                  (letrec ((x7915
                                                                                                                            (letrec ((x7916
                                                                                                                                      (world-tetra
                                                                                                                                       w)))
                                                                                                                              (tetra-move
                                                                                                                               0
                                                                                                                               1
                                                                                                                               x7916)))
                                                                                                                           (x7914
                                                                                                                            (world-blocks
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     x7915
                                                                                                                     x7914))))
                                                                                                          g7913))))
                                                                                              g7911)))
                                                                                         (try-new-tetra
                                                                                          (lambda (w
                                                                                                   new-tetra)
                                                                                            (letrec ((g7917
                                                                                                      (if cnd
                                                                                                        (letrec ((g7918
                                                                                                                  w))
                                                                                                          g7918)
                                                                                                        (letrec ((g7919
                                                                                                                  (letrec ((x7920
                                                                                                                            (world-blocks
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     new-tetra
                                                                                                                     x7920))))
                                                                                                          g7919))))
                                                                                              g7917)))
                                                                                         (world-move
                                                                                          (lambda (dx
                                                                                                   dy
                                                                                                   w)
                                                                                            (letrec ((g7921
                                                                                                      (letrec ((x7922
                                                                                                                (letrec ((x7923
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-move
                                                                                                                   dx
                                                                                                                   dy
                                                                                                                   x7923))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x7922))))
                                                                                              g7921)))
                                                                                         (world-rotate-ccw
                                                                                          (lambda (w)
                                                                                            (letrec ((g7924
                                                                                                      (letrec ((x7925
                                                                                                                (letrec ((x7926
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-rotate-ccw
                                                                                                                   x7926))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x7925))))
                                                                                              g7924)))
                                                                                         (world-rotate-cw
                                                                                          (lambda (w)
                                                                                            (letrec ((g7927
                                                                                                      (letrec ((x7928
                                                                                                                (letrec ((x7929
                                                                                                                          (world-tetra
                                                                                                                           w)))
                                                                                                                  (tetra-rotate-cw
                                                                                                                   x7929))))
                                                                                                        (try-new-tetra
                                                                                                         w
                                                                                                         x7928))))
                                                                                              g7927)))
                                                                                         (ghost-blocks
                                                                                          (lambda (w)
                                                                                            (letrec ((g7930
                                                                                                      (letrec ((x7931
                                                                                                                (letrec ((x7932
                                                                                                                          (letrec ((x7933
                                                                                                                                    (world-jump-down
                                                                                                                                     w)))
                                                                                                                            (world-tetra
                                                                                                                             x7933))))
                                                                                                                  (tetra-change-color
                                                                                                                   x7932
                                                                                                                   'gray))))
                                                                                                        (tetra-blocks
                                                                                                         x7931))))
                                                                                              g7930)))
                                                                                         (world-key-move
                                                                                          (lambda (w
                                                                                                   k)
                                                                                            (letrec ((g7934
                                                                                                      (if cnd
                                                                                                        (letrec ((g7935
                                                                                                                  (world-move
                                                                                                                   neg-1
                                                                                                                   0
                                                                                                                   w)))
                                                                                                          g7935)
                                                                                                        (if cnd
                                                                                                          (letrec ((g7936
                                                                                                                    (world-move
                                                                                                                     1
                                                                                                                     0
                                                                                                                     w)))
                                                                                                            g7936)
                                                                                                          (if cnd
                                                                                                            (letrec ((g7937
                                                                                                                      (world-jump-down
                                                                                                                       w)))
                                                                                                              g7937)
                                                                                                            (if cnd
                                                                                                              (letrec ((g7938
                                                                                                                        (world-rotate-ccw
                                                                                                                         w)))
                                                                                                                g7938)
                                                                                                              (if cnd
                                                                                                                (letrec ((g7939
                                                                                                                          (world-rotate-cw
                                                                                                                           w)))
                                                                                                                  g7939)
                                                                                                                (letrec ((g7940
                                                                                                                          w))
                                                                                                                  g7940))))))))
                                                                                              g7934))))
                                                                                  (letrec ((g7941
                                                                                            (letrec ((image
                                                                                                      (lambda ()
                                                                                                        (letrec ((g7942
                                                                                                                  (cons
                                                                                                                   'image
                                                                                                                   '())))
                                                                                                          g7942)))
                                                                                                     (image?
                                                                                                      (lambda (image7477)
                                                                                                        (letrec ((g7943
                                                                                                                  (letrec ((x7944
                                                                                                                            (car
                                                                                                                             image7477)))
                                                                                                                    (eq?
                                                                                                                     x7944
                                                                                                                     'image))))
                                                                                                          g7943)))
                                                                                                     (image
                                                                                                      (lambda ()
                                                                                                        (letrec ((g7945
                                                                                                                  (cons
                                                                                                                   'image
                                                                                                                   '())))
                                                                                                          g7945)))
                                                                                                     (image?
                                                                                                      (lambda (image7477)
                                                                                                        (letrec ((g7946
                                                                                                                  (letrec ((x7947
                                                                                                                            (car
                                                                                                                             image7477)))
                                                                                                                    (eq?
                                                                                                                     x7947
                                                                                                                     'image))))
                                                                                                          g7946)))
                                                                                                     (overlay
                                                                                                      (lambda (i₁
                                                                                                               i₂)
                                                                                                        (letrec ((g7948
                                                                                                                  (image)))
                                                                                                          g7948)))
                                                                                                     (circle
                                                                                                      (lambda (r
                                                                                                               m
                                                                                                               c)
                                                                                                        (letrec ((g7949
                                                                                                                  (image)))
                                                                                                          g7949)))
                                                                                                     (rectangle
                                                                                                      (lambda (w
                                                                                                               h
                                                                                                               m
                                                                                                               c)
                                                                                                        (letrec ((g7950
                                                                                                                  (image)))
                                                                                                          g7950)))
                                                                                                     (place-image
                                                                                                      (lambda (i₁
                                                                                                               r
                                                                                                               c
                                                                                                               i₂)
                                                                                                        (letrec ((g7951
                                                                                                                  (image)))
                                                                                                          g7951)))
                                                                                                     (empty-scene
                                                                                                      (lambda (w
                                                                                                               h)
                                                                                                        (letrec ((g7952
                                                                                                                  (image)))
                                                                                                          g7952)))
                                                                                                     (list-pick-random
                                                                                                      (lambda (xs)
                                                                                                        (letrec ((g7953
                                                                                                                  (if cnd
                                                                                                                    (letrec ((g7954
                                                                                                                              (car
                                                                                                                               xs)))
                                                                                                                      g7954)
                                                                                                                    (letrec ((g7955
                                                                                                                              (letrec ((x7956
                                                                                                                                        (cdr
                                                                                                                                         xs)))
                                                                                                                                (list-pick-random
                                                                                                                                 x7956))))
                                                                                                                      g7955))))
                                                                                                          g7953)))
                                                                                                     (neg-1
                                                                                                      (random
                                                                                                       10))
                                                                                                     (world->image
                                                                                                      (lambda (w)
                                                                                                        (letrec ((g7957
                                                                                                                  (letrec ((x7961
                                                                                                                            (letrec ((x7962
                                                                                                                                      (letrec ((x7966
                                                                                                                                                (letrec ((x7967
                                                                                                                                                          (world-tetra
                                                                                                                                                           w)))
                                                                                                                                                  (tetra-blocks
                                                                                                                                                   x7967)))
                                                                                                                                               (x7963
                                                                                                                                                (letrec ((x7965
                                                                                                                                                          (ghost-blocks
                                                                                                                                                           w))
                                                                                                                                                         (x7964
                                                                                                                                                          (world-blocks
                                                                                                                                                           w)))
                                                                                                                                                  (append
                                                                                                                                                   x7965
                                                                                                                                                   x7964))))
                                                                                                                                        (append
                                                                                                                                         x7966
                                                                                                                                         x7963))))
                                                                                                                              (blocks->image
                                                                                                                               x7962)))
                                                                                                                           (x7958
                                                                                                                            (letrec ((x7960
                                                                                                                                      (*
                                                                                                                                       board-width
                                                                                                                                       block-size))
                                                                                                                                     (x7959
                                                                                                                                      (*
                                                                                                                                       board-height
                                                                                                                                       block-size)))
                                                                                                                              (empty-scene
                                                                                                                               x7960
                                                                                                                               x7959))))
                                                                                                                    (place-image
                                                                                                                     x7961
                                                                                                                     0
                                                                                                                     0
                                                                                                                     x7958))))
                                                                                                          g7957)))
                                                                                                     (blocks->image
                                                                                                      (lambda (bs)
                                                                                                        (letrec ((g7968
                                                                                                                  (letrec ((x7974
                                                                                                                            (letrec ((x7978
                                                                                                                                      (b
                                                                                                                                       img))
                                                                                                                                     (x7975
                                                                                                                                      (if cnd
                                                                                                                                        (letrec ((g7976
                                                                                                                                                  (place-block
                                                                                                                                                   b
                                                                                                                                                   img)))
                                                                                                                                          g7976)
                                                                                                                                        (letrec ((g7977
                                                                                                                                                  img))
                                                                                                                                          g7977))))
                                                                                                                              (λ x7978
                                                                                                                                x7975)))
                                                                                                                           (x7969
                                                                                                                            (letrec ((x7972
                                                                                                                                      (letrec ((x7973
                                                                                                                                                (*
                                                                                                                                                 board-width
                                                                                                                                                 block-size)))
                                                                                                                                        (add1
                                                                                                                                         x7973)))
                                                                                                                                     (x7970
                                                                                                                                      (letrec ((x7971
                                                                                                                                                (*
                                                                                                                                                 board-height
                                                                                                                                                 block-size)))
                                                                                                                                        (add1
                                                                                                                                         x7971))))
                                                                                                                              (empty-scene
                                                                                                                               x7972
                                                                                                                               x7970))))
                                                                                                                    (foldr
                                                                                                                     x7974
                                                                                                                     x7969
                                                                                                                     bs))))
                                                                                                          g7968)))
                                                                                                     (block->image
                                                                                                      (lambda (b)
                                                                                                        (letrec ((g7979
                                                                                                                  (letrec ((x7983
                                                                                                                            (letrec ((x7986
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x7985
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x7984
                                                                                                                                      (block-color
                                                                                                                                       b)))
                                                                                                                              (rectangle
                                                                                                                               x7986
                                                                                                                               x7985
                                                                                                                               'solid
                                                                                                                               x7984)))
                                                                                                                           (x7980
                                                                                                                            (letrec ((x7982
                                                                                                                                      (add1
                                                                                                                                       block-size))
                                                                                                                                     (x7981
                                                                                                                                      (add1
                                                                                                                                       block-size)))
                                                                                                                              (rectangle
                                                                                                                               x7982
                                                                                                                               x7981
                                                                                                                               'outline
                                                                                                                               'black))))
                                                                                                                    (overlay
                                                                                                                     x7983
                                                                                                                     x7980))))
                                                                                                          g7979)))
                                                                                                     (place-block
                                                                                                      (lambda (b
                                                                                                               scene)
                                                                                                        (letrec ((g7987
                                                                                                                  (letrec ((x7996
                                                                                                                            (block->image
                                                                                                                             b))
                                                                                                                           (x7992
                                                                                                                            (letrec ((x7994
                                                                                                                                      (letrec ((x7995
                                                                                                                                                (block-x
                                                                                                                                                 b)))
                                                                                                                                        (*
                                                                                                                                         x7995
                                                                                                                                         block-size)))
                                                                                                                                     (x7993
                                                                                                                                      (/
                                                                                                                                       block-size
                                                                                                                                       2)))
                                                                                                                              (+
                                                                                                                               x7994
                                                                                                                               x7993)))
                                                                                                                           (x7988
                                                                                                                            (letrec ((x7990
                                                                                                                                      (letrec ((x7991
                                                                                                                                                (block-y
                                                                                                                                                 b)))
                                                                                                                                        (*
                                                                                                                                         x7991
                                                                                                                                         block-size)))
                                                                                                                                     (x7989
                                                                                                                                      (/
                                                                                                                                       block-size
                                                                                                                                       2)))
                                                                                                                              (+
                                                                                                                               x7990
                                                                                                                               x7989))))
                                                                                                                    (place-image
                                                                                                                     x7996
                                                                                                                     x7992
                                                                                                                     x7988
                                                                                                                     scene))))
                                                                                                          g7987)))
                                                                                                     (world0
                                                                                                      (lambda (tetras)
                                                                                                        (letrec ((g7997
                                                                                                                  (letrec ((x7998
                                                                                                                            (list-pick-random
                                                                                                                             tetras)))
                                                                                                                    (world
                                                                                                                     x7998
                                                                                                                     null))))
                                                                                                          g7997))))
                                                                                              (letrec ((g7999
                                                                                                        (letrec ((g8000
                                                                                                                  (letrec ((g8001
                                                                                                                            (letrec ((x8064
                                                                                                                                      ((lambda (j7240
                                                                                                                                                k7241
                                                                                                                                                f7242)
                                                                                                                                         (lambda (g7238
                                                                                                                                                  g7239)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7240
                                                                                                                                            k7241
                                                                                                                                            (f7242
                                                                                                                                             (POSN/C
                                                                                                                                              j7240
                                                                                                                                              k7241
                                                                                                                                              g7238)
                                                                                                                                             (POSN/C
                                                                                                                                              j7240
                                                                                                                                              k7241
                                                                                                                                              g7239)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       posn=?))
                                                                                                                                     (x8059
                                                                                                                                      (letrec ((x8060
                                                                                                                                                (letrec ((x8063
                                                                                                                                                          (input))
                                                                                                                                                         (x8061
                                                                                                                                                          (letrec ((x8062
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8062
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8063
                                                                                                                                                   x8061))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8060)))
                                                                                                                                     (x8054
                                                                                                                                      (letrec ((x8055
                                                                                                                                                (letrec ((x8058
                                                                                                                                                          (input))
                                                                                                                                                         (x8056
                                                                                                                                                          (letrec ((x8057
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8057
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8058
                                                                                                                                                   x8056))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8055))))
                                                                                                                              (x8064
                                                                                                                               x8059
                                                                                                                               x8054)))
                                                                                                                           (g8002
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             COLOR/C))
                                                                                                                           (g8003
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             POSN/C))
                                                                                                                           (g8004
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             BLOCK/C))
                                                                                                                           (g8005
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             TETRA/C))
                                                                                                                           (g8006
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             WORLD/C))
                                                                                                                           (g8007
                                                                                                                            (any/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             BSET/C))
                                                                                                                           (g8008
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             block-size))
                                                                                                                           (g8009
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             board-width))
                                                                                                                           (g8010
                                                                                                                            (integer?
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             board-height))
                                                                                                                           (g8011
                                                                                                                            (letrec ((x8077
                                                                                                                                      ((lambda (j7245
                                                                                                                                                k7246
                                                                                                                                                f7247)
                                                                                                                                         (lambda (g7243
                                                                                                                                                  g7244)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7245
                                                                                                                                            k7246
                                                                                                                                            (f7247
                                                                                                                                             (POSN/C
                                                                                                                                              j7245
                                                                                                                                              k7246
                                                                                                                                              g7243)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7245
                                                                                                                                              k7246
                                                                                                                                              g7244)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-rotate-ccw))
                                                                                                                                     (x8072
                                                                                                                                      (letrec ((x8073
                                                                                                                                                (letrec ((x8076
                                                                                                                                                          (input))
                                                                                                                                                         (x8074
                                                                                                                                                          (letrec ((x8075
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8075
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8076
                                                                                                                                                   x8074))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8073)))
                                                                                                                                     (x8065
                                                                                                                                      (letrec ((x8066
                                                                                                                                                (letrec ((x8071
                                                                                                                                                          (input))
                                                                                                                                                         (x8067
                                                                                                                                                          (letrec ((x8070
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8068
                                                                                                                                                                    (letrec ((x8069
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8069
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8070
                                                                                                                                                             x8068))))
                                                                                                                                                  (cons
                                                                                                                                                   x8071
                                                                                                                                                   x8067))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8066))))
                                                                                                                              (x8077
                                                                                                                               x8072
                                                                                                                               x8065)))
                                                                                                                           (g8012
                                                                                                                            (letrec ((x8090
                                                                                                                                      ((lambda (j7250
                                                                                                                                                k7251
                                                                                                                                                f7252)
                                                                                                                                         (lambda (g7248
                                                                                                                                                  g7249)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7250
                                                                                                                                            k7251
                                                                                                                                            (f7252
                                                                                                                                             (POSN/C
                                                                                                                                              j7250
                                                                                                                                              k7251
                                                                                                                                              g7248)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7250
                                                                                                                                              k7251
                                                                                                                                              g7249)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-rotate-cw))
                                                                                                                                     (x8085
                                                                                                                                      (letrec ((x8086
                                                                                                                                                (letrec ((x8089
                                                                                                                                                          (input))
                                                                                                                                                         (x8087
                                                                                                                                                          (letrec ((x8088
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8088
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8089
                                                                                                                                                   x8087))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8086)))
                                                                                                                                     (x8078
                                                                                                                                      (letrec ((x8079
                                                                                                                                                (letrec ((x8084
                                                                                                                                                          (input))
                                                                                                                                                         (x8080
                                                                                                                                                          (letrec ((x8083
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8081
                                                                                                                                                                    (letrec ((x8082
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8082
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8083
                                                                                                                                                             x8081))))
                                                                                                                                                  (cons
                                                                                                                                                   x8084
                                                                                                                                                   x8080))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8079))))
                                                                                                                              (x8090
                                                                                                                               x8085
                                                                                                                               x8078)))
                                                                                                                           (g8013
                                                                                                                            (letrec ((x8105
                                                                                                                                      ((lambda (j7255
                                                                                                                                                k7256
                                                                                                                                                f7257)
                                                                                                                                         (lambda (g7253
                                                                                                                                                  g7254)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7255
                                                                                                                                            k7256
                                                                                                                                            (f7257
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7255
                                                                                                                                              k7256
                                                                                                                                              g7253)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7255
                                                                                                                                              k7256
                                                                                                                                              g7254)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block=?))
                                                                                                                                     (x8098
                                                                                                                                      (letrec ((x8099
                                                                                                                                                (letrec ((x8104
                                                                                                                                                          (input))
                                                                                                                                                         (x8100
                                                                                                                                                          (letrec ((x8103
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8101
                                                                                                                                                                    (letrec ((x8102
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8102
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8103
                                                                                                                                                             x8101))))
                                                                                                                                                  (cons
                                                                                                                                                   x8104
                                                                                                                                                   x8100))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8099)))
                                                                                                                                     (x8091
                                                                                                                                      (letrec ((x8092
                                                                                                                                                (letrec ((x8097
                                                                                                                                                          (input))
                                                                                                                                                         (x8093
                                                                                                                                                          (letrec ((x8096
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8094
                                                                                                                                                                    (letrec ((x8095
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8095
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8096
                                                                                                                                                             x8094))))
                                                                                                                                                  (cons
                                                                                                                                                   x8097
                                                                                                                                                   x8093))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8092))))
                                                                                                                              (x8105
                                                                                                                               x8098
                                                                                                                               x8091)))
                                                                                                                           (g8014
                                                                                                                            (letrec ((x8115
                                                                                                                                      ((lambda (j7261
                                                                                                                                                k7262
                                                                                                                                                f7263)
                                                                                                                                         (lambda (g7258
                                                                                                                                                  g7259
                                                                                                                                                  g7260)
                                                                                                                                           (BLOCK/C
                                                                                                                                            j7261
                                                                                                                                            k7262
                                                                                                                                            (f7263
                                                                                                                                             (real?/c
                                                                                                                                              j7261
                                                                                                                                              k7262
                                                                                                                                              g7258)
                                                                                                                                             (real?/c
                                                                                                                                              j7261
                                                                                                                                              k7262
                                                                                                                                              g7259)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7261
                                                                                                                                              k7262
                                                                                                                                              g7260)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block-move))
                                                                                                                                     (x8114
                                                                                                                                      (input))
                                                                                                                                     (x8113
                                                                                                                                      (input))
                                                                                                                                     (x8106
                                                                                                                                      (letrec ((x8107
                                                                                                                                                (letrec ((x8112
                                                                                                                                                          (input))
                                                                                                                                                         (x8108
                                                                                                                                                          (letrec ((x8111
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8109
                                                                                                                                                                    (letrec ((x8110
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8110
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8111
                                                                                                                                                             x8109))))
                                                                                                                                                  (cons
                                                                                                                                                   x8112
                                                                                                                                                   x8108))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8107))))
                                                                                                                              (x8115
                                                                                                                               x8114
                                                                                                                               x8113
                                                                                                                               x8106)))
                                                                                                                           (g8015
                                                                                                                            (letrec ((x8124
                                                                                                                                      ((lambda (j7266
                                                                                                                                                k7267
                                                                                                                                                f7268)
                                                                                                                                         (lambda (g7264
                                                                                                                                                  g7265)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7266
                                                                                                                                            k7267
                                                                                                                                            (f7268
                                                                                                                                             (BSET/C
                                                                                                                                              j7266
                                                                                                                                              k7267
                                                                                                                                              g7264)
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7266
                                                                                                                                              k7267
                                                                                                                                              g7265)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-contains?))
                                                                                                                                     (x8123
                                                                                                                                      (input))
                                                                                                                                     (x8116
                                                                                                                                      (letrec ((x8117
                                                                                                                                                (letrec ((x8122
                                                                                                                                                          (input))
                                                                                                                                                         (x8118
                                                                                                                                                          (letrec ((x8121
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8119
                                                                                                                                                                    (letrec ((x8120
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8120
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8121
                                                                                                                                                             x8119))))
                                                                                                                                                  (cons
                                                                                                                                                   x8122
                                                                                                                                                   x8118))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8117))))
                                                                                                                              (x8124
                                                                                                                               x8123
                                                                                                                               x8116)))
                                                                                                                           (g8016
                                                                                                                            (letrec ((x8127
                                                                                                                                      ((lambda (j7271
                                                                                                                                                k7272
                                                                                                                                                f7273)
                                                                                                                                         (lambda (g7269
                                                                                                                                                  g7270)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7271
                                                                                                                                            k7272
                                                                                                                                            (f7273
                                                                                                                                             (BSET/C
                                                                                                                                              j7271
                                                                                                                                              k7272
                                                                                                                                              g7269)
                                                                                                                                             (BSET/C
                                                                                                                                              j7271
                                                                                                                                              k7272
                                                                                                                                              g7270)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks=?))
                                                                                                                                     (x8126
                                                                                                                                      (input))
                                                                                                                                     (x8125
                                                                                                                                      (input)))
                                                                                                                              (x8127
                                                                                                                               x8126
                                                                                                                               x8125)))
                                                                                                                           (g8017
                                                                                                                            (letrec ((x8130
                                                                                                                                      ((lambda (j7276
                                                                                                                                                k7277
                                                                                                                                                f7278)
                                                                                                                                         (lambda (g7274
                                                                                                                                                  g7275)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7276
                                                                                                                                            k7277
                                                                                                                                            (f7278
                                                                                                                                             (BSET/C
                                                                                                                                              j7276
                                                                                                                                              k7277
                                                                                                                                              g7274)
                                                                                                                                             (BSET/C
                                                                                                                                              j7276
                                                                                                                                              k7277
                                                                                                                                              g7275)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-subset?))
                                                                                                                                     (x8129
                                                                                                                                      (input))
                                                                                                                                     (x8128
                                                                                                                                      (input)))
                                                                                                                              (x8130
                                                                                                                               x8129
                                                                                                                               x8128)))
                                                                                                                           (g8018
                                                                                                                            (letrec ((x8133
                                                                                                                                      ((lambda (j7281
                                                                                                                                                k7282
                                                                                                                                                f7283)
                                                                                                                                         (lambda (g7279
                                                                                                                                                  g7280)
                                                                                                                                           (BSET/C
                                                                                                                                            j7281
                                                                                                                                            k7282
                                                                                                                                            (f7283
                                                                                                                                             (BSET/C
                                                                                                                                              j7281
                                                                                                                                              k7282
                                                                                                                                              g7279)
                                                                                                                                             (BSET/C
                                                                                                                                              j7281
                                                                                                                                              k7282
                                                                                                                                              g7280)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-intersect))
                                                                                                                                     (x8132
                                                                                                                                      (input))
                                                                                                                                     (x8131
                                                                                                                                      (input)))
                                                                                                                              (x8133
                                                                                                                               x8132
                                                                                                                               x8131)))
                                                                                                                           (g8019
                                                                                                                            (letrec ((x8135
                                                                                                                                      ((lambda (j7285
                                                                                                                                                k7286
                                                                                                                                                f7287)
                                                                                                                                         (lambda (g7284)
                                                                                                                                           (real?/c
                                                                                                                                            j7285
                                                                                                                                            k7286
                                                                                                                                            (f7287
                                                                                                                                             (BSET/C
                                                                                                                                              j7285
                                                                                                                                              k7286
                                                                                                                                              g7284)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-count))
                                                                                                                                     (x8134
                                                                                                                                      (input)))
                                                                                                                              (x8135
                                                                                                                               x8134)))
                                                                                                                           (g8020
                                                                                                                            (letrec ((x8137
                                                                                                                                      ((lambda (j7289
                                                                                                                                                k7290
                                                                                                                                                f7291)
                                                                                                                                         (lambda (g7288)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7289
                                                                                                                                            k7290
                                                                                                                                            (f7291
                                                                                                                                             (BSET/C
                                                                                                                                              j7289
                                                                                                                                              k7290
                                                                                                                                              g7288)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-overflow?))
                                                                                                                                     (x8136
                                                                                                                                      (input)))
                                                                                                                              (x8137
                                                                                                                               x8136)))
                                                                                                                           (g8021
                                                                                                                            (letrec ((x8141
                                                                                                                                      ((lambda (j7295
                                                                                                                                                k7296
                                                                                                                                                f7297)
                                                                                                                                         (lambda (g7292
                                                                                                                                                  g7293
                                                                                                                                                  g7294)
                                                                                                                                           (BSET/C
                                                                                                                                            j7295
                                                                                                                                            k7296
                                                                                                                                            (f7297
                                                                                                                                             (real?/c
                                                                                                                                              j7295
                                                                                                                                              k7296
                                                                                                                                              g7292)
                                                                                                                                             (real?/c
                                                                                                                                              j7295
                                                                                                                                              k7296
                                                                                                                                              g7293)
                                                                                                                                             (BSET/C
                                                                                                                                              j7295
                                                                                                                                              k7296
                                                                                                                                              g7294)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-move))
                                                                                                                                     (x8140
                                                                                                                                      (input))
                                                                                                                                     (x8139
                                                                                                                                      (input))
                                                                                                                                     (x8138
                                                                                                                                      (input)))
                                                                                                                              (x8141
                                                                                                                               x8140
                                                                                                                               x8139
                                                                                                                               x8138)))
                                                                                                                           (g8022
                                                                                                                            (letrec ((x8148
                                                                                                                                      ((lambda (j7300
                                                                                                                                                k7301
                                                                                                                                                f7302)
                                                                                                                                         (lambda (g7298
                                                                                                                                                  g7299)
                                                                                                                                           (BSET/C
                                                                                                                                            j7300
                                                                                                                                            k7301
                                                                                                                                            (f7302
                                                                                                                                             (POSN/C
                                                                                                                                              j7300
                                                                                                                                              k7301
                                                                                                                                              g7298)
                                                                                                                                             (BSET/C
                                                                                                                                              j7300
                                                                                                                                              k7301
                                                                                                                                              g7299)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-rotate-cw))
                                                                                                                                     (x8143
                                                                                                                                      (letrec ((x8144
                                                                                                                                                (letrec ((x8147
                                                                                                                                                          (input))
                                                                                                                                                         (x8145
                                                                                                                                                          (letrec ((x8146
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8146
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8147
                                                                                                                                                   x8145))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8144)))
                                                                                                                                     (x8142
                                                                                                                                      (input)))
                                                                                                                              (x8148
                                                                                                                               x8143
                                                                                                                               x8142)))
                                                                                                                           (g8023
                                                                                                                            (letrec ((x8155
                                                                                                                                      ((lambda (j7305
                                                                                                                                                k7306
                                                                                                                                                f7307)
                                                                                                                                         (lambda (g7303
                                                                                                                                                  g7304)
                                                                                                                                           (BSET/C
                                                                                                                                            j7305
                                                                                                                                            k7306
                                                                                                                                            (f7307
                                                                                                                                             (POSN/C
                                                                                                                                              j7305
                                                                                                                                              k7306
                                                                                                                                              g7303)
                                                                                                                                             (BSET/C
                                                                                                                                              j7305
                                                                                                                                              k7306
                                                                                                                                              g7304)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-rotate-ccw))
                                                                                                                                     (x8150
                                                                                                                                      (letrec ((x8151
                                                                                                                                                (letrec ((x8154
                                                                                                                                                          (input))
                                                                                                                                                         (x8152
                                                                                                                                                          (letrec ((x8153
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8153
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8154
                                                                                                                                                   x8152))))
                                                                                                                                        (cons
                                                                                                                                         'posn
                                                                                                                                         x8151)))
                                                                                                                                     (x8149
                                                                                                                                      (input)))
                                                                                                                              (x8155
                                                                                                                               x8150
                                                                                                                               x8149)))
                                                                                                                           (g8024
                                                                                                                            (letrec ((x8158
                                                                                                                                      ((lambda (j7310
                                                                                                                                                k7311
                                                                                                                                                f7312)
                                                                                                                                         (lambda (g7308
                                                                                                                                                  g7309)
                                                                                                                                           (BSET/C
                                                                                                                                            j7310
                                                                                                                                            k7311
                                                                                                                                            (f7312
                                                                                                                                             (BSET/C
                                                                                                                                              j7310
                                                                                                                                              k7311
                                                                                                                                              g7308)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7310
                                                                                                                                              k7311
                                                                                                                                              g7309)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-change-color))
                                                                                                                                     (x8157
                                                                                                                                      (input))
                                                                                                                                     (x8156
                                                                                                                                      (input)))
                                                                                                                              (x8158
                                                                                                                               x8157
                                                                                                                               x8156)))
                                                                                                                           (g8025
                                                                                                                            (letrec ((x8161
                                                                                                                                      ((lambda (j7315
                                                                                                                                                k7316
                                                                                                                                                f7317)
                                                                                                                                         (lambda (g7313
                                                                                                                                                  g7314)
                                                                                                                                           (BSET/C
                                                                                                                                            j7315
                                                                                                                                            k7316
                                                                                                                                            (f7317
                                                                                                                                             (BSET/C
                                                                                                                                              j7315
                                                                                                                                              k7316
                                                                                                                                              g7313)
                                                                                                                                             (real?/c
                                                                                                                                              j7315
                                                                                                                                              k7316
                                                                                                                                              g7314)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-row))
                                                                                                                                     (x8160
                                                                                                                                      (input))
                                                                                                                                     (x8159
                                                                                                                                      (input)))
                                                                                                                              (x8161
                                                                                                                               x8160
                                                                                                                               x8159)))
                                                                                                                           (g8026
                                                                                                                            (letrec ((x8164
                                                                                                                                      ((lambda (j7320
                                                                                                                                                k7321
                                                                                                                                                f7322)
                                                                                                                                         (lambda (g7318
                                                                                                                                                  g7319)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7320
                                                                                                                                            k7321
                                                                                                                                            (f7322
                                                                                                                                             (BSET/C
                                                                                                                                              j7320
                                                                                                                                              k7321
                                                                                                                                              g7318)
                                                                                                                                             (real?/c
                                                                                                                                              j7320
                                                                                                                                              k7321
                                                                                                                                              g7319)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       full-row?))
                                                                                                                                     (x8163
                                                                                                                                      (input))
                                                                                                                                     (x8162
                                                                                                                                      (input)))
                                                                                                                              (x8164
                                                                                                                               x8163
                                                                                                                               x8162)))
                                                                                                                           (g8027
                                                                                                                            (letrec ((x8167
                                                                                                                                      ((lambda (j7325
                                                                                                                                                k7326
                                                                                                                                                f7327)
                                                                                                                                         (lambda (g7323
                                                                                                                                                  g7324)
                                                                                                                                           (BSET/C
                                                                                                                                            j7325
                                                                                                                                            k7326
                                                                                                                                            (f7327
                                                                                                                                             (BSET/C
                                                                                                                                              j7325
                                                                                                                                              k7326
                                                                                                                                              g7323)
                                                                                                                                             (BSET/C
                                                                                                                                              j7325
                                                                                                                                              k7326
                                                                                                                                              g7324)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-union))
                                                                                                                                     (x8166
                                                                                                                                      (input))
                                                                                                                                     (x8165
                                                                                                                                      (input)))
                                                                                                                              (x8167
                                                                                                                               x8166
                                                                                                                               x8165)))
                                                                                                                           (g8028
                                                                                                                            (letrec ((x8169
                                                                                                                                      ((lambda (j7329
                                                                                                                                                k7330
                                                                                                                                                f7331)
                                                                                                                                         (lambda (g7328)
                                                                                                                                           (real?/c
                                                                                                                                            j7329
                                                                                                                                            k7330
                                                                                                                                            (f7331
                                                                                                                                             (BSET/C
                                                                                                                                              j7329
                                                                                                                                              k7330
                                                                                                                                              g7328)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-max-x))
                                                                                                                                     (x8168
                                                                                                                                      (input)))
                                                                                                                              (x8169
                                                                                                                               x8168)))
                                                                                                                           (g8029
                                                                                                                            (letrec ((x8171
                                                                                                                                      ((lambda (j7333
                                                                                                                                                k7334
                                                                                                                                                f7335)
                                                                                                                                         (lambda (g7332)
                                                                                                                                           (real?/c
                                                                                                                                            j7333
                                                                                                                                            k7334
                                                                                                                                            (f7335
                                                                                                                                             (BSET/C
                                                                                                                                              j7333
                                                                                                                                              k7334
                                                                                                                                              g7332)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-min-x))
                                                                                                                                     (x8170
                                                                                                                                      (input)))
                                                                                                                              (x8171
                                                                                                                               x8170)))
                                                                                                                           (g8030
                                                                                                                            (letrec ((x8173
                                                                                                                                      ((lambda (j7337
                                                                                                                                                k7338
                                                                                                                                                f7339)
                                                                                                                                         (lambda (g7336)
                                                                                                                                           (real?/c
                                                                                                                                            j7337
                                                                                                                                            k7338
                                                                                                                                            (f7339
                                                                                                                                             (BSET/C
                                                                                                                                              j7337
                                                                                                                                              k7338
                                                                                                                                              g7336)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks-max-y))
                                                                                                                                     (x8172
                                                                                                                                      (input)))
                                                                                                                              (x8173
                                                                                                                               x8172)))
                                                                                                                           (g8031
                                                                                                                            (letrec ((x8175
                                                                                                                                      ((lambda (j7341
                                                                                                                                                k7342
                                                                                                                                                f7343)
                                                                                                                                         (lambda (g7340)
                                                                                                                                           (BSET/C
                                                                                                                                            j7341
                                                                                                                                            k7342
                                                                                                                                            (f7343
                                                                                                                                             (BSET/C
                                                                                                                                              j7341
                                                                                                                                              k7342
                                                                                                                                              g7340)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       eliminate-full-rows))
                                                                                                                                     (x8174
                                                                                                                                      (input)))
                                                                                                                              (x8175
                                                                                                                               x8174)))
                                                                                                                           (g8032
                                                                                                                            (letrec ((x8187
                                                                                                                                      ((lambda (j7347
                                                                                                                                                k7348
                                                                                                                                                f7349)
                                                                                                                                         (lambda (g7344
                                                                                                                                                  g7345
                                                                                                                                                  g7346)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7347
                                                                                                                                            k7348
                                                                                                                                            (f7349
                                                                                                                                             (integer?/c
                                                                                                                                              j7347
                                                                                                                                              k7348
                                                                                                                                              g7344)
                                                                                                                                             (integer?/c
                                                                                                                                              j7347
                                                                                                                                              k7348
                                                                                                                                              g7345)
                                                                                                                                             (TETRA/C
                                                                                                                                              j7347
                                                                                                                                              k7348
                                                                                                                                              g7346)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-move))
                                                                                                                                     (x8186
                                                                                                                                      (input))
                                                                                                                                     (x8185
                                                                                                                                      (input))
                                                                                                                                     (x8176
                                                                                                                                      (letrec ((x8177
                                                                                                                                                (letrec ((x8180
                                                                                                                                                          (letrec ((x8181
                                                                                                                                                                    (letrec ((x8184
                                                                                                                                                                              (input))
                                                                                                                                                                             (x8182
                                                                                                                                                                              (letrec ((x8183
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8183
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8184
                                                                                                                                                                       x8182))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x8181)))
                                                                                                                                                         (x8178
                                                                                                                                                          (letrec ((x8179
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8179
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8180
                                                                                                                                                   x8178))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x8177))))
                                                                                                                              (x8187
                                                                                                                               x8186
                                                                                                                               x8185
                                                                                                                               x8176)))
                                                                                                                           (g8033
                                                                                                                            (letrec ((x8197
                                                                                                                                      ((lambda (j7351
                                                                                                                                                k7352
                                                                                                                                                f7353)
                                                                                                                                         (lambda (g7350)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7351
                                                                                                                                            k7352
                                                                                                                                            (f7353
                                                                                                                                             (TETRA/C
                                                                                                                                              j7351
                                                                                                                                              k7352
                                                                                                                                              g7350)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-rotate-ccw))
                                                                                                                                     (x8188
                                                                                                                                      (letrec ((x8189
                                                                                                                                                (letrec ((x8192
                                                                                                                                                          (letrec ((x8193
                                                                                                                                                                    (letrec ((x8196
                                                                                                                                                                              (input))
                                                                                                                                                                             (x8194
                                                                                                                                                                              (letrec ((x8195
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8195
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8196
                                                                                                                                                                       x8194))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x8193)))
                                                                                                                                                         (x8190
                                                                                                                                                          (letrec ((x8191
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8191
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8192
                                                                                                                                                   x8190))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x8189))))
                                                                                                                              (x8197
                                                                                                                               x8188)))
                                                                                                                           (g8034
                                                                                                                            (letrec ((x8207
                                                                                                                                      ((lambda (j7355
                                                                                                                                                k7356
                                                                                                                                                f7357)
                                                                                                                                         (lambda (g7354)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7355
                                                                                                                                            k7356
                                                                                                                                            (f7357
                                                                                                                                             (TETRA/C
                                                                                                                                              j7355
                                                                                                                                              k7356
                                                                                                                                              g7354)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-rotate-cw))
                                                                                                                                     (x8198
                                                                                                                                      (letrec ((x8199
                                                                                                                                                (letrec ((x8202
                                                                                                                                                          (letrec ((x8203
                                                                                                                                                                    (letrec ((x8206
                                                                                                                                                                              (input))
                                                                                                                                                                             (x8204
                                                                                                                                                                              (letrec ((x8205
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8205
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8206
                                                                                                                                                                       x8204))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x8203)))
                                                                                                                                                         (x8200
                                                                                                                                                          (letrec ((x8201
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8201
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8202
                                                                                                                                                   x8200))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x8199))))
                                                                                                                              (x8207
                                                                                                                               x8198)))
                                                                                                                           (g8035
                                                                                                                            (letrec ((x8218
                                                                                                                                      ((lambda (j7360
                                                                                                                                                k7361
                                                                                                                                                f7362)
                                                                                                                                         (lambda (g7358
                                                                                                                                                  g7359)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7360
                                                                                                                                            k7361
                                                                                                                                            (f7362
                                                                                                                                             (TETRA/C
                                                                                                                                              j7360
                                                                                                                                              k7361
                                                                                                                                              g7358)
                                                                                                                                             (BSET/C
                                                                                                                                              j7360
                                                                                                                                              k7361
                                                                                                                                              g7359)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-overlaps-blocks?))
                                                                                                                                     (x8209
                                                                                                                                      (letrec ((x8210
                                                                                                                                                (letrec ((x8213
                                                                                                                                                          (letrec ((x8214
                                                                                                                                                                    (letrec ((x8217
                                                                                                                                                                              (input))
                                                                                                                                                                             (x8215
                                                                                                                                                                              (letrec ((x8216
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8216
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8217
                                                                                                                                                                       x8215))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x8214)))
                                                                                                                                                         (x8211
                                                                                                                                                          (letrec ((x8212
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8212
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8213
                                                                                                                                                   x8211))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x8210)))
                                                                                                                                     (x8208
                                                                                                                                      (input)))
                                                                                                                              (x8218
                                                                                                                               x8209
                                                                                                                               x8208)))
                                                                                                                           (g8036
                                                                                                                            (letrec ((x8230
                                                                                                                                      ((lambda (j7374
                                                                                                                                                k7375
                                                                                                                                                f7376)
                                                                                                                                         (lambda (g7363
                                                                                                                                                  g7364
                                                                                                                                                  g7365
                                                                                                                                                  g7366
                                                                                                                                                  g7367
                                                                                                                                                  g7368
                                                                                                                                                  g7369
                                                                                                                                                  g7370
                                                                                                                                                  g7371
                                                                                                                                                  g7372
                                                                                                                                                  g7373)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7374
                                                                                                                                            k7375
                                                                                                                                            (f7376
                                                                                                                                             (COLOR/C
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7363)
                                                                                                                                             (real?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7364)
                                                                                                                                             (real?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7365)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7366)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7367)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7368)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7369)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7370)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7371)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7372)
                                                                                                                                             (integer?/c
                                                                                                                                              j7374
                                                                                                                                              k7375
                                                                                                                                              g7373)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       build-tetra-blocks))
                                                                                                                                     (x8229
                                                                                                                                      (input))
                                                                                                                                     (x8228
                                                                                                                                      (input))
                                                                                                                                     (x8227
                                                                                                                                      (input))
                                                                                                                                     (x8226
                                                                                                                                      (input))
                                                                                                                                     (x8225
                                                                                                                                      (input))
                                                                                                                                     (x8224
                                                                                                                                      (input))
                                                                                                                                     (x8223
                                                                                                                                      (input))
                                                                                                                                     (x8222
                                                                                                                                      (input))
                                                                                                                                     (x8221
                                                                                                                                      (input))
                                                                                                                                     (x8220
                                                                                                                                      (input))
                                                                                                                                     (x8219
                                                                                                                                      (input)))
                                                                                                                              (x8230
                                                                                                                               x8229
                                                                                                                               x8228
                                                                                                                               x8227
                                                                                                                               x8226
                                                                                                                               x8225
                                                                                                                               x8224
                                                                                                                               x8223
                                                                                                                               x8222
                                                                                                                               x8221
                                                                                                                               x8220
                                                                                                                               x8219)))
                                                                                                                           (g8037
                                                                                                                            (letrec ((x8241
                                                                                                                                      ((lambda (j7379
                                                                                                                                                k7380
                                                                                                                                                f7381)
                                                                                                                                         (lambda (g7377
                                                                                                                                                  g7378)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7379
                                                                                                                                            k7380
                                                                                                                                            (f7381
                                                                                                                                             (TETRA/C
                                                                                                                                              j7379
                                                                                                                                              k7380
                                                                                                                                              g7377)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7379
                                                                                                                                              k7380
                                                                                                                                              g7378)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       tetra-change-color))
                                                                                                                                     (x8232
                                                                                                                                      (letrec ((x8233
                                                                                                                                                (letrec ((x8236
                                                                                                                                                          (letrec ((x8237
                                                                                                                                                                    (letrec ((x8240
                                                                                                                                                                              (input))
                                                                                                                                                                             (x8238
                                                                                                                                                                              (letrec ((x8239
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8239
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8240
                                                                                                                                                                       x8238))))
                                                                                                                                                            (cons
                                                                                                                                                             'posn
                                                                                                                                                             x8237)))
                                                                                                                                                         (x8234
                                                                                                                                                          (letrec ((x8235
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8235
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8236
                                                                                                                                                   x8234))))
                                                                                                                                        (cons
                                                                                                                                         'tetra
                                                                                                                                         x8233)))
                                                                                                                                     (x8231
                                                                                                                                      (input)))
                                                                                                                              (x8241
                                                                                                                               x8232
                                                                                                                               x8231)))
                                                                                                                           (g8038
                                                                                                                            (letrec ((x8256
                                                                                                                                      ((lambda (j7384
                                                                                                                                                k7385
                                                                                                                                                f7386)
                                                                                                                                         (lambda (g7382
                                                                                                                                                  g7383)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7384
                                                                                                                                            k7385
                                                                                                                                            (f7386
                                                                                                                                             (WORLD/C
                                                                                                                                              j7384
                                                                                                                                              k7385
                                                                                                                                              g7382)
                                                                                                                                             (string?/c
                                                                                                                                              j7384
                                                                                                                                              k7385
                                                                                                                                              g7383)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world-key-move))
                                                                                                                                     (x8243
                                                                                                                                      (letrec ((x8244
                                                                                                                                                (letrec ((x8247
                                                                                                                                                          (letrec ((x8248
                                                                                                                                                                    (letrec ((x8251
                                                                                                                                                                              (letrec ((x8252
                                                                                                                                                                                        (letrec ((x8255
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x8253
                                                                                                                                                                                                  (letrec ((x8254
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x8254
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x8255
                                                                                                                                                                                           x8253))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x8252)))
                                                                                                                                                                             (x8249
                                                                                                                                                                              (letrec ((x8250
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8250
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8251
                                                                                                                                                                       x8249))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x8248)))
                                                                                                                                                         (x8245
                                                                                                                                                          (letrec ((x8246
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8246
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8247
                                                                                                                                                   x8245))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x8244)))
                                                                                                                                     (x8242
                                                                                                                                      (input)))
                                                                                                                              (x8256
                                                                                                                               x8243
                                                                                                                               x8242)))
                                                                                                                           (g8039
                                                                                                                            (letrec ((x8271
                                                                                                                                      ((lambda (j7389
                                                                                                                                                k7390
                                                                                                                                                f7391)
                                                                                                                                         (lambda (g7387
                                                                                                                                                  g7388)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7389
                                                                                                                                            k7390
                                                                                                                                            (f7391
                                                                                                                                             (WORLD/C
                                                                                                                                              j7389
                                                                                                                                              k7390
                                                                                                                                              g7387)
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7389
                                                                                                                                              k7390
                                                                                                                                              g7388)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       next-world))
                                                                                                                                     (x8258
                                                                                                                                      (letrec ((x8259
                                                                                                                                                (letrec ((x8262
                                                                                                                                                          (letrec ((x8263
                                                                                                                                                                    (letrec ((x8266
                                                                                                                                                                              (letrec ((x8267
                                                                                                                                                                                        (letrec ((x8270
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x8268
                                                                                                                                                                                                  (letrec ((x8269
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x8269
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x8270
                                                                                                                                                                                           x8268))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x8267)))
                                                                                                                                                                             (x8264
                                                                                                                                                                              (letrec ((x8265
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8265
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8266
                                                                                                                                                                       x8264))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x8263)))
                                                                                                                                                         (x8260
                                                                                                                                                          (letrec ((x8261
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8261
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8262
                                                                                                                                                   x8260))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x8259)))
                                                                                                                                     (x8257
                                                                                                                                      (input)))
                                                                                                                              (x8271
                                                                                                                               x8258
                                                                                                                               x8257)))
                                                                                                                           (g8040
                                                                                                                            (letrec ((x8285
                                                                                                                                      ((lambda (j7393
                                                                                                                                                k7394
                                                                                                                                                f7395)
                                                                                                                                         (lambda (g7392)
                                                                                                                                           (BSET/C
                                                                                                                                            j7393
                                                                                                                                            k7394
                                                                                                                                            (f7395
                                                                                                                                             (WORLD/C
                                                                                                                                              j7393
                                                                                                                                              k7394
                                                                                                                                              g7392)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       ghost-blocks))
                                                                                                                                     (x8272
                                                                                                                                      (letrec ((x8273
                                                                                                                                                (letrec ((x8276
                                                                                                                                                          (letrec ((x8277
                                                                                                                                                                    (letrec ((x8280
                                                                                                                                                                              (letrec ((x8281
                                                                                                                                                                                        (letrec ((x8284
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x8282
                                                                                                                                                                                                  (letrec ((x8283
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x8283
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x8284
                                                                                                                                                                                           x8282))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x8281)))
                                                                                                                                                                             (x8278
                                                                                                                                                                              (letrec ((x8279
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8279
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8280
                                                                                                                                                                       x8278))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x8277)))
                                                                                                                                                         (x8274
                                                                                                                                                          (letrec ((x8275
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8275
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8276
                                                                                                                                                   x8274))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x8273))))
                                                                                                                              (x8285
                                                                                                                               x8272)))
                                                                                                                           (g8041
                                                                                                                            (letrec ((x8287
                                                                                                                                      ((lambda (j7397
                                                                                                                                                k7398
                                                                                                                                                f7399)
                                                                                                                                         (lambda (g7396)
                                                                                                                                           (boolean?/c
                                                                                                                                            j7397
                                                                                                                                            k7398
                                                                                                                                            (f7399
                                                                                                                                             (any/c
                                                                                                                                              j7397
                                                                                                                                              k7398
                                                                                                                                              g7396)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       image?))
                                                                                                                                     (x8286
                                                                                                                                      (input)))
                                                                                                                              (x8287
                                                                                                                               x8286)))
                                                                                                                           (g8042
                                                                                                                            (letrec ((x8290
                                                                                                                                      ((lambda (j7402
                                                                                                                                                k7403
                                                                                                                                                f7404)
                                                                                                                                         (lambda (g7400
                                                                                                                                                  g7401)
                                                                                                                                           (image?
                                                                                                                                            j7402
                                                                                                                                            k7403
                                                                                                                                            (f7404
                                                                                                                                             (image?
                                                                                                                                              j7402
                                                                                                                                              k7403
                                                                                                                                              g7400)
                                                                                                                                             (image?
                                                                                                                                              j7402
                                                                                                                                              k7403
                                                                                                                                              g7401)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       overlay))
                                                                                                                                     (x8289
                                                                                                                                      (input))
                                                                                                                                     (x8288
                                                                                                                                      (input)))
                                                                                                                              (x8290
                                                                                                                               x8289
                                                                                                                               x8288)))
                                                                                                                           (g8043
                                                                                                                            (letrec ((x8294
                                                                                                                                      ((lambda (j7408
                                                                                                                                                k7409
                                                                                                                                                f7410)
                                                                                                                                         (lambda (g7405
                                                                                                                                                  g7406
                                                                                                                                                  g7407)
                                                                                                                                           (image?
                                                                                                                                            j7408
                                                                                                                                            k7409
                                                                                                                                            (f7410
                                                                                                                                             (real?/c
                                                                                                                                              j7408
                                                                                                                                              k7409
                                                                                                                                              g7405)
                                                                                                                                             (real?/c
                                                                                                                                              j7408
                                                                                                                                              k7409
                                                                                                                                              g7406)
                                                                                                                                             (string?/c
                                                                                                                                              j7408
                                                                                                                                              k7409
                                                                                                                                              g7407)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       circle))
                                                                                                                                     (x8293
                                                                                                                                      (input))
                                                                                                                                     (x8292
                                                                                                                                      (input))
                                                                                                                                     (x8291
                                                                                                                                      (input)))
                                                                                                                              (x8294
                                                                                                                               x8293
                                                                                                                               x8292
                                                                                                                               x8291)))
                                                                                                                           (g8044
                                                                                                                            (letrec ((x8299
                                                                                                                                      ((lambda (j7415
                                                                                                                                                k7416
                                                                                                                                                f7417)
                                                                                                                                         (lambda (g7411
                                                                                                                                                  g7412
                                                                                                                                                  g7413
                                                                                                                                                  g7414)
                                                                                                                                           (image?
                                                                                                                                            j7415
                                                                                                                                            k7416
                                                                                                                                            (f7417
                                                                                                                                             (real?/c
                                                                                                                                              j7415
                                                                                                                                              k7416
                                                                                                                                              g7411)
                                                                                                                                             (real?/c
                                                                                                                                              j7415
                                                                                                                                              k7416
                                                                                                                                              g7412)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7415
                                                                                                                                              k7416
                                                                                                                                              g7413)
                                                                                                                                             (COLOR/C
                                                                                                                                              j7415
                                                                                                                                              k7416
                                                                                                                                              g7414)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       rectangle))
                                                                                                                                     (x8298
                                                                                                                                      (input))
                                                                                                                                     (x8297
                                                                                                                                      (input))
                                                                                                                                     (x8296
                                                                                                                                      (input))
                                                                                                                                     (x8295
                                                                                                                                      (input)))
                                                                                                                              (x8299
                                                                                                                               x8298
                                                                                                                               x8297
                                                                                                                               x8296
                                                                                                                               x8295)))
                                                                                                                           (g8045
                                                                                                                            (letrec ((x8304
                                                                                                                                      ((lambda (j7422
                                                                                                                                                k7423
                                                                                                                                                f7424)
                                                                                                                                         (lambda (g7418
                                                                                                                                                  g7419
                                                                                                                                                  g7420
                                                                                                                                                  g7421)
                                                                                                                                           (image/c
                                                                                                                                            j7422
                                                                                                                                            k7423
                                                                                                                                            (f7424
                                                                                                                                             (image/c
                                                                                                                                              j7422
                                                                                                                                              k7423
                                                                                                                                              g7418)
                                                                                                                                             (real?/c
                                                                                                                                              j7422
                                                                                                                                              k7423
                                                                                                                                              g7419)
                                                                                                                                             (real?/c
                                                                                                                                              j7422
                                                                                                                                              k7423
                                                                                                                                              g7420)
                                                                                                                                             (image/c
                                                                                                                                              j7422
                                                                                                                                              k7423
                                                                                                                                              g7421)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       place-image))
                                                                                                                                     (x8303
                                                                                                                                      (input))
                                                                                                                                     (x8302
                                                                                                                                      (input))
                                                                                                                                     (x8301
                                                                                                                                      (input))
                                                                                                                                     (x8300
                                                                                                                                      (input)))
                                                                                                                              (x8304
                                                                                                                               x8303
                                                                                                                               x8302
                                                                                                                               x8301
                                                                                                                               x8300)))
                                                                                                                           (g8046
                                                                                                                            (letrec ((x8307
                                                                                                                                      ((lambda (j7427
                                                                                                                                                k7428
                                                                                                                                                f7429)
                                                                                                                                         (lambda (g7425
                                                                                                                                                  g7426)
                                                                                                                                           (image?
                                                                                                                                            j7427
                                                                                                                                            k7428
                                                                                                                                            (f7429
                                                                                                                                             (real?/c
                                                                                                                                              j7427
                                                                                                                                              k7428
                                                                                                                                              g7425)
                                                                                                                                             (real?/c
                                                                                                                                              j7427
                                                                                                                                              k7428
                                                                                                                                              g7426)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       empty-scene))
                                                                                                                                     (x8306
                                                                                                                                      (input))
                                                                                                                                     (x8305
                                                                                                                                      (input)))
                                                                                                                              (x8307
                                                                                                                               x8306
                                                                                                                               x8305)))
                                                                                                                           (g8047
                                                                                                                            (letrec ((x8309
                                                                                                                                      ((lambda (j7431
                                                                                                                                                k7432
                                                                                                                                                f7433)
                                                                                                                                         (lambda (g7430)
                                                                                                                                           (TETRA/C
                                                                                                                                            j7431
                                                                                                                                            k7432
                                                                                                                                            (f7433
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7431
                                                                                                                                              k7432
                                                                                                                                              g7430)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       list-pick-random))
                                                                                                                                     (x8308
                                                                                                                                      (input)))
                                                                                                                              (x8309
                                                                                                                               x8308)))
                                                                                                                           (g8048
                                                                                                                            (integer?/c
                                                                                                                             'module
                                                                                                                             'importer
                                                                                                                             neg-1))
                                                                                                                           (g8049
                                                                                                                            (letrec ((x8323
                                                                                                                                      ((lambda (j7435
                                                                                                                                                k7436
                                                                                                                                                f7437)
                                                                                                                                         (lambda (g7434)
                                                                                                                                           (image/c
                                                                                                                                            j7435
                                                                                                                                            k7436
                                                                                                                                            (f7437
                                                                                                                                             (WORLD/C
                                                                                                                                              j7435
                                                                                                                                              k7436
                                                                                                                                              g7434)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world->image))
                                                                                                                                     (x8310
                                                                                                                                      (letrec ((x8311
                                                                                                                                                (letrec ((x8314
                                                                                                                                                          (letrec ((x8315
                                                                                                                                                                    (letrec ((x8318
                                                                                                                                                                              (letrec ((x8319
                                                                                                                                                                                        (letrec ((x8322
                                                                                                                                                                                                  (input))
                                                                                                                                                                                                 (x8320
                                                                                                                                                                                                  (letrec ((x8321
                                                                                                                                                                                                            (input)))
                                                                                                                                                                                                    (cons
                                                                                                                                                                                                     x8321
                                                                                                                                                                                                     '()))))
                                                                                                                                                                                          (cons
                                                                                                                                                                                           x8322
                                                                                                                                                                                           x8320))))
                                                                                                                                                                                (cons
                                                                                                                                                                                 'posn
                                                                                                                                                                                 x8319)))
                                                                                                                                                                             (x8316
                                                                                                                                                                              (letrec ((x8317
                                                                                                                                                                                        (input)))
                                                                                                                                                                                (cons
                                                                                                                                                                                 x8317
                                                                                                                                                                                 '()))))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8318
                                                                                                                                                                       x8316))))
                                                                                                                                                            (cons
                                                                                                                                                             'tetra
                                                                                                                                                             x8315)))
                                                                                                                                                         (x8312
                                                                                                                                                          (letrec ((x8313
                                                                                                                                                                    (input)))
                                                                                                                                                            (cons
                                                                                                                                                             x8313
                                                                                                                                                             '()))))
                                                                                                                                                  (cons
                                                                                                                                                   x8314
                                                                                                                                                   x8312))))
                                                                                                                                        (cons
                                                                                                                                         'world
                                                                                                                                         x8311))))
                                                                                                                              (x8323
                                                                                                                               x8310)))
                                                                                                                           (g8050
                                                                                                                            (letrec ((x8325
                                                                                                                                      ((lambda (j7439
                                                                                                                                                k7440
                                                                                                                                                f7441)
                                                                                                                                         (lambda (g7438)
                                                                                                                                           (image/c
                                                                                                                                            j7439
                                                                                                                                            k7440
                                                                                                                                            (f7441
                                                                                                                                             (BSET/C
                                                                                                                                              j7439
                                                                                                                                              k7440
                                                                                                                                              g7438)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       blocks->image))
                                                                                                                                     (x8324
                                                                                                                                      (input)))
                                                                                                                              (x8325
                                                                                                                               x8324)))
                                                                                                                           (g8051
                                                                                                                            (letrec ((x8333
                                                                                                                                      ((lambda (j7443
                                                                                                                                                k7444
                                                                                                                                                f7445)
                                                                                                                                         (lambda (g7442)
                                                                                                                                           (image/c
                                                                                                                                            j7443
                                                                                                                                            k7444
                                                                                                                                            (f7445
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7443
                                                                                                                                              k7444
                                                                                                                                              g7442)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       block->image))
                                                                                                                                     (x8326
                                                                                                                                      (letrec ((x8327
                                                                                                                                                (letrec ((x8332
                                                                                                                                                          (input))
                                                                                                                                                         (x8328
                                                                                                                                                          (letrec ((x8331
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8329
                                                                                                                                                                    (letrec ((x8330
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8330
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8331
                                                                                                                                                             x8329))))
                                                                                                                                                  (cons
                                                                                                                                                   x8332
                                                                                                                                                   x8328))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8327))))
                                                                                                                              (x8333
                                                                                                                               x8326)))
                                                                                                                           (g8052
                                                                                                                            (letrec ((x8342
                                                                                                                                      ((lambda (j7448
                                                                                                                                                k7449
                                                                                                                                                f7450)
                                                                                                                                         (lambda (g7446
                                                                                                                                                  g7447)
                                                                                                                                           (image/c
                                                                                                                                            j7448
                                                                                                                                            k7449
                                                                                                                                            (f7450
                                                                                                                                             (BLOCK/C
                                                                                                                                              j7448
                                                                                                                                              k7449
                                                                                                                                              g7446)
                                                                                                                                             (image/c
                                                                                                                                              j7448
                                                                                                                                              k7449
                                                                                                                                              g7447)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       place-block))
                                                                                                                                     (x8335
                                                                                                                                      (letrec ((x8336
                                                                                                                                                (letrec ((x8341
                                                                                                                                                          (input))
                                                                                                                                                         (x8337
                                                                                                                                                          (letrec ((x8340
                                                                                                                                                                    (input))
                                                                                                                                                                   (x8338
                                                                                                                                                                    (letrec ((x8339
                                                                                                                                                                              (input)))
                                                                                                                                                                      (cons
                                                                                                                                                                       x8339
                                                                                                                                                                       '()))))
                                                                                                                                                            (cons
                                                                                                                                                             x8340
                                                                                                                                                             x8338))))
                                                                                                                                                  (cons
                                                                                                                                                   x8341
                                                                                                                                                   x8337))))
                                                                                                                                        (cons
                                                                                                                                         'block
                                                                                                                                         x8336)))
                                                                                                                                     (x8334
                                                                                                                                      (input)))
                                                                                                                              (x8342
                                                                                                                               x8335
                                                                                                                               x8334)))
                                                                                                                           (g8053
                                                                                                                            (letrec ((x8344
                                                                                                                                      ((lambda (j7452
                                                                                                                                                k7453
                                                                                                                                                f7454)
                                                                                                                                         (lambda (g7451)
                                                                                                                                           (WORLD/C
                                                                                                                                            j7452
                                                                                                                                            k7453
                                                                                                                                            (f7454
                                                                                                                                             ((and/c
                                                                                                                                               cons?/c
                                                                                                                                               (listof
                                                                                                                                                TETRA/C))
                                                                                                                                              j7452
                                                                                                                                              k7453
                                                                                                                                              g7451)))))
                                                                                                                                       'module
                                                                                                                                       'importer
                                                                                                                                       world0))
                                                                                                                                     (x8343
                                                                                                                                      (input)))
                                                                                                                              (x8344
                                                                                                                               x8343))))
                                                                                                                    g8053)))
                                                                                                          g8000)))
                                                                                                g7999))))
                                                                                    g7941))))
                                                                        g7635))))
                                                            g7614))))
                                                g7593))))
                                    g7562)))
                          g7561))))
              g7490)))
    g7488))
