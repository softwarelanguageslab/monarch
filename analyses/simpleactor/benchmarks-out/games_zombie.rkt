(letrec ((any? (lambda (v) (letrec ((g7436 #t)) g7436)))
         (meta (lambda (v) (letrec ((g7437 v)) g7437)))
         (member
          (lambda (v lst)
            (letrec ((g7438
                      (letrec ((g7439
                                (letrec ((x-e7440 lst))
                                  (match
                                   x-e7440
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7441 (eq? v v1)))
                                       (if x-cnd7441 #t (member v vs)))))))))
                        g7439)))
              g7438)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7442 (lambda (v) (letrec ((g7443 v)) g7443)))) g7442)))
         (nonzero?
          (lambda (v)
            (letrec ((g7444 (letrec ((x7445 (= v 0))) (not x7445)))) g7444))))
  (letrec ((g7446
            (letrec ((g7447
                      (letrec ((g7449
                                (letrec ((real/c
                                          (lambda (g7143 g7144 g7145)
                                            (letrec ((g7450
                                                      (letrec ((x-cnd7451
                                                                (real? g7145)))
                                                        (if x-cnd7451
                                                          g7145
                                                          (blame
                                                           g7143
                                                           'real?)))))
                                              g7450)))
                                         (boolean?/c
                                          (lambda (g7146 g7147 g7148)
                                            (letrec ((g7452
                                                      (letrec ((x-cnd7453
                                                                (boolean?
                                                                 g7148)))
                                                        (if x-cnd7453
                                                          g7148
                                                          (blame
                                                           g7146
                                                           'boolean?)))))
                                              g7452)))
                                         (number?/c
                                          (lambda (g7149 g7150 g7151)
                                            (letrec ((g7454
                                                      (letrec ((x-cnd7455
                                                                (number?
                                                                 g7151)))
                                                        (if x-cnd7455
                                                          g7151
                                                          (blame
                                                           g7149
                                                           'number?)))))
                                              g7454)))
                                         (any/c
                                          (lambda (g7152 g7153 g7154)
                                            (letrec ((g7456
                                                      (letrec ((x-cnd7457
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7154)))
                                                        (if x-cnd7457
                                                          g7154
                                                          (blame
                                                           g7152
                                                           '(lambda (v)
                                                              #t))))))
                                              g7456)))
                                         (any?/c
                                          (lambda (g7155 g7156 g7157)
                                            (letrec ((g7458
                                                      (letrec ((x-cnd7459
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7157)))
                                                        (if x-cnd7459
                                                          g7157
                                                          (blame
                                                           g7155
                                                           '(lambda (v)
                                                              #t))))))
                                              g7458)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7158 g7159 g7160)
                                            (letrec ((g7460
                                                      (letrec ((x-cnd7461
                                                                (pair? g7160)))
                                                        (if x-cnd7461
                                                          g7160
                                                          (blame
                                                           g7158
                                                           'pair?)))))
                                              g7460)))
                                         (pair?/c
                                          (lambda (g7161 g7162 g7163)
                                            (letrec ((g7462
                                                      (letrec ((x-cnd7463
                                                                (pair? g7163)))
                                                        (if x-cnd7463
                                                          g7163
                                                          (blame
                                                           g7161
                                                           'pair?)))))
                                              g7462)))
                                         (integer?
                                          (lambda (g7164 g7165 g7166)
                                            (letrec ((g7464
                                                      (letrec ((x-cnd7465
                                                                (integer?
                                                                 g7166)))
                                                        (if x-cnd7465
                                                          g7166
                                                          (blame
                                                           g7164
                                                           'integer?)))))
                                              g7464)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7466
                                                      (lambda (k j v)
                                                        (letrec ((g7467
                                                                  (letrec ((x-cnd7468
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7468
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7467))))
                                              g7466)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7469
                                                      (lambda (k j v)
                                                        (letrec ((g7470
                                                                  (letrec ((x-cnd7471
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7471
                                                                      '()
                                                                      (letrec ((x7475
                                                                                (letrec ((x7476
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7476)))
                                                                               (x7472
                                                                                (letrec ((x7474
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7473
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7474
                                                                                   k
                                                                                   j
                                                                                   x7473))))
                                                                        (cons
                                                                         x7475
                                                                         x7472))))))
                                                          g7470))))
                                              g7469)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7477 #t)) g7477)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7478
                                                      (letrec ((x7479 (= v 0)))
                                                        (not x7479))))
                                              g7478)))
                                         (nonzero?/c
                                          (lambda (g7167 g7168 g7169)
                                            (letrec ((g7480
                                                      (letrec ((x-cnd7481
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7169)))
                                                        (if x-cnd7481
                                                          g7169
                                                          (blame
                                                           g7167
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7480)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7482 v)) g7482)))
                                         (+
                                          ((lambda (j7172 k7173 f7174)
                                             (lambda (g7170 g7171)
                                               (number?/c
                                                j7172
                                                k7173
                                                (f7174
                                                 (number?/c j7172 k7173 g7170)
                                                 (number?/c
                                                  j7172
                                                  k7173
                                                  g7171)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-+ a b))))
                                         (-
                                          ((lambda (j7177 k7178 f7179)
                                             (lambda (g7175 g7176)
                                               (number?/c
                                                j7177
                                                k7178
                                                (f7179
                                                 (number?/c j7177 k7178 g7175)
                                                 (number?/c
                                                  j7177
                                                  k7178
                                                  g7176)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-- a b))))
                                         (*
                                          ((lambda (j7182 k7183 f7184)
                                             (lambda (g7180 g7181)
                                               (number?/c
                                                j7182
                                                k7183
                                                (f7184
                                                 (number?/c j7182 k7183 g7180)
                                                 (number?/c
                                                  j7182
                                                  k7183
                                                  g7181)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-* a b))))
                                         (/
                                          ((lambda (j7187 k7188 f7189)
                                             (lambda (g7185 g7186)
                                               (number?/c
                                                j7187
                                                k7188
                                                (f7189
                                                 (number?/c j7187 k7188 g7185)
                                                 (number?/c
                                                  j7187
                                                  k7188
                                                  g7186)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-/ a b))))
                                         (car
                                          ((lambda (j7191 k7192 f7193)
                                             (lambda (g7190)
                                               (any/c
                                                j7191
                                                k7192
                                                (f7193
                                                 (pair?/c
                                                  j7191
                                                  k7192
                                                  g7190)))))
                                           'server
                                           'client
                                           (lambda (p) (orig-car p))))
                                         (cdr
                                          ((lambda (j7195 k7196 f7197)
                                             (lambda (g7194)
                                               (any/c
                                                j7195
                                                k7196
                                                (f7197
                                                 (pair?/c
                                                  j7195
                                                  k7196
                                                  g7194)))))
                                           'server
                                           'client
                                           (lambda (p) (orig-cdr p))))
                                         (cons
                                          ((lambda (j7200 k7201 f7202)
                                             (lambda (g7198 g7199)
                                               (pair?/c
                                                j7200
                                                k7201
                                                (f7202
                                                 (any/c j7200 k7201 g7198)
                                                 (any/c j7200 k7201 g7199)))))
                                           'server
                                           'client
                                           (lambda (a b) (cons a b))))
                                         (vector-ref
                                          ((lambda (j7204 k7205 f7206)
                                             (lambda (g7203)
                                               (integer?/c
                                                j7204
                                                k7205
                                                (f7206
                                                 (vector?/c
                                                  j7204
                                                  k7205
                                                  g7203)))))
                                           'server
                                           'client
                                           (lambda (v i)
                                             (orig-vector-ref v i))))
                                         (vector-set!
                                          ((lambda (j7209 k7210 f7211)
                                             (lambda (g7207 g7208)
                                               (any/c
                                                j7209
                                                k7210
                                                (f7211
                                                 (vector?/c j7209 k7210 g7207)
                                                 (integer?/c
                                                  j7209
                                                  k7210
                                                  g7208)))))
                                           'server
                                           'client
                                           (lambda (vec i v)
                                             (orig-vector-set! vec i v))))
                                         (assert
                                          (lambda (cnd)
                                            (letrec ((g7483 #t)) g7483)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7484 '())) g7484))))
                        g7449))
                     (g7448
                      (letrec ((real/c
                                (lambda (g7143 g7144 g7145)
                                  (letrec ((g7485
                                            (letrec ((x-cnd7486 (real? g7145)))
                                              (if x-cnd7486
                                                g7145
                                                (blame g7143 'real?)))))
                                    g7485)))
                               (boolean?/c
                                (lambda (g7146 g7147 g7148)
                                  (letrec ((g7487
                                            (letrec ((x-cnd7488
                                                      (boolean? g7148)))
                                              (if x-cnd7488
                                                g7148
                                                (blame g7146 'boolean?)))))
                                    g7487)))
                               (number?/c
                                (lambda (g7149 g7150 g7151)
                                  (letrec ((g7489
                                            (letrec ((x-cnd7490
                                                      (number? g7151)))
                                              (if x-cnd7490
                                                g7151
                                                (blame g7149 'number?)))))
                                    g7489)))
                               (any/c
                                (lambda (g7152 g7153 g7154)
                                  (letrec ((g7491
                                            (letrec ((x-cnd7492
                                                      ((lambda (v) #t) g7154)))
                                              (if x-cnd7492
                                                g7154
                                                (blame
                                                 g7152
                                                 '(lambda (v) #t))))))
                                    g7491)))
                               (any?/c
                                (lambda (g7155 g7156 g7157)
                                  (letrec ((g7493
                                            (letrec ((x-cnd7494
                                                      ((lambda (v) #t) g7157)))
                                              (if x-cnd7494
                                                g7157
                                                (blame
                                                 g7155
                                                 '(lambda (v) #t))))))
                                    g7493)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7158 g7159 g7160)
                                  (letrec ((g7495
                                            (letrec ((x-cnd7496 (pair? g7160)))
                                              (if x-cnd7496
                                                g7160
                                                (blame g7158 'pair?)))))
                                    g7495)))
                               (pair?/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7497
                                            (letrec ((x-cnd7498 (pair? g7163)))
                                              (if x-cnd7498
                                                g7163
                                                (blame g7161 'pair?)))))
                                    g7497)))
                               (integer?
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7499
                                            (letrec ((x-cnd7500
                                                      (integer? g7166)))
                                              (if x-cnd7500
                                                g7166
                                                (blame g7164 'integer?)))))
                                    g7499)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7501
                                            (lambda (k j v)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (c1 k j v)))
                                                          (if x-cnd7503
                                                            (c2 k j v)
                                                            #f))))
                                                g7502))))
                                    g7501)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7504
                                            (lambda (k j v)
                                              (letrec ((g7505
                                                        (letrec ((x-cnd7506
                                                                  (null? v)))
                                                          (if x-cnd7506
                                                            '()
                                                            (letrec ((x7510
                                                                      (letrec ((x7511
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7511)))
                                                                     (x7507
                                                                      (letrec ((x7509
                                                                                (list-of
                                                                                 contract))
                                                                               (x7508
                                                                                (cdr
                                                                                 v)))
                                                                        (x7509
                                                                         k
                                                                         j
                                                                         x7508))))
                                                              (cons
                                                               x7510
                                                               x7507))))))
                                                g7505))))
                                    g7504)))
                               (any? (lambda (v) (letrec ((g7512 #t)) g7512)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7513
                                            (letrec ((x7514 (= v 0)))
                                              (not x7514))))
                                    g7513)))
                               (nonzero?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7515
                                            (letrec ((x-cnd7516
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7169)))
                                              (if x-cnd7516
                                                g7169
                                                (blame
                                                 g7167
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7515)))
                               (meta (lambda (v) (letrec ((g7517 v)) g7517)))
                               (+
                                ((lambda (j7172 k7173 f7174)
                                   (lambda (g7170 g7171)
                                     (number?/c
                                      j7172
                                      k7173
                                      (f7174
                                       (number?/c j7172 k7173 g7170)
                                       (number?/c j7172 k7173 g7171)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (-
                                ((lambda (j7177 k7178 f7179)
                                   (lambda (g7175 g7176)
                                     (number?/c
                                      j7177
                                      k7178
                                      (f7179
                                       (number?/c j7177 k7178 g7175)
                                       (number?/c j7177 k7178 g7176)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (*
                                ((lambda (j7182 k7183 f7184)
                                   (lambda (g7180 g7181)
                                     (number?/c
                                      j7182
                                      k7183
                                      (f7184
                                       (number?/c j7182 k7183 g7180)
                                       (number?/c j7182 k7183 g7181)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (/
                                ((lambda (j7187 k7188 f7189)
                                   (lambda (g7185 g7186)
                                     (number?/c
                                      j7187
                                      k7188
                                      (f7189
                                       (number?/c j7187 k7188 g7185)
                                       (number?/c j7187 k7188 g7186)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (car
                                ((lambda (j7191 k7192 f7193)
                                   (lambda (g7190)
                                     (any/c
                                      j7191
                                      k7192
                                      (f7193 (pair?/c j7191 k7192 g7190)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (cdr
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7194)
                                     (any/c
                                      j7195
                                      k7196
                                      (f7197 (pair?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (cons
                                ((lambda (j7200 k7201 f7202)
                                   (lambda (g7198 g7199)
                                     (pair?/c
                                      j7200
                                      k7201
                                      (f7202
                                       (any/c j7200 k7201 g7198)
                                       (any/c j7200 k7201 g7199)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (vector-ref
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7203)
                                     (integer?/c
                                      j7204
                                      k7205
                                      (f7206 (vector?/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (vector-set!
                                ((lambda (j7209 k7210 f7211)
                                   (lambda (g7207 g7208)
                                     (any/c
                                      j7209
                                      k7210
                                      (f7211
                                       (vector?/c j7209 k7210 g7207)
                                       (integer?/c j7209 k7210 g7208)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7518 #t)) g7518))))
                        (letrec ((g7519
                                  (letrec ((g7520
                                            (letrec ((image
                                                      (lambda ()
                                                        (letrec ((g7521
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g7521)))
                                                     (image?
                                                      (lambda (image7435)
                                                        (letrec ((g7522
                                                                  (letrec ((x7523
                                                                            (car
                                                                             image7435)))
                                                                    (eq?
                                                                     x7523
                                                                     'image))))
                                                          g7522)))
                                                     (image
                                                      (lambda ()
                                                        (letrec ((g7524
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g7524)))
                                                     (image?
                                                      (lambda (image7435)
                                                        (letrec ((g7525
                                                                  (letrec ((x7526
                                                                            (car
                                                                             image7435)))
                                                                    (eq?
                                                                     x7526
                                                                     'image))))
                                                          g7525)))
                                                     (empty-scene
                                                      (lambda (w h)
                                                        (letrec ((g7527
                                                                  (image)))
                                                          g7527)))
                                                     (place-image
                                                      (lambda (i₁ r c i₂)
                                                        (letrec ((g7528
                                                                  (image)))
                                                          g7528)))
                                                     (circle
                                                      (lambda (r m c)
                                                        (letrec ((g7529
                                                                  (image)))
                                                          g7529)))
                                                     (min
                                                      (lambda (x y)
                                                        (letrec ((g7530
                                                                  (letrec ((x-cnd7531
                                                                            (<=
                                                                             x
                                                                             y)))
                                                                    (if x-cnd7531
                                                                      x
                                                                      y))))
                                                          g7530)))
                                                     (max
                                                      (lambda (x y)
                                                        (letrec ((g7532
                                                                  (letrec ((x-cnd7533
                                                                            (>=
                                                                             x
                                                                             y)))
                                                                    (if x-cnd7533
                                                                      x
                                                                      y))))
                                                          g7532)))
                                                     (abs
                                                      (lambda (x)
                                                        (letrec ((g7534
                                                                  (letrec ((x-cnd7535
                                                                            (>=
                                                                             x
                                                                             0)))
                                                                    (if x-cnd7535
                                                                      x
                                                                      (-
                                                                       0
                                                                       x)))))
                                                          g7534)))
                                                     (sqr
                                                      (lambda (x)
                                                        (letrec ((g7536
                                                                  (* x x)))
                                                          g7536)))
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
                                                      (lambda (j7213
                                                               k7214
                                                               f7215)
                                                        (letrec ((g7537
                                                                  (lambda (g7212)
                                                                    (letrec ((g7538
                                                                              (letrec ((x7216
                                                                                        ((lambda (g7220
                                                                                                  g7221
                                                                                                  g7222)
                                                                                           (if ((lambda (v7219)
                                                                                                  (if (eq?
                                                                                                       'x
                                                                                                       v7219)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'y
                                                                                                         v7219)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'posn
                                                                                                           v7219)
                                                                                                        #t
                                                                                                        (if (eq?
                                                                                                             'move-toward/speed
                                                                                                             v7219)
                                                                                                          #t
                                                                                                          (if (eq?
                                                                                                               'draw-on/image
                                                                                                               v7219)
                                                                                                            #t
                                                                                                            (eq?
                                                                                                             'dist
                                                                                                             v7219)))))))
                                                                                                g7222)
                                                                                             g7222
                                                                                             (blame
                                                                                              g7220
                                                                                              '(lambda (v7219)
                                                                                                 (if (eq?
                                                                                                      'x
                                                                                                      v7219)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'y
                                                                                                        v7219)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'posn
                                                                                                          v7219)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'move-toward/speed
                                                                                                            v7219)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'draw-on/image
                                                                                                              v7219)
                                                                                                           #t
                                                                                                           (eq?
                                                                                                            'dist
                                                                                                            v7219))))))))))
                                                                                         j7213
                                                                                         k7214
                                                                                         g7212)))
                                                                                (letrec ((g7539
                                                                                          (letrec ((x7541
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7223
                                                                                                                    k7224
                                                                                                                    f7225)
                                                                                                             (lambda ()
                                                                                                               (real?
                                                                                                                j7223
                                                                                                                k7224
                                                                                                                (f7225)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7226
                                                                                                                      k7227
                                                                                                                      f7228)
                                                                                                               (lambda ()
                                                                                                                 (real?
                                                                                                                  j7226
                                                                                                                  k7227
                                                                                                                  (f7228)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7229
                                                                                                                        k7230
                                                                                                                        f7231)
                                                                                                                 (lambda ()
                                                                                                                   (posn/c
                                                                                                                    j7229
                                                                                                                    k7230
                                                                                                                    (f7231)))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7234
                                                                                                                          k7235
                                                                                                                          f7236)
                                                                                                                   (lambda (g7232
                                                                                                                            g7233)
                                                                                                                     (posn/c
                                                                                                                      j7234
                                                                                                                      k7235
                                                                                                                      (f7236
                                                                                                                       (posn/c
                                                                                                                        j7234
                                                                                                                        k7235
                                                                                                                        g7232)
                                                                                                                       (real?
                                                                                                                        j7234
                                                                                                                        k7235
                                                                                                                        g7233))))))
                                                                                                               (if cnd
                                                                                                                 (begin
                                                                                                                   (lambda (j7239
                                                                                                                            k7240
                                                                                                                            f7241)
                                                                                                                     (lambda (g7237
                                                                                                                              g7238)
                                                                                                                       (image?
                                                                                                                        j7239
                                                                                                                        k7240
                                                                                                                        (f7241
                                                                                                                         (image?
                                                                                                                          j7239
                                                                                                                          k7240
                                                                                                                          g7237)
                                                                                                                         (image?
                                                                                                                          j7239
                                                                                                                          k7240
                                                                                                                          g7238))))))
                                                                                                                 (if cnd
                                                                                                                   (begin
                                                                                                                     (lambda (j7243
                                                                                                                              k7244
                                                                                                                              f7245)
                                                                                                                       (lambda (g7242)
                                                                                                                         (real?
                                                                                                                          j7243
                                                                                                                          k7244
                                                                                                                          (f7245
                                                                                                                           (posn/c
                                                                                                                            j7243
                                                                                                                            k7244
                                                                                                                            g7242))))))
                                                                                                                   (begin
                                                                                                                     "error"))))))))
                                                                                                     x7216))
                                                                                                   (x7540
                                                                                                    (f7215
                                                                                                     x7216)))
                                                                                            (x7541
                                                                                             j7213
                                                                                             k7214
                                                                                             x7540))))
                                                                                  g7539))))
                                                                      g7538))))
                                                          g7537)))
                                                     (player/c
                                                      (lambda (j7247
                                                               k7248
                                                               f7249)
                                                        (letrec ((g7542
                                                                  (lambda (g7246)
                                                                    (letrec ((g7543
                                                                              (letrec ((x7250
                                                                                        ((lambda (g7254
                                                                                                  g7255
                                                                                                  g7256)
                                                                                           (if ((lambda (v7253)
                                                                                                  (if (eq?
                                                                                                       'posn
                                                                                                       v7253)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'move-toward
                                                                                                         v7253)
                                                                                                      #t
                                                                                                      (eq?
                                                                                                       'draw-on
                                                                                                       v7253))))
                                                                                                g7256)
                                                                                             g7256
                                                                                             (blame
                                                                                              g7254
                                                                                              '(lambda (v7253)
                                                                                                 (if (eq?
                                                                                                      'posn
                                                                                                      v7253)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7253)
                                                                                                     #t
                                                                                                     (eq?
                                                                                                      'draw-on
                                                                                                      v7253)))))))
                                                                                         j7247
                                                                                         k7248
                                                                                         g7246)))
                                                                                (letrec ((g7544
                                                                                          (letrec ((x7546
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7257
                                                                                                                    k7258
                                                                                                                    f7259)
                                                                                                             (lambda ()
                                                                                                               (posn/c
                                                                                                                j7257
                                                                                                                k7258
                                                                                                                (f7259)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7261
                                                                                                                      k7262
                                                                                                                      f7263)
                                                                                                               (lambda (g7260)
                                                                                                                 (player/c
                                                                                                                  j7261
                                                                                                                  k7262
                                                                                                                  (f7263
                                                                                                                   (posn/c
                                                                                                                    j7261
                                                                                                                    k7262
                                                                                                                    g7260))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7265
                                                                                                                        k7266
                                                                                                                        f7267)
                                                                                                                 (lambda (g7264)
                                                                                                                   (image?
                                                                                                                    j7265
                                                                                                                    k7266
                                                                                                                    (f7267
                                                                                                                     (image?
                                                                                                                      j7265
                                                                                                                      k7266
                                                                                                                      g7264))))))
                                                                                                             (begin
                                                                                                               "error")))))
                                                                                                     x7250))
                                                                                                   (x7545
                                                                                                    (f7249
                                                                                                     x7250)))
                                                                                            (x7546
                                                                                             j7247
                                                                                             k7248
                                                                                             x7545))))
                                                                                  g7544))))
                                                                      g7543))))
                                                          g7542)))
                                                     (zombie/c
                                                      (lambda (j7269
                                                               k7270
                                                               f7271)
                                                        (letrec ((g7547
                                                                  (lambda (g7268)
                                                                    (letrec ((g7548
                                                                              (letrec ((x7272
                                                                                        ((lambda (g7276
                                                                                                  g7277
                                                                                                  g7278)
                                                                                           (if ((lambda (v7275)
                                                                                                  (if (eq?
                                                                                                       'posn
                                                                                                       v7275)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'draw-on/color
                                                                                                         v7275)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'touching?
                                                                                                           v7275)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'move-toward
                                                                                                         v7275)))))
                                                                                                g7278)
                                                                                             g7278
                                                                                             (blame
                                                                                              g7276
                                                                                              '(lambda (v7275)
                                                                                                 (if (eq?
                                                                                                      'posn
                                                                                                      v7275)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'draw-on/color
                                                                                                        v7275)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'touching?
                                                                                                          v7275)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'move-toward
                                                                                                        v7275))))))))
                                                                                         j7269
                                                                                         k7270
                                                                                         g7268)))
                                                                                (letrec ((g7549
                                                                                          (letrec ((x7551
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7279
                                                                                                                    k7280
                                                                                                                    f7281)
                                                                                                             (lambda ()
                                                                                                               (posn/c
                                                                                                                j7279
                                                                                                                k7280
                                                                                                                (f7281)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7284
                                                                                                                      k7285
                                                                                                                      f7286)
                                                                                                               (lambda (g7282
                                                                                                                        g7283)
                                                                                                                 (image?
                                                                                                                  j7284
                                                                                                                  k7285
                                                                                                                  (f7286
                                                                                                                   (string?
                                                                                                                    j7284
                                                                                                                    k7285
                                                                                                                    g7282)
                                                                                                                   (image?
                                                                                                                    j7284
                                                                                                                    k7285
                                                                                                                    g7283))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7288
                                                                                                                        k7289
                                                                                                                        f7290)
                                                                                                                 (lambda (g7287)
                                                                                                                   (boolean?
                                                                                                                    j7288
                                                                                                                    k7289
                                                                                                                    (f7290
                                                                                                                     (posn/c
                                                                                                                      j7288
                                                                                                                      k7289
                                                                                                                      g7287))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7292
                                                                                                                          k7293
                                                                                                                          f7294)
                                                                                                                   (lambda (g7291)
                                                                                                                     (zombie/c
                                                                                                                      j7292
                                                                                                                      k7293
                                                                                                                      (f7294
                                                                                                                       (posn/c
                                                                                                                        j7292
                                                                                                                        k7293
                                                                                                                        g7291))))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7272))
                                                                                                   (x7550
                                                                                                    (f7271
                                                                                                     x7272)))
                                                                                            (x7551
                                                                                             j7269
                                                                                             k7270
                                                                                             x7550))))
                                                                                  g7549))))
                                                                      g7548))))
                                                          g7547)))
                                                     (horde/c
                                                      (lambda (j7296
                                                               k7297
                                                               f7298)
                                                        (letrec ((g7552
                                                                  (lambda (g7295)
                                                                    (letrec ((g7553
                                                                              (letrec ((x7299
                                                                                        ((lambda (g7303
                                                                                                  g7304
                                                                                                  g7305)
                                                                                           (if ((lambda (v7302)
                                                                                                  (if (eq?
                                                                                                       'dead
                                                                                                       v7302)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'undead
                                                                                                         v7302)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'draw-on
                                                                                                           v7302)
                                                                                                        #t
                                                                                                        (if (eq?
                                                                                                             'touching?
                                                                                                             v7302)
                                                                                                          #t
                                                                                                          (if (eq?
                                                                                                               'move-toward
                                                                                                               v7302)
                                                                                                            #t
                                                                                                            (eq?
                                                                                                             'eat-brains
                                                                                                             v7302)))))))
                                                                                                g7305)
                                                                                             g7305
                                                                                             (blame
                                                                                              g7303
                                                                                              '(lambda (v7302)
                                                                                                 (if (eq?
                                                                                                      'dead
                                                                                                      v7302)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'undead
                                                                                                        v7302)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on
                                                                                                          v7302)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7302)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward
                                                                                                              v7302)
                                                                                                           #t
                                                                                                           (eq?
                                                                                                            'eat-brains
                                                                                                            v7302))))))))))
                                                                                         j7296
                                                                                         k7297
                                                                                         g7295)))
                                                                                (letrec ((g7554
                                                                                          (letrec ((x7556
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7306
                                                                                                                    k7307
                                                                                                                    f7308)
                                                                                                             (lambda ()
                                                                                                               (zombies/c
                                                                                                                j7306
                                                                                                                k7307
                                                                                                                (f7308)))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7309
                                                                                                                      k7310
                                                                                                                      f7311)
                                                                                                               (lambda ()
                                                                                                                 (zombies/c
                                                                                                                  j7309
                                                                                                                  k7310
                                                                                                                  (f7311)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7313
                                                                                                                        k7314
                                                                                                                        f7315)
                                                                                                                 (lambda (g7312)
                                                                                                                   (image?
                                                                                                                    j7313
                                                                                                                    k7314
                                                                                                                    (f7315
                                                                                                                     (image?
                                                                                                                      j7313
                                                                                                                      k7314
                                                                                                                      g7312))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7317
                                                                                                                          k7318
                                                                                                                          f7319)
                                                                                                                   (lambda (g7316)
                                                                                                                     (boolean?
                                                                                                                      j7317
                                                                                                                      k7318
                                                                                                                      (f7319
                                                                                                                       (posn/c
                                                                                                                        j7317
                                                                                                                        k7318
                                                                                                                        g7316))))))
                                                                                                               (if cnd
                                                                                                                 (begin
                                                                                                                   (lambda (j7321
                                                                                                                            k7322
                                                                                                                            f7323)
                                                                                                                     (lambda (g7320)
                                                                                                                       (horde/c
                                                                                                                        j7321
                                                                                                                        k7322
                                                                                                                        (f7323
                                                                                                                         (posn/c
                                                                                                                          j7321
                                                                                                                          k7322
                                                                                                                          g7320))))))
                                                                                                                 (if cnd
                                                                                                                   (begin
                                                                                                                     (lambda (j7324
                                                                                                                              k7325
                                                                                                                              f7326)
                                                                                                                       (lambda ()
                                                                                                                         (horde/c
                                                                                                                          j7324
                                                                                                                          k7325
                                                                                                                          (f7326)))))
                                                                                                                   (begin
                                                                                                                     "error"))))))))
                                                                                                     x7299))
                                                                                                   (x7555
                                                                                                    (f7298
                                                                                                     x7299)))
                                                                                            (x7556
                                                                                             j7296
                                                                                             k7297
                                                                                             x7555))))
                                                                                  g7554))))
                                                                      g7553))))
                                                          g7552)))
                                                     (zombies/c
                                                      (lambda (j7328
                                                               k7329
                                                               f7330)
                                                        (letrec ((g7557
                                                                  (lambda (g7327)
                                                                    (letrec ((g7558
                                                                              (letrec ((x7331
                                                                                        ((lambda (g7335
                                                                                                  g7336
                                                                                                  g7337)
                                                                                           (if ((lambda (v7334)
                                                                                                  (if (eq?
                                                                                                       'move-toward
                                                                                                       v7334)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'draw-on/color
                                                                                                         v7334)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'touching?
                                                                                                           v7334)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'kill-all
                                                                                                         v7334)))))
                                                                                                g7337)
                                                                                             g7337
                                                                                             (blame
                                                                                              g7335
                                                                                              '(lambda (v7334)
                                                                                                 (if (eq?
                                                                                                      'move-toward
                                                                                                      v7334)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'draw-on/color
                                                                                                        v7334)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'touching?
                                                                                                          v7334)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'kill-all
                                                                                                        v7334))))))))
                                                                                         j7328
                                                                                         k7329
                                                                                         g7327)))
                                                                                (letrec ((g7559
                                                                                          (letrec ((x7561
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7339
                                                                                                                    k7340
                                                                                                                    f7341)
                                                                                                             (lambda (g7338)
                                                                                                               (zombies/c
                                                                                                                j7339
                                                                                                                k7340
                                                                                                                (f7341
                                                                                                                 (posn/c
                                                                                                                  j7339
                                                                                                                  k7340
                                                                                                                  g7338))))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7344
                                                                                                                      k7345
                                                                                                                      f7346)
                                                                                                               (lambda (g7342
                                                                                                                        g7343)
                                                                                                                 (image?
                                                                                                                  j7344
                                                                                                                  k7345
                                                                                                                  (f7346
                                                                                                                   (string?
                                                                                                                    j7344
                                                                                                                    k7345
                                                                                                                    g7342)
                                                                                                                   (image?
                                                                                                                    j7344
                                                                                                                    k7345
                                                                                                                    g7343))))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7348
                                                                                                                        k7349
                                                                                                                        f7350)
                                                                                                                 (lambda (g7347)
                                                                                                                   (boolean?
                                                                                                                    j7348
                                                                                                                    k7349
                                                                                                                    (f7350
                                                                                                                     (posn/c
                                                                                                                      j7348
                                                                                                                      k7349
                                                                                                                      g7347))))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7352
                                                                                                                          k7353
                                                                                                                          f7354)
                                                                                                                   (lambda (g7351)
                                                                                                                     (horde/c
                                                                                                                      j7352
                                                                                                                      k7353
                                                                                                                      (f7354
                                                                                                                       (zombies/c
                                                                                                                        j7352
                                                                                                                        k7353
                                                                                                                        g7351))))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7331))
                                                                                                   (x7560
                                                                                                    (f7330
                                                                                                     x7331)))
                                                                                            (x7561
                                                                                             j7328
                                                                                             k7329
                                                                                             x7560))))
                                                                                  g7559))))
                                                                      g7558))))
                                                          g7557)))
                                                     (world/c
                                                      (lambda (j7356
                                                               k7357
                                                               f7358)
                                                        (letrec ((g7562
                                                                  (lambda (g7355)
                                                                    (letrec ((g7563
                                                                              (letrec ((x7359
                                                                                        ((lambda (g7363
                                                                                                  g7364
                                                                                                  g7365)
                                                                                           (if ((lambda (v7362)
                                                                                                  (if (eq?
                                                                                                       'on-mouse
                                                                                                       v7362)
                                                                                                    #t
                                                                                                    (if (eq?
                                                                                                         'on-tick
                                                                                                         v7362)
                                                                                                      #t
                                                                                                      (if (eq?
                                                                                                           'to-draw
                                                                                                           v7362)
                                                                                                        #t
                                                                                                        (eq?
                                                                                                         'stop-when
                                                                                                         v7362)))))
                                                                                                g7365)
                                                                                             g7365
                                                                                             (blame
                                                                                              g7363
                                                                                              '(lambda (v7362)
                                                                                                 (if (eq?
                                                                                                      'on-mouse
                                                                                                      v7362)
                                                                                                   #t
                                                                                                   (if (eq?
                                                                                                        'on-tick
                                                                                                        v7362)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'to-draw
                                                                                                          v7362)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'stop-when
                                                                                                        v7362))))))))
                                                                                         j7356
                                                                                         k7357
                                                                                         g7355)))
                                                                                (letrec ((g7564
                                                                                          (letrec ((x7566
                                                                                                    ((lambda (msg)
                                                                                                       (if cnd
                                                                                                         (begin
                                                                                                           (lambda (j7369
                                                                                                                    k7370
                                                                                                                    f7371)
                                                                                                             (lambda (g7366
                                                                                                                      g7367
                                                                                                                      g7368)
                                                                                                               (world/c
                                                                                                                j7369
                                                                                                                k7370
                                                                                                                (f7371
                                                                                                                 (real?
                                                                                                                  j7369
                                                                                                                  k7370
                                                                                                                  g7366)
                                                                                                                 (real?
                                                                                                                  j7369
                                                                                                                  k7370
                                                                                                                  g7367)
                                                                                                                 (string?
                                                                                                                  j7369
                                                                                                                  k7370
                                                                                                                  g7368))))))
                                                                                                         (if cnd
                                                                                                           (begin
                                                                                                             (lambda (j7372
                                                                                                                      k7373
                                                                                                                      f7374)
                                                                                                               (lambda ()
                                                                                                                 (world/c
                                                                                                                  j7372
                                                                                                                  k7373
                                                                                                                  (f7374)))))
                                                                                                           (if cnd
                                                                                                             (begin
                                                                                                               (lambda (j7375
                                                                                                                        k7376
                                                                                                                        f7377)
                                                                                                                 (lambda ()
                                                                                                                   (image?
                                                                                                                    j7375
                                                                                                                    k7376
                                                                                                                    (f7377)))))
                                                                                                             (if cnd
                                                                                                               (begin
                                                                                                                 (lambda (j7378
                                                                                                                          k7379
                                                                                                                          f7380)
                                                                                                                   (lambda ()
                                                                                                                     (boolean?
                                                                                                                      j7378
                                                                                                                      k7379
                                                                                                                      (f7380)))))
                                                                                                               (begin
                                                                                                                 "error"))))))
                                                                                                     x7359))
                                                                                                   (x7565
                                                                                                    (f7358
                                                                                                     x7359)))
                                                                                            (x7566
                                                                                             j7356
                                                                                             k7357
                                                                                             x7565))))
                                                                                  g7564))))
                                                                      g7563))))
                                                          g7562)))
                                                     (new-world
                                                      (lambda (player
                                                               mouse
                                                               zombies)
                                                        (letrec ((g7567
                                                                  (letrec ((x7596
                                                                            (msg))
                                                                           (x7568
                                                                            (if cnd
                                                                              (letrec ((g7569
                                                                                        (letrec ((x7574
                                                                                                  (x
                                                                                                   y
                                                                                                   me))
                                                                                                 (x7570
                                                                                                  (letrec ((x7571
                                                                                                            (letrec ((x-cnd7572
                                                                                                                      (equal?
                                                                                                                       me
                                                                                                                       "leave")))
                                                                                                              (if x-cnd7572
                                                                                                                (letrec ((x7573
                                                                                                                          (player
                                                                                                                           'posn)))
                                                                                                                  (x7573))
                                                                                                                (new-posn
                                                                                                                 x
                                                                                                                 y)))))
                                                                                                    (new-world
                                                                                                     player
                                                                                                     x7571
                                                                                                     zombies))))
                                                                                          (λ x7574
                                                                                            x7570))))
                                                                                g7569)
                                                                              (if cnd
                                                                                (letrec ((g7575
                                                                                          (letrec ((x7576
                                                                                                    (letrec ((x7583
                                                                                                              (letrec ((x7584
                                                                                                                        (player
                                                                                                                         'move-toward)))
                                                                                                                (x7584
                                                                                                                 mouse)))
                                                                                                             (x7577
                                                                                                              (letrec ((x7580
                                                                                                                        (letrec ((x7581
                                                                                                                                  (letrec ((x7582
                                                                                                                                            (zombies
                                                                                                                                             'eat-brains)))
                                                                                                                                    (x7582))))
                                                                                                                          (x7581
                                                                                                                           'move-toward)))
                                                                                                                       (x7578
                                                                                                                        (letrec ((x7579
                                                                                                                                  (player
                                                                                                                                   'posn)))
                                                                                                                          (x7579))))
                                                                                                                (x7580
                                                                                                                 x7578))))
                                                                                                      (new-world
                                                                                                       x7583
                                                                                                       mouse
                                                                                                       x7577))))
                                                                                            (λ ()
                                                                                              x7576))))
                                                                                  g7575)
                                                                                (if cnd
                                                                                  (letrec ((g7585
                                                                                            (letrec ((x7586
                                                                                                      (letrec ((x7589
                                                                                                                (player
                                                                                                                 'draw-on))
                                                                                                               (x7587
                                                                                                                (letrec ((x7588
                                                                                                                          (zombies
                                                                                                                           'draw-on)))
                                                                                                                  (x7588
                                                                                                                   MT-SCENE))))
                                                                                                        (x7589
                                                                                                         x7587))))
                                                                                              (λ ()
                                                                                                x7586))))
                                                                                    g7585)
                                                                                  (if cnd
                                                                                    (letrec ((g7590
                                                                                              (letrec ((x7591
                                                                                                        (letrec ((x7594
                                                                                                                  (zombies
                                                                                                                   'touching?))
                                                                                                                 (x7592
                                                                                                                  (letrec ((x7593
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x7593))))
                                                                                                          (x7594
                                                                                                           x7592))))
                                                                                                (λ ()
                                                                                                  x7591))))
                                                                                      g7590)
                                                                                    (letrec ((g7595
                                                                                              "unknown message"))
                                                                                      g7595)))))))
                                                                    (λ x7596
                                                                      x7568))))
                                                          g7567)))
                                                     (new-player
                                                      (lambda (p)
                                                        (letrec ((g7597
                                                                  (letrec ((x7610
                                                                            (msg))
                                                                           (x7598
                                                                            (if cnd
                                                                              (letrec ((g7599
                                                                                        (λ ()
                                                                                          p)))
                                                                                g7599)
                                                                              (if cnd
                                                                                (letrec ((g7600
                                                                                          (letrec ((x7604
                                                                                                    (q))
                                                                                                   (x7601
                                                                                                    (letrec ((x7602
                                                                                                              (letrec ((x7603
                                                                                                                        (p
                                                                                                                         'move-toward/speed)))
                                                                                                                (x7603
                                                                                                                 q
                                                                                                                 PLAYER-SPEED))))
                                                                                                      (new-player
                                                                                                       x7602))))
                                                                                            (λ x7604
                                                                                              x7601))))
                                                                                  g7600)
                                                                                (if cnd
                                                                                  (letrec ((g7605
                                                                                            (letrec ((x7608
                                                                                                      (scn))
                                                                                                     (x7606
                                                                                                      (letrec ((x7607
                                                                                                                (p
                                                                                                                 'draw-on/image)))
                                                                                                        (x7607
                                                                                                         PLAYER-IMG
                                                                                                         scn))))
                                                                                              (λ x7608
                                                                                                x7606))))
                                                                                    g7605)
                                                                                  (letrec ((g7609
                                                                                            "unknown message"))
                                                                                    g7609))))))
                                                                    (λ x7610
                                                                      x7598))))
                                                          g7597)))
                                                     (new-horde
                                                      (lambda (undead dead)
                                                        (letrec ((g7611
                                                                  (letrec ((x7637
                                                                            (msg))
                                                                           (x7612
                                                                            (if cnd
                                                                              (letrec ((g7613
                                                                                        (λ ()
                                                                                          dead)))
                                                                                g7613)
                                                                              (if cnd
                                                                                (letrec ((g7614
                                                                                          (λ ()
                                                                                            undead)))
                                                                                  g7614)
                                                                                (if cnd
                                                                                  (letrec ((g7615
                                                                                            (letrec ((x7620
                                                                                                      (scn))
                                                                                                     (x7616
                                                                                                      (letrec ((x7619
                                                                                                                (undead
                                                                                                                 'draw-on/color))
                                                                                                               (x7617
                                                                                                                (letrec ((x7618
                                                                                                                          (dead
                                                                                                                           'draw-on/color)))
                                                                                                                  (x7618
                                                                                                                   "black"
                                                                                                                   scn))))
                                                                                                        (x7619
                                                                                                         "yellow"
                                                                                                         x7617))))
                                                                                              (λ x7620
                                                                                                x7616))))
                                                                                    g7615)
                                                                                  (if cnd
                                                                                    (letrec ((g7621
                                                                                              (letrec ((x7627
                                                                                                        (p))
                                                                                                       (x7622
                                                                                                        (letrec ((x7625
                                                                                                                  (letrec ((x7626
                                                                                                                            (undead
                                                                                                                             'touching?)))
                                                                                                                    (x7626
                                                                                                                     p)))
                                                                                                                 (x7623
                                                                                                                  (letrec ((x7624
                                                                                                                            (dead
                                                                                                                             'touching?)))
                                                                                                                    (x7624
                                                                                                                     p))))
                                                                                                          (or x7625
                                                                                                              x7623))))
                                                                                                (λ x7627
                                                                                                  x7622))))
                                                                                      g7621)
                                                                                    (if cnd
                                                                                      (letrec ((g7628
                                                                                                (letrec ((x7632
                                                                                                          (p))
                                                                                                         (x7629
                                                                                                          (letrec ((x7630
                                                                                                                    (letrec ((x7631
                                                                                                                              (undead
                                                                                                                               'move-toward)))
                                                                                                                      (x7631
                                                                                                                       p))))
                                                                                                            (new-horde
                                                                                                             x7630
                                                                                                             dead))))
                                                                                                  (λ x7632
                                                                                                    x7629))))
                                                                                        g7628)
                                                                                      (if cnd
                                                                                        (letrec ((g7633
                                                                                                  (letrec ((x7634
                                                                                                            (letrec ((x7635
                                                                                                                      (undead
                                                                                                                       'kill-all)))
                                                                                                              (x7635
                                                                                                               dead))))
                                                                                                    (λ ()
                                                                                                      x7634))))
                                                                                          g7633)
                                                                                        (letrec ((g7636
                                                                                                  "unknown message"))
                                                                                          g7636)))))))))
                                                                    (λ x7637
                                                                      x7612))))
                                                          g7611)))
                                                     (new-cons-zombies
                                                      (lambda (z r)
                                                        (letrec ((g7638
                                                                  (letrec ((x7689
                                                                            (msg))
                                                                           (x7639
                                                                            (if cnd
                                                                              (letrec ((g7640
                                                                                        (letrec ((x7646
                                                                                                  (p))
                                                                                                 (x7641
                                                                                                  (letrec ((x7644
                                                                                                            (letrec ((x7645
                                                                                                                      (z
                                                                                                                       'move-toward)))
                                                                                                              (x7645
                                                                                                               p)))
                                                                                                           (x7642
                                                                                                            (letrec ((x7643
                                                                                                                      (r
                                                                                                                       'move-toward)))
                                                                                                              (x7643
                                                                                                               p))))
                                                                                                    (new-cons-zombies
                                                                                                     x7644
                                                                                                     x7642))))
                                                                                          (λ x7646
                                                                                            x7641))))
                                                                                g7640)
                                                                              (if cnd
                                                                                (letrec ((g7647
                                                                                          (letrec ((x7652
                                                                                                    (c
                                                                                                     s))
                                                                                                   (x7648
                                                                                                    (letrec ((x7651
                                                                                                              (z
                                                                                                               'draw-on/color))
                                                                                                             (x7649
                                                                                                              (letrec ((x7650
                                                                                                                        (r
                                                                                                                         'draw-on/color)))
                                                                                                                (x7650
                                                                                                                 c
                                                                                                                 s))))
                                                                                                      (x7651
                                                                                                       c
                                                                                                       x7649))))
                                                                                            (λ x7652
                                                                                              x7648))))
                                                                                  g7647)
                                                                                (if cnd
                                                                                  (letrec ((g7653
                                                                                            (letrec ((x7659
                                                                                                      (p))
                                                                                                     (x7654
                                                                                                      (letrec ((x7657
                                                                                                                (letrec ((x7658
                                                                                                                          (z
                                                                                                                           'touching?)))
                                                                                                                  (x7658
                                                                                                                   p)))
                                                                                                               (x7655
                                                                                                                (letrec ((x7656
                                                                                                                          (r
                                                                                                                           'touching?)))
                                                                                                                  (x7656
                                                                                                                   p))))
                                                                                                        (or x7657
                                                                                                            x7655))))
                                                                                              (λ x7659
                                                                                                x7654))))
                                                                                    g7653)
                                                                                  (if cnd
                                                                                    (letrec ((g7660
                                                                                              (letrec ((x7687
                                                                                                        (dead))
                                                                                                       (x7661
                                                                                                        (letrec ((x7674
                                                                                                                  (letrec ((x7678
                                                                                                                            (letrec ((x7683
                                                                                                                                      (letrec ((x7686
                                                                                                                                                (r
                                                                                                                                                 'touching?))
                                                                                                                                               (x7684
                                                                                                                                                (letrec ((x7685
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x7685))))
                                                                                                                                        (x7686
                                                                                                                                         x7684)))
                                                                                                                                     (x7679
                                                                                                                                      (letrec ((x7682
                                                                                                                                                (dead
                                                                                                                                                 'touching?))
                                                                                                                                               (x7680
                                                                                                                                                (letrec ((x7681
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x7681))))
                                                                                                                                        (x7682
                                                                                                                                         x7680))))
                                                                                                                              (or x7683
                                                                                                                                  x7679)))
                                                                                                                           (x7675
                                                                                                                            (letrec ((x7677
                                                                                                                                      (r
                                                                                                                                       'kill-all))
                                                                                                                                     (x7676
                                                                                                                                      (new-cons-zombies
                                                                                                                                       z
                                                                                                                                       dead)))
                                                                                                                              (x7677
                                                                                                                               x7676))))
                                                                                                                    (x7678
                                                                                                                     x7675)))
                                                                                                                 (x7662
                                                                                                                  (letrec ((x7663
                                                                                                                            (letrec ((x7670
                                                                                                                                      (letrec ((x7671
                                                                                                                                                (letrec ((x7672
                                                                                                                                                          (letrec ((x7673
                                                                                                                                                                    (r
                                                                                                                                                                     'kill-all)))
                                                                                                                                                            (x7673
                                                                                                                                                             dead))))
                                                                                                                                                  (res
                                                                                                                                                   x7672))))
                                                                                                                                        (x7671)))
                                                                                                                                     (x7664
                                                                                                                                      (letrec ((x7667
                                                                                                                                                (letrec ((x7668
                                                                                                                                                          (letrec ((x7669
                                                                                                                                                                    (res
                                                                                                                                                                     'undead)))
                                                                                                                                                            (x7669))))
                                                                                                                                                  (new-cons-zombies
                                                                                                                                                   z
                                                                                                                                                   x7668)))
                                                                                                                                               (x7665
                                                                                                                                                (letrec ((x7666
                                                                                                                                                          (res
                                                                                                                                                           'dead)))
                                                                                                                                                  (x7666))))
                                                                                                                                        (new-horde
                                                                                                                                         x7667
                                                                                                                                         x7665))))
                                                                                                                              (let x7670 x7664))))
                                                                                                                    (else
                                                                                                                     x7663))))
                                                                                                          (cond
                                                                                                           x7674
                                                                                                           x7662))))
                                                                                                (λ x7687
                                                                                                  x7661))))
                                                                                      g7660)
                                                                                    (letrec ((g7688
                                                                                              "unknown message"))
                                                                                      g7688)))))))
                                                                    (λ x7689
                                                                      x7639))))
                                                          g7638)))
                                                     (new-mt-zombies
                                                      (lambda ()
                                                        (letrec ((g7690
                                                                  (letrec ((x7704
                                                                            (msg))
                                                                           (x7691
                                                                            (if cnd
                                                                              (letrec ((g7692
                                                                                        (letrec ((x7694
                                                                                                  (p))
                                                                                                 (x7693
                                                                                                  (new-mt-zombies)))
                                                                                          (λ x7694
                                                                                            x7693))))
                                                                                g7692)
                                                                              (if cnd
                                                                                (letrec ((g7695
                                                                                          (letrec ((x7696
                                                                                                    (c
                                                                                                     s)))
                                                                                            (λ x7696
                                                                                              s))))
                                                                                  g7695)
                                                                                (if cnd
                                                                                  (letrec ((g7697
                                                                                            (letrec ((x7698
                                                                                                      (p)))
                                                                                              (λ x7698
                                                                                                #f))))
                                                                                    g7697)
                                                                                  (if cnd
                                                                                    (letrec ((g7699
                                                                                              (letrec ((x7702
                                                                                                        (dead))
                                                                                                       (x7700
                                                                                                        (letrec ((x7701
                                                                                                                  (new-mt-zombies)))
                                                                                                          (new-horde
                                                                                                           x7701
                                                                                                           dead))))
                                                                                                (λ x7702
                                                                                                  x7700))))
                                                                                      g7699)
                                                                                    (letrec ((g7703
                                                                                              "unknown message"))
                                                                                      g7703)))))))
                                                                    (λ x7704
                                                                      x7691))))
                                                          g7690)))
                                                     (new-zombie
                                                      (lambda (p)
                                                        (letrec ((g7705
                                                                  (letrec ((x7724
                                                                            (msg))
                                                                           (x7706
                                                                            (if cnd
                                                                              (letrec ((g7707
                                                                                        (λ ()
                                                                                          p)))
                                                                                g7707)
                                                                              (if cnd
                                                                                (letrec ((g7708
                                                                                          (letrec ((x7712
                                                                                                    (c
                                                                                                     s))
                                                                                                   (x7709
                                                                                                    (letrec ((x7711
                                                                                                              (p
                                                                                                               'draw-on/image))
                                                                                                             (x7710
                                                                                                              (circle
                                                                                                               ZOMBIE-RADIUS
                                                                                                               "solid"
                                                                                                               c)))
                                                                                                      (x7711
                                                                                                       x7710
                                                                                                       s))))
                                                                                            (λ x7712
                                                                                              x7709))))
                                                                                  g7708)
                                                                                (if cnd
                                                                                  (letrec ((g7713
                                                                                            (letrec ((x7717
                                                                                                      (q))
                                                                                                     (x7714
                                                                                                      (letrec ((x7715
                                                                                                                (letrec ((x7716
                                                                                                                          (p
                                                                                                                           'dist)))
                                                                                                                  (x7716
                                                                                                                   q))))
                                                                                                        (<=
                                                                                                         x7715
                                                                                                         ZOMBIE-RADIUS))))
                                                                                              (λ x7717
                                                                                                x7714))))
                                                                                    g7713)
                                                                                  (if cnd
                                                                                    (letrec ((g7718
                                                                                              (letrec ((x7722
                                                                                                        (q))
                                                                                                       (x7719
                                                                                                        (letrec ((x7720
                                                                                                                  (letrec ((x7721
                                                                                                                            (p
                                                                                                                             'move-toward/speed)))
                                                                                                                    (x7721
                                                                                                                     q
                                                                                                                     ZOMBIE-SPEED))))
                                                                                                          (new-zombie
                                                                                                           x7720))))
                                                                                                (λ x7722
                                                                                                  x7719))))
                                                                                      g7718)
                                                                                    (letrec ((g7723
                                                                                              "unknown message"))
                                                                                      g7723)))))))
                                                                    (λ x7724
                                                                      x7706))))
                                                          g7705)))
                                                     (new-posn
                                                      (lambda (x y)
                                                        (letrec ((g7725
                                                                  (letrec ((this
                                                                            (letrec ((x7782
                                                                                      (msg))
                                                                                     (x7726
                                                                                      (if cnd
                                                                                        (letrec ((g7727
                                                                                                  (λ ()
                                                                                                    x)))
                                                                                          g7727)
                                                                                        (if cnd
                                                                                          (letrec ((g7728
                                                                                                    (λ ()
                                                                                                      y)))
                                                                                            g7728)
                                                                                          (if cnd
                                                                                            (letrec ((g7729
                                                                                                      (λ ()
                                                                                                        this)))
                                                                                              g7729)
                                                                                            (if cnd
                                                                                              (letrec ((g7730
                                                                                                        (letrec ((x7760
                                                                                                                  (p
                                                                                                                   speed))
                                                                                                                 (x7731
                                                                                                                  (letrec ((x7746
                                                                                                                            (letrec ((x7756
                                                                                                                                      (letrec ((x7757
                                                                                                                                                (letrec ((x7758
                                                                                                                                                          (letrec ((x7759
                                                                                                                                                                    (p
                                                                                                                                                                     'x)))
                                                                                                                                                            (x7759))))
                                                                                                                                                  (-
                                                                                                                                                   x7758
                                                                                                                                                   x))))
                                                                                                                                        (δx
                                                                                                                                         x7757)))
                                                                                                                                     (x7752
                                                                                                                                      (letrec ((x7753
                                                                                                                                                (letrec ((x7754
                                                                                                                                                          (letrec ((x7755
                                                                                                                                                                    (p
                                                                                                                                                                     'y)))
                                                                                                                                                            (x7755))))
                                                                                                                                                  (-
                                                                                                                                                   x7754
                                                                                                                                                   y))))
                                                                                                                                        (δy
                                                                                                                                         x7753)))
                                                                                                                                     (x7747
                                                                                                                                      (letrec ((x7748
                                                                                                                                                (letrec ((x7749
                                                                                                                                                          (letrec ((x7751
                                                                                                                                                                    (abs
                                                                                                                                                                     δx))
                                                                                                                                                                   (x7750
                                                                                                                                                                    (abs
                                                                                                                                                                     δy)))
                                                                                                                                                            (max
                                                                                                                                                             x7751
                                                                                                                                                             x7750))))
                                                                                                                                                  (min
                                                                                                                                                   speed
                                                                                                                                                   x7749))))
                                                                                                                                        (move-distance
                                                                                                                                         x7748))))
                                                                                                                              (x7756
                                                                                                                               x7752
                                                                                                                               x7747)))
                                                                                                                           (x7732
                                                                                                                            (letrec ((x7738
                                                                                                                                      (letrec ((x7743
                                                                                                                                                (letrec ((x7745
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x7744
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (<
                                                                                                                                                   x7745
                                                                                                                                                   x7744)))
                                                                                                                                               (x7739
                                                                                                                                                (letrec ((x7742
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x7740
                                                                                                                                                          (letrec ((x-cnd7741
                                                                                                                                                                    (positive?
                                                                                                                                                                     δy)))
                                                                                                                                                            (if x-cnd7741
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x7742
                                                                                                                                                   0
                                                                                                                                                   x7740))))
                                                                                                                                        (x7743
                                                                                                                                         x7739)))
                                                                                                                                     (x7733
                                                                                                                                      (letrec ((x7734
                                                                                                                                                (letrec ((x7737
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x7735
                                                                                                                                                          (letrec ((x-cnd7736
                                                                                                                                                                    (positive?
                                                                                                                                                                     δx)))
                                                                                                                                                            (if x-cnd7736
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x7737
                                                                                                                                                   x7735
                                                                                                                                                   0))))
                                                                                                                                        (else
                                                                                                                                         x7734))))
                                                                                                                              (cond
                                                                                                                               x7738
                                                                                                                               x7733))))
                                                                                                                    (let* x7746 x7732))))
                                                                                                          (λ x7760
                                                                                                            x7731))))
                                                                                                g7730)
                                                                                              (if cnd
                                                                                                (letrec ((g7761
                                                                                                          (letrec ((x7765
                                                                                                                    (δx
                                                                                                                     δy))
                                                                                                                   (x7762
                                                                                                                    (letrec ((x7764
                                                                                                                              (+
                                                                                                                               x
                                                                                                                               δx))
                                                                                                                             (x7763
                                                                                                                              (+
                                                                                                                               y
                                                                                                                               δy)))
                                                                                                                      (new-posn
                                                                                                                       x7764
                                                                                                                       x7763))))
                                                                                                            (λ x7765
                                                                                                              x7762))))
                                                                                                  g7761)
                                                                                                (if cnd
                                                                                                  (letrec ((g7766
                                                                                                            (letrec ((x7768
                                                                                                                      (img
                                                                                                                       scn))
                                                                                                                     (x7767
                                                                                                                      (place-image
                                                                                                                       img
                                                                                                                       x
                                                                                                                       y
                                                                                                                       scn)))
                                                                                                              (λ x7768
                                                                                                                x7767))))
                                                                                                    g7766)
                                                                                                  (if cnd
                                                                                                    (letrec ((g7769
                                                                                                              (letrec ((x7780
                                                                                                                        (p))
                                                                                                                       (x7770
                                                                                                                        (letrec ((x7771
                                                                                                                                  (letrec ((x7776
                                                                                                                                            (letrec ((x7777
                                                                                                                                                      (letrec ((x7778
                                                                                                                                                                (letrec ((x7779
                                                                                                                                                                          (p
                                                                                                                                                                           'y)))
                                                                                                                                                                  (x7779))))
                                                                                                                                                        (-
                                                                                                                                                         x7778
                                                                                                                                                         y))))
                                                                                                                                              (sqr
                                                                                                                                               x7777)))
                                                                                                                                           (x7772
                                                                                                                                            (letrec ((x7773
                                                                                                                                                      (letrec ((x7774
                                                                                                                                                                (letrec ((x7775
                                                                                                                                                                          (p
                                                                                                                                                                           'x)))
                                                                                                                                                                  (x7775))))
                                                                                                                                                        (-
                                                                                                                                                         x7774
                                                                                                                                                         x))))
                                                                                                                                              (sqr
                                                                                                                                               x7773))))
                                                                                                                                    (+
                                                                                                                                     x7776
                                                                                                                                     x7772))))
                                                                                                                          (sqrt
                                                                                                                           x7771))))
                                                                                                                (λ x7780
                                                                                                                  x7770))))
                                                                                                      g7769)
                                                                                                    (letrec ((g7781
                                                                                                              "unknown message"))
                                                                                                      g7781))))))))))
                                                                              (λ x7782
                                                                                x7726))))
                                                                    (letrec ((g7783
                                                                              this))
                                                                      g7783))))
                                                          g7725)))
                                                     (w0
                                                      (letrec ((x7797
                                                                (letrec ((x7798
                                                                          (new-posn
                                                                           0
                                                                           0)))
                                                                  (new-player
                                                                   x7798)))
                                                               (x7796
                                                                (new-posn 0 0))
                                                               (x7784
                                                                (letrec ((x7789
                                                                          (letrec ((x7794
                                                                                    (letrec ((x7795
                                                                                              (new-posn
                                                                                               100
                                                                                               300)))
                                                                                      (new-zombie
                                                                                       x7795)))
                                                                                   (x7790
                                                                                    (letrec ((x7792
                                                                                              (letrec ((x7793
                                                                                                        (new-posn
                                                                                                         100
                                                                                                         200)))
                                                                                                (new-zombie
                                                                                                 x7793)))
                                                                                             (x7791
                                                                                              (new-mt-zombies)))
                                                                                      (new-cons-zombies
                                                                                       x7792
                                                                                       x7791))))
                                                                            (new-cons-zombies
                                                                             x7794
                                                                             x7790)))
                                                                         (x7785
                                                                          (letrec ((x7787
                                                                                    (letrec ((x7788
                                                                                              (new-posn
                                                                                               200
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x7788)))
                                                                                   (x7786
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x7787
                                                                             x7786))))
                                                                  (new-horde
                                                                   x7789
                                                                   x7785))))
                                                        (new-world
                                                         x7797
                                                         x7796
                                                         x7784))))
                                              (letrec ((g7799
                                                        (letrec ((g7800
                                                                  (letrec ((g7801
                                                                            (letrec ((x7814
                                                                                      ((lambda (j7382
                                                                                                k7383
                                                                                                f7384)
                                                                                         (lambda (g7381)
                                                                                           (boolean?/c
                                                                                            j7382
                                                                                            k7383
                                                                                            (f7384
                                                                                             (any/c
                                                                                              j7382
                                                                                              k7383
                                                                                              g7381)))))
                                                                                       'module
                                                                                       'importer
                                                                                       image?))
                                                                                     (x7813
                                                                                      (input)))
                                                                              (x7814
                                                                               x7813)))
                                                                           (g7802
                                                                            (letrec ((x7817
                                                                                      ((lambda (j7387
                                                                                                k7388
                                                                                                f7389)
                                                                                         (lambda (g7385
                                                                                                  g7386)
                                                                                           (image?
                                                                                            j7387
                                                                                            k7388
                                                                                            (f7389
                                                                                             (real?/c
                                                                                              j7387
                                                                                              k7388
                                                                                              g7385)
                                                                                             (real?/c
                                                                                              j7387
                                                                                              k7388
                                                                                              g7386)))))
                                                                                       'module
                                                                                       'importer
                                                                                       empty-scene))
                                                                                     (x7816
                                                                                      (input))
                                                                                     (x7815
                                                                                      (input)))
                                                                              (x7817
                                                                               x7816
                                                                               x7815)))
                                                                           (g7803
                                                                            (letrec ((x7822
                                                                                      ((lambda (j7394
                                                                                                k7395
                                                                                                f7396)
                                                                                         (lambda (g7390
                                                                                                  g7391
                                                                                                  g7392
                                                                                                  g7393)
                                                                                           (image?
                                                                                            j7394
                                                                                            k7395
                                                                                            (f7396
                                                                                             (image?/c
                                                                                              j7394
                                                                                              k7395
                                                                                              g7390)
                                                                                             (real?/c
                                                                                              j7394
                                                                                              k7395
                                                                                              g7391)
                                                                                             (real?/c
                                                                                              j7394
                                                                                              k7395
                                                                                              g7392)
                                                                                             (image?
                                                                                              j7394
                                                                                              k7395
                                                                                              g7393)))))
                                                                                       'module
                                                                                       'importer
                                                                                       place-image))
                                                                                     (x7821
                                                                                      (input))
                                                                                     (x7820
                                                                                      (input))
                                                                                     (x7819
                                                                                      (input))
                                                                                     (x7818
                                                                                      (input)))
                                                                              (x7822
                                                                               x7821
                                                                               x7820
                                                                               x7819
                                                                               x7818)))
                                                                           (g7804
                                                                            (letrec ((x7826
                                                                                      ((lambda (j7400
                                                                                                k7401
                                                                                                f7402)
                                                                                         (lambda (g7397
                                                                                                  g7398
                                                                                                  g7399)
                                                                                           (image?
                                                                                            j7400
                                                                                            k7401
                                                                                            (f7402
                                                                                             (real?/c
                                                                                              j7400
                                                                                              k7401
                                                                                              g7397)
                                                                                             (string?/c
                                                                                              j7400
                                                                                              k7401
                                                                                              g7398)
                                                                                             (string?/c
                                                                                              j7400
                                                                                              k7401
                                                                                              g7399)))))
                                                                                       'module
                                                                                       'importer
                                                                                       circle))
                                                                                     (x7825
                                                                                      (input))
                                                                                     (x7824
                                                                                      (input))
                                                                                     (x7823
                                                                                      (input)))
                                                                              (x7826
                                                                               x7825
                                                                               x7824
                                                                               x7823)))
                                                                           (g7805
                                                                            (letrec ((x7830
                                                                                      ((lambda (j7406
                                                                                                k7407
                                                                                                f7408)
                                                                                         (lambda (g7403
                                                                                                  g7404
                                                                                                  g7405)
                                                                                           (world/c
                                                                                            j7406
                                                                                            k7407
                                                                                            (f7408
                                                                                             (player/c
                                                                                              j7406
                                                                                              k7407
                                                                                              g7403)
                                                                                             (posn/c
                                                                                              j7406
                                                                                              k7407
                                                                                              g7404)
                                                                                             (horde/c
                                                                                              j7406
                                                                                              k7407
                                                                                              g7405)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-world))
                                                                                     (x7829
                                                                                      (input))
                                                                                     (x7828
                                                                                      (input))
                                                                                     (x7827
                                                                                      (input)))
                                                                              (x7830
                                                                               x7829
                                                                               x7828
                                                                               x7827)))
                                                                           (g7806
                                                                            (letrec ((x7832
                                                                                      ((lambda (j7410
                                                                                                k7411
                                                                                                f7412)
                                                                                         (lambda (g7409)
                                                                                           (player/c
                                                                                            j7410
                                                                                            k7411
                                                                                            (f7412
                                                                                             (posn/c
                                                                                              j7410
                                                                                              k7411
                                                                                              g7409)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-player))
                                                                                     (x7831
                                                                                      (input)))
                                                                              (x7832
                                                                               x7831)))
                                                                           (g7807
                                                                            (letrec ((x7835
                                                                                      ((lambda (j7415
                                                                                                k7416
                                                                                                f7417)
                                                                                         (lambda (g7413
                                                                                                  g7414)
                                                                                           (horde/c
                                                                                            j7415
                                                                                            k7416
                                                                                            (f7417
                                                                                             (zombies/c
                                                                                              j7415
                                                                                              k7416
                                                                                              g7413)
                                                                                             (zombies/c
                                                                                              j7415
                                                                                              k7416
                                                                                              g7414)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-horde))
                                                                                     (x7834
                                                                                      (input))
                                                                                     (x7833
                                                                                      (input)))
                                                                              (x7835
                                                                               x7834
                                                                               x7833)))
                                                                           (g7808
                                                                            (letrec ((x7838
                                                                                      ((lambda (j7420
                                                                                                k7421
                                                                                                f7422)
                                                                                         (lambda (g7418
                                                                                                  g7419)
                                                                                           (zombies/c
                                                                                            j7420
                                                                                            k7421
                                                                                            (f7422
                                                                                             (zombie/c
                                                                                              j7420
                                                                                              k7421
                                                                                              g7418)
                                                                                             (zombies/c
                                                                                              j7420
                                                                                              k7421
                                                                                              g7419)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-cons-zombies))
                                                                                     (x7837
                                                                                      (input))
                                                                                     (x7836
                                                                                      (input)))
                                                                              (x7838
                                                                               x7837
                                                                               x7836)))
                                                                           (g7809
                                                                            ((lambda (j7423
                                                                                      k7424
                                                                                      f7425)
                                                                               (lambda ()
                                                                                 (zombies/c
                                                                                  j7423
                                                                                  k7424
                                                                                  (f7425))))
                                                                             'module
                                                                             'importer
                                                                             new-mt-zombies))
                                                                           (g7810
                                                                            (letrec ((x7840
                                                                                      ((lambda (j7427
                                                                                                k7428
                                                                                                f7429)
                                                                                         (lambda (g7426)
                                                                                           (zombie/c
                                                                                            j7427
                                                                                            k7428
                                                                                            (f7429
                                                                                             (posn/c
                                                                                              j7427
                                                                                              k7428
                                                                                              g7426)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-zombie))
                                                                                     (x7839
                                                                                      (input)))
                                                                              (x7840
                                                                               x7839)))
                                                                           (g7811
                                                                            (letrec ((x7843
                                                                                      ((lambda (j7432
                                                                                                k7433
                                                                                                f7434)
                                                                                         (lambda (g7430
                                                                                                  g7431)
                                                                                           (posn/c
                                                                                            j7432
                                                                                            k7433
                                                                                            (f7434
                                                                                             (real?/c
                                                                                              j7432
                                                                                              k7433
                                                                                              g7430)
                                                                                             (real?/c
                                                                                              j7432
                                                                                              k7433
                                                                                              g7431)))))
                                                                                       'module
                                                                                       'importer
                                                                                       new-posn))
                                                                                     (x7842
                                                                                      (input))
                                                                                     (x7841
                                                                                      (input)))
                                                                              (x7843
                                                                               x7842
                                                                               x7841)))
                                                                           (g7812
                                                                            (world/c
                                                                             'module
                                                                             'importer
                                                                             w0)))
                                                                    g7812)))
                                                          g7800)))
                                                g7799))))
                                    g7520)))
                          g7519))))
              g7448)))
    g7446))
