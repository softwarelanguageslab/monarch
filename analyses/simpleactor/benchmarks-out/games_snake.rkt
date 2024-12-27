(letrec ((any? (lambda (v) (letrec ((g7334 #t)) g7334)))
         (meta (lambda (v) (letrec ((g7335 v)) g7335)))
         (member
          (lambda (v lst)
            (letrec ((g7336
                      (letrec ((g7337
                                (letrec ((x-e7338 lst))
                                  (match
                                   x-e7338
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7339 (eq? v v1)))
                                       (if x-cnd7339 #t (member v vs)))))))))
                        g7337)))
              g7336)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7340 (lambda (v) (letrec ((g7341 v)) g7341)))) g7340)))
         (nonzero?
          (lambda (v)
            (letrec ((g7342 (letrec ((x7343 (= v 0))) (not x7343)))) g7342))))
  (letrec ((g7344
            (letrec ((g7345
                      (letrec ((g7347
                                (letrec ((real/c
                                          (lambda (g7147 g7148 g7149)
                                            (letrec ((g7348
                                                      (letrec ((x-cnd7349
                                                                (real? g7149)))
                                                        (if x-cnd7349
                                                          g7149
                                                          (blame
                                                           g7147
                                                           'real?)))))
                                              g7348)))
                                         (boolean?/c
                                          (lambda (g7150 g7151 g7152)
                                            (letrec ((g7350
                                                      (letrec ((x-cnd7351
                                                                (boolean?
                                                                 g7152)))
                                                        (if x-cnd7351
                                                          g7152
                                                          (blame
                                                           g7150
                                                           'boolean?)))))
                                              g7350)))
                                         (number?/c
                                          (lambda (g7153 g7154 g7155)
                                            (letrec ((g7352
                                                      (letrec ((x-cnd7353
                                                                (number?
                                                                 g7155)))
                                                        (if x-cnd7353
                                                          g7155
                                                          (blame
                                                           g7153
                                                           'number?)))))
                                              g7352)))
                                         (any/c
                                          (lambda (g7156 g7157 g7158)
                                            (letrec ((g7354
                                                      (letrec ((x-cnd7355
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7158)))
                                                        (if x-cnd7355
                                                          g7158
                                                          (blame
                                                           g7156
                                                           '(lambda (v)
                                                              #t))))))
                                              g7354)))
                                         (any?/c
                                          (lambda (g7159 g7160 g7161)
                                            (letrec ((g7356
                                                      (letrec ((x-cnd7357
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7161)))
                                                        (if x-cnd7357
                                                          g7161
                                                          (blame
                                                           g7159
                                                           '(lambda (v)
                                                              #t))))))
                                              g7356)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7162 g7163 g7164)
                                            (letrec ((g7358
                                                      (letrec ((x-cnd7359
                                                                (pair? g7164)))
                                                        (if x-cnd7359
                                                          g7164
                                                          (blame
                                                           g7162
                                                           'pair?)))))
                                              g7358)))
                                         (pair?/c
                                          (lambda (g7165 g7166 g7167)
                                            (letrec ((g7360
                                                      (letrec ((x-cnd7361
                                                                (pair? g7167)))
                                                        (if x-cnd7361
                                                          g7167
                                                          (blame
                                                           g7165
                                                           'pair?)))))
                                              g7360)))
                                         (integer?
                                          (lambda (g7168 g7169 g7170)
                                            (letrec ((g7362
                                                      (letrec ((x-cnd7363
                                                                (integer?
                                                                 g7170)))
                                                        (if x-cnd7363
                                                          g7170
                                                          (blame
                                                           g7168
                                                           'integer?)))))
                                              g7362)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7364
                                                      (lambda (k j v)
                                                        (letrec ((g7365
                                                                  (letrec ((x-cnd7366
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7366
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7365))))
                                              g7364)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7367
                                                      (lambda (k j v)
                                                        (letrec ((g7368
                                                                  (letrec ((x-cnd7369
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7369
                                                                      '()
                                                                      (letrec ((x7373
                                                                                (letrec ((x7374
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7374)))
                                                                               (x7370
                                                                                (letrec ((x7372
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7371
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7372
                                                                                   k
                                                                                   j
                                                                                   x7371))))
                                                                        (cons
                                                                         x7373
                                                                         x7370))))))
                                                          g7368))))
                                              g7367)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7375 #t)) g7375)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7376
                                                      (letrec ((x7377 (= v 0)))
                                                        (not x7377))))
                                              g7376)))
                                         (nonzero?/c
                                          (lambda (g7171 g7172 g7173)
                                            (letrec ((g7378
                                                      (letrec ((x-cnd7379
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7173)))
                                                        (if x-cnd7379
                                                          g7173
                                                          (blame
                                                           g7171
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7378)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7380 v)) g7380)))
                                         (+
                                          ((lambda (j7176 k7177 f7178)
                                             (lambda (g7174 g7175)
                                               (number?/c
                                                j7176
                                                k7177
                                                (f7178
                                                 (number?/c j7176 k7177 g7174)
                                                 (number?/c
                                                  j7176
                                                  k7177
                                                  g7175)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-+ a b))))
                                         (-
                                          ((lambda (j7181 k7182 f7183)
                                             (lambda (g7179 g7180)
                                               (number?/c
                                                j7181
                                                k7182
                                                (f7183
                                                 (number?/c j7181 k7182 g7179)
                                                 (number?/c
                                                  j7181
                                                  k7182
                                                  g7180)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-- a b))))
                                         (*
                                          ((lambda (j7186 k7187 f7188)
                                             (lambda (g7184 g7185)
                                               (number?/c
                                                j7186
                                                k7187
                                                (f7188
                                                 (number?/c j7186 k7187 g7184)
                                                 (number?/c
                                                  j7186
                                                  k7187
                                                  g7185)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-* a b))))
                                         (/
                                          ((lambda (j7191 k7192 f7193)
                                             (lambda (g7189 g7190)
                                               (number?/c
                                                j7191
                                                k7192
                                                (f7193
                                                 (number?/c j7191 k7192 g7189)
                                                 (number?/c
                                                  j7191
                                                  k7192
                                                  g7190)))))
                                           'server
                                           'client
                                           (lambda (a b) (orig-/ a b))))
                                         (car
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
                                           (lambda (p) (orig-car p))))
                                         (cdr
                                          ((lambda (j7199 k7200 f7201)
                                             (lambda (g7198)
                                               (any/c
                                                j7199
                                                k7200
                                                (f7201
                                                 (pair?/c
                                                  j7199
                                                  k7200
                                                  g7198)))))
                                           'server
                                           'client
                                           (lambda (p) (orig-cdr p))))
                                         (cons
                                          ((lambda (j7204 k7205 f7206)
                                             (lambda (g7202 g7203)
                                               (pair?/c
                                                j7204
                                                k7205
                                                (f7206
                                                 (any/c j7204 k7205 g7202)
                                                 (any/c j7204 k7205 g7203)))))
                                           'server
                                           'client
                                           (lambda (a b) (cons a b))))
                                         (vector-ref
                                          ((lambda (j7208 k7209 f7210)
                                             (lambda (g7207)
                                               (integer?/c
                                                j7208
                                                k7209
                                                (f7210
                                                 (vector?/c
                                                  j7208
                                                  k7209
                                                  g7207)))))
                                           'server
                                           'client
                                           (lambda (v i)
                                             (orig-vector-ref v i))))
                                         (vector-set!
                                          ((lambda (j7213 k7214 f7215)
                                             (lambda (g7211 g7212)
                                               (any/c
                                                j7213
                                                k7214
                                                (f7215
                                                 (vector?/c j7213 k7214 g7211)
                                                 (integer?/c
                                                  j7213
                                                  k7214
                                                  g7212)))))
                                           'server
                                           'client
                                           (lambda (vec i v)
                                             (orig-vector-set! vec i v))))
                                         (assert
                                          (lambda (cnd)
                                            (letrec ((g7381 #t)) g7381)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7382 '())) g7382))))
                        g7347))
                     (g7346
                      (letrec ((real/c
                                (lambda (g7147 g7148 g7149)
                                  (letrec ((g7383
                                            (letrec ((x-cnd7384 (real? g7149)))
                                              (if x-cnd7384
                                                g7149
                                                (blame g7147 'real?)))))
                                    g7383)))
                               (boolean?/c
                                (lambda (g7150 g7151 g7152)
                                  (letrec ((g7385
                                            (letrec ((x-cnd7386
                                                      (boolean? g7152)))
                                              (if x-cnd7386
                                                g7152
                                                (blame g7150 'boolean?)))))
                                    g7385)))
                               (number?/c
                                (lambda (g7153 g7154 g7155)
                                  (letrec ((g7387
                                            (letrec ((x-cnd7388
                                                      (number? g7155)))
                                              (if x-cnd7388
                                                g7155
                                                (blame g7153 'number?)))))
                                    g7387)))
                               (any/c
                                (lambda (g7156 g7157 g7158)
                                  (letrec ((g7389
                                            (letrec ((x-cnd7390
                                                      ((lambda (v) #t) g7158)))
                                              (if x-cnd7390
                                                g7158
                                                (blame
                                                 g7156
                                                 '(lambda (v) #t))))))
                                    g7389)))
                               (any?/c
                                (lambda (g7159 g7160 g7161)
                                  (letrec ((g7391
                                            (letrec ((x-cnd7392
                                                      ((lambda (v) #t) g7161)))
                                              (if x-cnd7392
                                                g7161
                                                (blame
                                                 g7159
                                                 '(lambda (v) #t))))))
                                    g7391)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7162 g7163 g7164)
                                  (letrec ((g7393
                                            (letrec ((x-cnd7394 (pair? g7164)))
                                              (if x-cnd7394
                                                g7164
                                                (blame g7162 'pair?)))))
                                    g7393)))
                               (pair?/c
                                (lambda (g7165 g7166 g7167)
                                  (letrec ((g7395
                                            (letrec ((x-cnd7396 (pair? g7167)))
                                              (if x-cnd7396
                                                g7167
                                                (blame g7165 'pair?)))))
                                    g7395)))
                               (integer?
                                (lambda (g7168 g7169 g7170)
                                  (letrec ((g7397
                                            (letrec ((x-cnd7398
                                                      (integer? g7170)))
                                              (if x-cnd7398
                                                g7170
                                                (blame g7168 'integer?)))))
                                    g7397)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7399
                                            (lambda (k j v)
                                              (letrec ((g7400
                                                        (letrec ((x-cnd7401
                                                                  (c1 k j v)))
                                                          (if x-cnd7401
                                                            (c2 k j v)
                                                            #f))))
                                                g7400))))
                                    g7399)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7402
                                            (lambda (k j v)
                                              (letrec ((g7403
                                                        (letrec ((x-cnd7404
                                                                  (null? v)))
                                                          (if x-cnd7404
                                                            '()
                                                            (letrec ((x7408
                                                                      (letrec ((x7409
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7409)))
                                                                     (x7405
                                                                      (letrec ((x7407
                                                                                (list-of
                                                                                 contract))
                                                                               (x7406
                                                                                (cdr
                                                                                 v)))
                                                                        (x7407
                                                                         k
                                                                         j
                                                                         x7406))))
                                                              (cons
                                                               x7408
                                                               x7405))))))
                                                g7403))))
                                    g7402)))
                               (any? (lambda (v) (letrec ((g7410 #t)) g7410)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7411
                                            (letrec ((x7412 (= v 0)))
                                              (not x7412))))
                                    g7411)))
                               (nonzero?/c
                                (lambda (g7171 g7172 g7173)
                                  (letrec ((g7413
                                            (letrec ((x-cnd7414
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7173)))
                                              (if x-cnd7414
                                                g7173
                                                (blame
                                                 g7171
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7413)))
                               (meta (lambda (v) (letrec ((g7415 v)) g7415)))
                               (+
                                ((lambda (j7176 k7177 f7178)
                                   (lambda (g7174 g7175)
                                     (number?/c
                                      j7176
                                      k7177
                                      (f7178
                                       (number?/c j7176 k7177 g7174)
                                       (number?/c j7176 k7177 g7175)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-+ a b))))
                               (-
                                ((lambda (j7181 k7182 f7183)
                                   (lambda (g7179 g7180)
                                     (number?/c
                                      j7181
                                      k7182
                                      (f7183
                                       (number?/c j7181 k7182 g7179)
                                       (number?/c j7181 k7182 g7180)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-- a b))))
                               (*
                                ((lambda (j7186 k7187 f7188)
                                   (lambda (g7184 g7185)
                                     (number?/c
                                      j7186
                                      k7187
                                      (f7188
                                       (number?/c j7186 k7187 g7184)
                                       (number?/c j7186 k7187 g7185)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-* a b))))
                               (/
                                ((lambda (j7191 k7192 f7193)
                                   (lambda (g7189 g7190)
                                     (number?/c
                                      j7191
                                      k7192
                                      (f7193
                                       (number?/c j7191 k7192 g7189)
                                       (number?/c j7191 k7192 g7190)))))
                                 'server
                                 'client
                                 (lambda (a b) (orig-/ a b))))
                               (car
                                ((lambda (j7195 k7196 f7197)
                                   (lambda (g7194)
                                     (any/c
                                      j7195
                                      k7196
                                      (f7197 (pair?/c j7195 k7196 g7194)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-car p))))
                               (cdr
                                ((lambda (j7199 k7200 f7201)
                                   (lambda (g7198)
                                     (any/c
                                      j7199
                                      k7200
                                      (f7201 (pair?/c j7199 k7200 g7198)))))
                                 'server
                                 'client
                                 (lambda (p) (orig-cdr p))))
                               (cons
                                ((lambda (j7204 k7205 f7206)
                                   (lambda (g7202 g7203)
                                     (pair?/c
                                      j7204
                                      k7205
                                      (f7206
                                       (any/c j7204 k7205 g7202)
                                       (any/c j7204 k7205 g7203)))))
                                 'server
                                 'client
                                 (lambda (a b) (cons a b))))
                               (vector-ref
                                ((lambda (j7208 k7209 f7210)
                                   (lambda (g7207)
                                     (integer?/c
                                      j7208
                                      k7209
                                      (f7210 (vector?/c j7208 k7209 g7207)))))
                                 'server
                                 'client
                                 (lambda (v i) (orig-vector-ref v i))))
                               (vector-set!
                                ((lambda (j7213 k7214 f7215)
                                   (lambda (g7211 g7212)
                                     (any/c
                                      j7213
                                      k7214
                                      (f7215
                                       (vector?/c j7213 k7214 g7211)
                                       (integer?/c j7213 k7214 g7212)))))
                                 'server
                                 'client
                                 (lambda (vec i v)
                                   (orig-vector-set! vec i v))))
                               (assert
                                (lambda (cnd) (letrec ((g7416 #t)) g7416))))
                        (letrec ((g7417
                                  (letrec ((g7418
                                            (letrec ((image
                                                      (lambda ()
                                                        (letrec ((g7419
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g7419)))
                                                     (image?
                                                      (lambda (image7318)
                                                        (letrec ((g7420
                                                                  (letrec ((x7421
                                                                            (car
                                                                             image7318)))
                                                                    (eq?
                                                                     x7421
                                                                     'image))))
                                                          g7420)))
                                                     (image
                                                      (lambda ()
                                                        (letrec ((g7422
                                                                  (cons
                                                                   'image
                                                                   '())))
                                                          g7422)))
                                                     (image?
                                                      (lambda (image7318)
                                                        (letrec ((g7423
                                                                  (letrec ((x7424
                                                                            (car
                                                                             image7318)))
                                                                    (eq?
                                                                     x7424
                                                                     'image))))
                                                          g7423)))
                                                     (image/c
                                                      (lambda (j7217
                                                               k7218
                                                               v7216)
                                                        (letrec ((g7425
                                                                  (cons
                                                                   image
                                                                   '())))
                                                          g7425)))
                                                     (circle
                                                      (lambda (r m c)
                                                        (letrec ((g7426
                                                                  (image)))
                                                          g7426)))
                                                     (empty-scene
                                                      (lambda (w h)
                                                        (letrec ((g7427
                                                                  (image)))
                                                          g7427)))
                                                     (place-image
                                                      (lambda (i₁ r c i₂)
                                                        (letrec ((g7428
                                                                  (image)))
                                                          g7428))))
                                              (letrec ((g7429
                                                        (letrec ((posn
                                                                  (lambda (x7320
                                                                           y7321)
                                                                    (letrec ((g7430
                                                                              (letrec ((x7431
                                                                                        (letrec ((x7432
                                                                                                  (cons
                                                                                                   y7321
                                                                                                   '())))
                                                                                          (cons
                                                                                           x7320
                                                                                           x7432))))
                                                                                (cons
                                                                                 'posn
                                                                                 x7431))))
                                                                      g7430)))
                                                                 (posn?
                                                                  (lambda (posn7319)
                                                                    (letrec ((g7433
                                                                              (letrec ((x7434
                                                                                        (car
                                                                                         posn7319)))
                                                                                (eq?
                                                                                 x7434
                                                                                 'posn))))
                                                                      g7433)))
                                                                 (posn-x
                                                                  (lambda (posn)
                                                                    (letrec ((g7435
                                                                              (letrec ((x7436
                                                                                        (cdr
                                                                                         posn)))
                                                                                (car
                                                                                 x7436))))
                                                                      g7435)))
                                                                 (posn-y
                                                                  (lambda (posn)
                                                                    (letrec ((g7437
                                                                              (letrec ((x7438
                                                                                        (letrec ((x7439
                                                                                                  (cdr
                                                                                                   posn)))
                                                                                          (cdr
                                                                                           x7439))))
                                                                                (car
                                                                                 x7438))))
                                                                      g7437)))
                                                                 (posn
                                                                  (lambda (x7320
                                                                           y7321)
                                                                    (letrec ((g7440
                                                                              (letrec ((x7441
                                                                                        (letrec ((x7442
                                                                                                  (cons
                                                                                                   y7321
                                                                                                   '())))
                                                                                          (cons
                                                                                           x7320
                                                                                           x7442))))
                                                                                (cons
                                                                                 'posn
                                                                                 x7441))))
                                                                      g7440)))
                                                                 (posn?
                                                                  (lambda (posn7319)
                                                                    (letrec ((g7443
                                                                              (letrec ((x7444
                                                                                        (car
                                                                                         posn7319)))
                                                                                (eq?
                                                                                 x7444
                                                                                 'posn))))
                                                                      g7443)))
                                                                 (posn-x
                                                                  (lambda (posn)
                                                                    (letrec ((g7445
                                                                              (letrec ((x7446
                                                                                        (cdr
                                                                                         posn)))
                                                                                (car
                                                                                 x7446))))
                                                                      g7445)))
                                                                 (posn-y
                                                                  (lambda (posn)
                                                                    (letrec ((g7447
                                                                              (letrec ((x7448
                                                                                        (letrec ((x7449
                                                                                                  (cdr
                                                                                                   posn)))
                                                                                          (cdr
                                                                                           x7449))))
                                                                                (car
                                                                                 x7448))))
                                                                      g7447)))
                                                                 (posn=?
                                                                  (lambda (p1
                                                                           p2)
                                                                    (letrec ((g7450
                                                                              (letrec ((x-cnd7451
                                                                                        (letrec ((x7453
                                                                                                  (posn-x
                                                                                                   p1))
                                                                                                 (x7452
                                                                                                  (posn-x
                                                                                                   p2)))
                                                                                          (=
                                                                                           x7453
                                                                                           x7452))))
                                                                                (if x-cnd7451
                                                                                  (letrec ((x7455
                                                                                            (posn-y
                                                                                             p1))
                                                                                           (x7454
                                                                                            (posn-y
                                                                                             p2)))
                                                                                    (=
                                                                                     x7455
                                                                                     x7454))
                                                                                  #f))))
                                                                      g7450))))
                                                          (letrec ((g7456
                                                                    (letrec ((snake
                                                                              (lambda (dir7325
                                                                                       segs7326)
                                                                                (letrec ((g7457
                                                                                          (letrec ((x7458
                                                                                                    (letrec ((x7459
                                                                                                              (cons
                                                                                                               segs7326
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       dir7325
                                                                                                       x7459))))
                                                                                            (cons
                                                                                             'snake
                                                                                             x7458))))
                                                                                  g7457)))
                                                                             (snake?
                                                                              (lambda (snake7324)
                                                                                (letrec ((g7460
                                                                                          (letrec ((x7461
                                                                                                    (car
                                                                                                     snake7324)))
                                                                                            (eq?
                                                                                             x7461
                                                                                             'snake))))
                                                                                  g7460)))
                                                                             (snake-dir
                                                                              (lambda (snake)
                                                                                (letrec ((g7462
                                                                                          (letrec ((x7463
                                                                                                    (cdr
                                                                                                     snake)))
                                                                                            (car
                                                                                             x7463))))
                                                                                  g7462)))
                                                                             (snake-segs
                                                                              (lambda (snake)
                                                                                (letrec ((g7464
                                                                                          (letrec ((x7465
                                                                                                    (letrec ((x7466
                                                                                                              (cdr
                                                                                                               snake)))
                                                                                                      (cdr
                                                                                                       x7466))))
                                                                                            (car
                                                                                             x7465))))
                                                                                  g7464)))
                                                                             (snake
                                                                              (lambda (dir7325
                                                                                       segs7326)
                                                                                (letrec ((g7467
                                                                                          (letrec ((x7468
                                                                                                    (letrec ((x7469
                                                                                                              (cons
                                                                                                               segs7326
                                                                                                               '())))
                                                                                                      (cons
                                                                                                       dir7325
                                                                                                       x7469))))
                                                                                            (cons
                                                                                             'snake
                                                                                             x7468))))
                                                                                  g7467)))
                                                                             (snake?
                                                                              (lambda (snake7324)
                                                                                (letrec ((g7470
                                                                                          (letrec ((x7471
                                                                                                    (car
                                                                                                     snake7324)))
                                                                                            (eq?
                                                                                             x7471
                                                                                             'snake))))
                                                                                  g7470)))
                                                                             (snake-dir
                                                                              (lambda (snake)
                                                                                (letrec ((g7472
                                                                                          (letrec ((x7473
                                                                                                    (cdr
                                                                                                     snake)))
                                                                                            (car
                                                                                             x7473))))
                                                                                  g7472)))
                                                                             (snake-segs
                                                                              (lambda (snake)
                                                                                (letrec ((g7474
                                                                                          (letrec ((x7475
                                                                                                    (letrec ((x7476
                                                                                                              (cdr
                                                                                                               snake)))
                                                                                                      (cdr
                                                                                                       x7476))))
                                                                                            (car
                                                                                             x7475))))
                                                                                  g7474))))
                                                                      (letrec ((g7477
                                                                                (letrec ((world
                                                                                          (lambda (snake7330
                                                                                                   food7331)
                                                                                            (letrec ((g7478
                                                                                                      (letrec ((x7479
                                                                                                                (letrec ((x7480
                                                                                                                          (cons
                                                                                                                           food7331
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   snake7330
                                                                                                                   x7480))))
                                                                                                        (cons
                                                                                                         'world
                                                                                                         x7479))))
                                                                                              g7478)))
                                                                                         (world?
                                                                                          (lambda (world7329)
                                                                                            (letrec ((g7481
                                                                                                      (letrec ((x7482
                                                                                                                (car
                                                                                                                 world7329)))
                                                                                                        (eq?
                                                                                                         x7482
                                                                                                         'world))))
                                                                                              g7481)))
                                                                                         (world-snake
                                                                                          (lambda (world)
                                                                                            (letrec ((g7483
                                                                                                      (letrec ((x7484
                                                                                                                (cdr
                                                                                                                 world)))
                                                                                                        (car
                                                                                                         x7484))))
                                                                                              g7483)))
                                                                                         (world-food
                                                                                          (lambda (world)
                                                                                            (letrec ((g7485
                                                                                                      (letrec ((x7486
                                                                                                                (letrec ((x7487
                                                                                                                          (cdr
                                                                                                                           world)))
                                                                                                                  (cdr
                                                                                                                   x7487))))
                                                                                                        (car
                                                                                                         x7486))))
                                                                                              g7485)))
                                                                                         (world
                                                                                          (lambda (snake7330
                                                                                                   food7331)
                                                                                            (letrec ((g7488
                                                                                                      (letrec ((x7489
                                                                                                                (letrec ((x7490
                                                                                                                          (cons
                                                                                                                           food7331
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   snake7330
                                                                                                                   x7490))))
                                                                                                        (cons
                                                                                                         'world
                                                                                                         x7489))))
                                                                                              g7488)))
                                                                                         (world?
                                                                                          (lambda (world7329)
                                                                                            (letrec ((g7491
                                                                                                      (letrec ((x7492
                                                                                                                (car
                                                                                                                 world7329)))
                                                                                                        (eq?
                                                                                                         x7492
                                                                                                         'world))))
                                                                                              g7491)))
                                                                                         (world-snake
                                                                                          (lambda (world)
                                                                                            (letrec ((g7493
                                                                                                      (letrec ((x7494
                                                                                                                (cdr
                                                                                                                 world)))
                                                                                                        (car
                                                                                                         x7494))))
                                                                                              g7493)))
                                                                                         (world-food
                                                                                          (lambda (world)
                                                                                            (letrec ((g7495
                                                                                                      (letrec ((x7496
                                                                                                                (letrec ((x7497
                                                                                                                          (cdr
                                                                                                                           world)))
                                                                                                                  (cdr
                                                                                                                   x7497))))
                                                                                                        (car
                                                                                                         x7496))))
                                                                                              g7495)))
                                                                                         (DIR/C
                                                                                          (lambda (g7223
                                                                                                   g7224
                                                                                                   g7225)
                                                                                            (letrec ((g7498
                                                                                                      (letrec ((x-cnd7499
                                                                                                                ((lambda (v7222)
                                                                                                                   (if (eq?
                                                                                                                        'up
                                                                                                                        v7222)
                                                                                                                     #t
                                                                                                                     (if (eq?
                                                                                                                          'down
                                                                                                                          v7222)
                                                                                                                       #t
                                                                                                                       (if (eq?
                                                                                                                            'left
                                                                                                                            v7222)
                                                                                                                         #t
                                                                                                                         (eq?
                                                                                                                          'right
                                                                                                                          v7222)))))
                                                                                                                 g7225)))
                                                                                                        (if x-cnd7499
                                                                                                          g7225
                                                                                                          (blame
                                                                                                           g7223
                                                                                                           '(lambda (v7222)
                                                                                                              (if (eq?
                                                                                                                   'up
                                                                                                                   v7222)
                                                                                                                #t
                                                                                                                (if (eq?
                                                                                                                     'down
                                                                                                                     v7222)
                                                                                                                  #t
                                                                                                                  (if (eq?
                                                                                                                       'left
                                                                                                                       v7222)
                                                                                                                    #t
                                                                                                                    (eq?
                                                                                                                     'right
                                                                                                                     v7222))))))))))
                                                                                              g7498)))
                                                                                         (POSN/C
                                                                                          (lambda (j7227
                                                                                                   k7228
                                                                                                   v7226)
                                                                                            (letrec ((g7500
                                                                                                      (letrec ((checked7229
                                                                                                                (letrec ((x7501
                                                                                                                          (car
                                                                                                                           v7226)))
                                                                                                                  (real?/c
                                                                                                                   'j7227
                                                                                                                   'k7228
                                                                                                                   x7501))))
                                                                                                        (letrec ((g7502
                                                                                                                  (letrec ((checked7230
                                                                                                                            (letrec ((x7503
                                                                                                                                      (letrec ((x7504
                                                                                                                                                (cdr
                                                                                                                                                 v7226)))
                                                                                                                                        (car
                                                                                                                                         x7504))))
                                                                                                                              (real?/c
                                                                                                                               'j7227
                                                                                                                               'k7228
                                                                                                                               x7503))))
                                                                                                                    (letrec ((g7505
                                                                                                                              (letrec ((x7506
                                                                                                                                        (letrec ((x7507
                                                                                                                                                  (cons
                                                                                                                                                   checked7230
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7229
                                                                                                                                           x7507))))
                                                                                                                                (cons
                                                                                                                                 posn
                                                                                                                                 x7506))))
                                                                                                                      g7505))))
                                                                                                          g7502))))
                                                                                              g7500)))
                                                                                         (SNAKE/C
                                                                                          (lambda (j7233
                                                                                                   k7234
                                                                                                   v7232)
                                                                                            (letrec ((g7508
                                                                                                      (letrec ((checked7235
                                                                                                                (letrec ((x7509
                                                                                                                          (car
                                                                                                                           v7232)))
                                                                                                                  (DIR/C
                                                                                                                   'j7233
                                                                                                                   'k7234
                                                                                                                   x7509))))
                                                                                                        (letrec ((g7510
                                                                                                                  (letrec ((checked7236
                                                                                                                            (letrec ((x7513
                                                                                                                                      (letrec ((x7514
                                                                                                                                                (listof
                                                                                                                                                 POSN/C)))
                                                                                                                                        (and/c
                                                                                                                                         cons?/c
                                                                                                                                         x7514)))
                                                                                                                                     (x7511
                                                                                                                                      (letrec ((x7512
                                                                                                                                                (cdr
                                                                                                                                                 v7232)))
                                                                                                                                        (car
                                                                                                                                         x7512))))
                                                                                                                              (x7513
                                                                                                                               'j7233
                                                                                                                               'k7234
                                                                                                                               x7511))))
                                                                                                                    (letrec ((g7515
                                                                                                                              (letrec ((x7516
                                                                                                                                        (letrec ((x7517
                                                                                                                                                  (cons
                                                                                                                                                   checked7236
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7235
                                                                                                                                           x7517))))
                                                                                                                                (cons
                                                                                                                                 snake
                                                                                                                                 x7516))))
                                                                                                                      g7515))))
                                                                                                          g7510))))
                                                                                              g7508)))
                                                                                         (WORLD/C
                                                                                          (lambda (j7239
                                                                                                   k7240
                                                                                                   v7238)
                                                                                            (letrec ((g7518
                                                                                                      (letrec ((checked7241
                                                                                                                (letrec ((x7519
                                                                                                                          (car
                                                                                                                           v7238)))
                                                                                                                  (SNAKE/C
                                                                                                                   'j7239
                                                                                                                   'k7240
                                                                                                                   x7519))))
                                                                                                        (letrec ((g7520
                                                                                                                  (letrec ((checked7242
                                                                                                                            (letrec ((x7521
                                                                                                                                      (letrec ((x7522
                                                                                                                                                (cdr
                                                                                                                                                 v7238)))
                                                                                                                                        (car
                                                                                                                                         x7522))))
                                                                                                                              (POSN/C
                                                                                                                               'j7239
                                                                                                                               'k7240
                                                                                                                               x7521))))
                                                                                                                    (letrec ((g7523
                                                                                                                              (letrec ((x7524
                                                                                                                                        (letrec ((x7525
                                                                                                                                                  (cons
                                                                                                                                                   checked7242
                                                                                                                                                   '())))
                                                                                                                                          (cons
                                                                                                                                           checked7241
                                                                                                                                           x7525))))
                                                                                                                                (cons
                                                                                                                                 world
                                                                                                                                 x7524))))
                                                                                                                      g7523))))
                                                                                                          g7520))))
                                                                                              g7518)))
                                                                                         (GRID-SIZE
                                                                                          30)
                                                                                         (BOARD-HEIGHT
                                                                                          20)
                                                                                         (BOARD-WIDTH
                                                                                          30)
                                                                                         (BOARD-HEIGHT-PIXELS
                                                                                          (*
                                                                                           GRID-SIZE
                                                                                           BOARD-HEIGHT))
                                                                                         (BOARD-WIDTH-PIXELS
                                                                                          (*
                                                                                           GRID-SIZE
                                                                                           BOARD-WIDTH))
                                                                                         (BACKGROUND
                                                                                          (empty-scene
                                                                                           BOARD-WIDTH-PIXELS
                                                                                           BOARD-HEIGHT-PIXELS))
                                                                                         (SEGMENT-RADIUS
                                                                                          (/
                                                                                           GRID-SIZE
                                                                                           2))
                                                                                         (SEGMENT-IMAGE
                                                                                          (circle
                                                                                           SEGMENT-RADIUS
                                                                                           "solid"
                                                                                           "red"))
                                                                                         (FOOD-RADIUS
                                                                                          SEGMENT-RADIUS)
                                                                                         (FOOD-IMAGE
                                                                                          (circle
                                                                                           FOOD-RADIUS
                                                                                           "solid"
                                                                                           "green"))
                                                                                         (WORLD
                                                                                          (letrec ((x7527
                                                                                                    (letrec ((x7528
                                                                                                              (letrec ((x7529
                                                                                                                        (posn
                                                                                                                         5
                                                                                                                         3)))
                                                                                                                (cons
                                                                                                                 x7529
                                                                                                                 empty))))
                                                                                                      (snake
                                                                                                       'right
                                                                                                       x7528)))
                                                                                                   (x7526
                                                                                                    (posn
                                                                                                     8
                                                                                                     12)))
                                                                                            (world
                                                                                             x7527
                                                                                             x7526)))
                                                                                         (snake-wall-collide?
                                                                                          (lambda (snk)
                                                                                            (letrec ((g7530
                                                                                                      (letrec ((x7531
                                                                                                                (letrec ((x7532
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (car
                                                                                                                   x7532))))
                                                                                                        (head-collide?
                                                                                                         x7531))))
                                                                                              g7530)))
                                                                                         (head-collide?
                                                                                          (lambda (p)
                                                                                            (letrec ((g7533
                                                                                                      (letrec ((val7143
                                                                                                                (letrec ((x7534
                                                                                                                          (posn-x
                                                                                                                           p)))
                                                                                                                  (<=
                                                                                                                   x7534
                                                                                                                   0))))
                                                                                                        (letrec ((g7535
                                                                                                                  (if val7143
                                                                                                                    val7143
                                                                                                                    (letrec ((val7144
                                                                                                                              (letrec ((x7536
                                                                                                                                        (posn-x
                                                                                                                                         p)))
                                                                                                                                (>=
                                                                                                                                 x7536
                                                                                                                                 BOARD-WIDTH))))
                                                                                                                      (letrec ((g7537
                                                                                                                                (if val7144
                                                                                                                                  val7144
                                                                                                                                  (letrec ((val7145
                                                                                                                                            (letrec ((x7538
                                                                                                                                                      (posn-y
                                                                                                                                                       p)))
                                                                                                                                              (<=
                                                                                                                                               x7538
                                                                                                                                               0))))
                                                                                                                                    (letrec ((g7539
                                                                                                                                              (if val7145
                                                                                                                                                val7145
                                                                                                                                                (letrec ((x7540
                                                                                                                                                          (posn-y
                                                                                                                                                           p)))
                                                                                                                                                  (>=
                                                                                                                                                   x7540
                                                                                                                                                   BOARD-HEIGHT)))))
                                                                                                                                      g7539)))))
                                                                                                                        g7537)))))
                                                                                                          g7535))))
                                                                                              g7533)))
                                                                                         (snake-self-collide?
                                                                                          (lambda (snk)
                                                                                            (letrec ((g7541
                                                                                                      (letrec ((x7544
                                                                                                                (letrec ((x7545
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (car
                                                                                                                   x7545)))
                                                                                                               (x7542
                                                                                                                (letrec ((x7543
                                                                                                                          (snake-segs
                                                                                                                           snk)))
                                                                                                                  (cdr
                                                                                                                   x7543))))
                                                                                                        (segs-self-collide?
                                                                                                         x7544
                                                                                                         x7542))))
                                                                                              g7541)))
                                                                                         (segs-self-collide?
                                                                                          (lambda (h
                                                                                                   segs)
                                                                                            (letrec ((g7546
                                                                                                      (if cnd
                                                                                                        (letrec ((g7547
                                                                                                                  #f))
                                                                                                          g7547)
                                                                                                        (letrec ((g7548
                                                                                                                  (letrec ((x7551
                                                                                                                            (letrec ((x7552
                                                                                                                                      (car
                                                                                                                                       segs)))
                                                                                                                              (posn=?
                                                                                                                               x7552
                                                                                                                               h)))
                                                                                                                           (x7549
                                                                                                                            (letrec ((x7550
                                                                                                                                      (cdr
                                                                                                                                       segs)))
                                                                                                                              (segs-self-collide?
                                                                                                                               h
                                                                                                                               x7550))))
                                                                                                                    (or x7551
                                                                                                                        x7549))))
                                                                                                          g7548))))
                                                                                              g7546)))
                                                                                         (cut-tail
                                                                                          (lambda (segs)
                                                                                            (letrec ((g7553
                                                                                                      (letrec ((r
                                                                                                                (cdr
                                                                                                                 segs)))
                                                                                                        (letrec ((g7554
                                                                                                                  (if cnd
                                                                                                                    (letrec ((g7555
                                                                                                                              empty))
                                                                                                                      g7555)
                                                                                                                    (letrec ((g7556
                                                                                                                              (letrec ((x7558
                                                                                                                                        (car
                                                                                                                                         segs))
                                                                                                                                       (x7557
                                                                                                                                        (cut-tail
                                                                                                                                         r)))
                                                                                                                                (cons
                                                                                                                                 x7558
                                                                                                                                 x7557))))
                                                                                                                      g7556))))
                                                                                                          g7554))))
                                                                                              g7553)))
                                                                                         (next-head
                                                                                          (lambda (seg
                                                                                                   dir)
                                                                                            (letrec ((g7559
                                                                                                      (if cnd
                                                                                                        (letrec ((g7560
                                                                                                                  (letrec ((x7562
                                                                                                                            (letrec ((x7563
                                                                                                                                      (posn-x
                                                                                                                                       seg)))
                                                                                                                              (add1
                                                                                                                               x7563)))
                                                                                                                           (x7561
                                                                                                                            (posn-y
                                                                                                                             seg)))
                                                                                                                    (posn
                                                                                                                     x7562
                                                                                                                     x7561))))
                                                                                                          g7560)
                                                                                                        (if cnd
                                                                                                          (letrec ((g7564
                                                                                                                    (letrec ((x7566
                                                                                                                              (letrec ((x7567
                                                                                                                                        (posn-x
                                                                                                                                         seg)))
                                                                                                                                (sub1
                                                                                                                                 x7567)))
                                                                                                                             (x7565
                                                                                                                              (posn-y
                                                                                                                               seg)))
                                                                                                                      (posn
                                                                                                                       x7566
                                                                                                                       x7565))))
                                                                                                            g7564)
                                                                                                          (if cnd
                                                                                                            (letrec ((g7568
                                                                                                                      (letrec ((x7571
                                                                                                                                (posn-x
                                                                                                                                 seg))
                                                                                                                               (x7569
                                                                                                                                (letrec ((x7570
                                                                                                                                          (posn-y
                                                                                                                                           seg)))
                                                                                                                                  (sub1
                                                                                                                                   x7570))))
                                                                                                                        (posn
                                                                                                                         x7571
                                                                                                                         x7569))))
                                                                                                              g7568)
                                                                                                            (letrec ((g7572
                                                                                                                      (letrec ((x7575
                                                                                                                                (posn-x
                                                                                                                                 seg))
                                                                                                                               (x7573
                                                                                                                                (letrec ((x7574
                                                                                                                                          (posn-y
                                                                                                                                           seg)))
                                                                                                                                  (add1
                                                                                                                                   x7574))))
                                                                                                                        (posn
                                                                                                                         x7575
                                                                                                                         x7573))))
                                                                                                              g7572))))))
                                                                                              g7559)))
                                                                                         (snake-slither
                                                                                          (lambda (snk)
                                                                                            (letrec ((g7576
                                                                                                      (letrec ((d
                                                                                                                (snake-dir
                                                                                                                 snk)))
                                                                                                        (letrec ((g7577
                                                                                                                  (letrec ((x7578
                                                                                                                            (letrec ((x7581
                                                                                                                                      (letrec ((x7582
                                                                                                                                                (letrec ((x7583
                                                                                                                                                          (snake-segs
                                                                                                                                                           snk)))
                                                                                                                                                  (car
                                                                                                                                                   x7583))))
                                                                                                                                        (next-head
                                                                                                                                         x7582
                                                                                                                                         d)))
                                                                                                                                     (x7579
                                                                                                                                      (letrec ((x7580
                                                                                                                                                (snake-segs
                                                                                                                                                 snk)))
                                                                                                                                        (cut-tail
                                                                                                                                         x7580))))
                                                                                                                              (cons
                                                                                                                               x7581
                                                                                                                               x7579))))
                                                                                                                    (snake
                                                                                                                     d
                                                                                                                     x7578))))
                                                                                                          g7577))))
                                                                                              g7576)))
                                                                                         (snake-grow
                                                                                          (lambda (snk)
                                                                                            (letrec ((g7584
                                                                                                      (letrec ((d
                                                                                                                (snake-dir
                                                                                                                 snk)))
                                                                                                        (letrec ((g7585
                                                                                                                  (letrec ((x7586
                                                                                                                            (letrec ((x7588
                                                                                                                                      (letrec ((x7589
                                                                                                                                                (letrec ((x7590
                                                                                                                                                          (snake-segs
                                                                                                                                                           snk)))
                                                                                                                                                  (car
                                                                                                                                                   x7590))))
                                                                                                                                        (next-head
                                                                                                                                         x7589
                                                                                                                                         d)))
                                                                                                                                     (x7587
                                                                                                                                      (snake-segs
                                                                                                                                       snk)))
                                                                                                                              (cons
                                                                                                                               x7588
                                                                                                                               x7587))))
                                                                                                                    (snake
                                                                                                                     d
                                                                                                                     x7586))))
                                                                                                          g7585))))
                                                                                              g7584)))
                                                                                         (world->world
                                                                                          (lambda (w)
                                                                                            (letrec ((g7591
                                                                                                      (if cnd
                                                                                                        (letrec ((g7592
                                                                                                                  (snake-eat
                                                                                                                   w)))
                                                                                                          g7592)
                                                                                                        (letrec ((g7593
                                                                                                                  (letrec ((x7595
                                                                                                                            (letrec ((x7596
                                                                                                                                      (world-snake
                                                                                                                                       w)))
                                                                                                                              (snake-slither
                                                                                                                               x7596)))
                                                                                                                           (x7594
                                                                                                                            (world-food
                                                                                                                             w)))
                                                                                                                    (world
                                                                                                                     x7595
                                                                                                                     x7594))))
                                                                                                          g7593))))
                                                                                              g7591)))
                                                                                         (eating?
                                                                                          (lambda (w)
                                                                                            (letrec ((g7597
                                                                                                      (letrec ((x7601
                                                                                                                (world-food
                                                                                                                 w))
                                                                                                               (x7598
                                                                                                                (letrec ((x7599
                                                                                                                          (letrec ((x7600
                                                                                                                                    (world-snake
                                                                                                                                     w)))
                                                                                                                            (snake-segs
                                                                                                                             x7600))))
                                                                                                                  (car
                                                                                                                   x7599))))
                                                                                                        (posn=?
                                                                                                         x7601
                                                                                                         x7598))))
                                                                                              g7597)))
                                                                                         (snake-change-direction
                                                                                          (lambda (snk
                                                                                                   dir)
                                                                                            (letrec ((g7602
                                                                                                      (letrec ((x7603
                                                                                                                (snake-segs
                                                                                                                 snk)))
                                                                                                        (snake
                                                                                                         dir
                                                                                                         x7603))))
                                                                                              g7602)))
                                                                                         (world-change-dir
                                                                                          (lambda (w
                                                                                                   dir)
                                                                                            (letrec ((g7604
                                                                                                      (letrec ((x7606
                                                                                                                (letrec ((x7607
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-change-direction
                                                                                                                   x7607
                                                                                                                   dir)))
                                                                                                               (x7605
                                                                                                                (world-food
                                                                                                                 w)))
                                                                                                        (world
                                                                                                         x7606
                                                                                                         x7605))))
                                                                                              g7604)))
                                                                                         (snake-eat
                                                                                          (lambda (w)
                                                                                            (letrec ((g7608
                                                                                                      (letrec ((x7612
                                                                                                                (letrec ((x7613
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-grow
                                                                                                                   x7613)))
                                                                                                               (x7609
                                                                                                                (letrec ((x7611
                                                                                                                          (-
                                                                                                                           BOARD-WIDTH
                                                                                                                           1))
                                                                                                                         (x7610
                                                                                                                          (-
                                                                                                                           BOARD-HEIGHT
                                                                                                                           1)))
                                                                                                                  (posn
                                                                                                                   x7611
                                                                                                                   x7610))))
                                                                                                        (world
                                                                                                         x7612
                                                                                                         x7609))))
                                                                                              g7608)))
                                                                                         (handle-key
                                                                                          (lambda (w
                                                                                                   ke)
                                                                                            (letrec ((g7614
                                                                                                      (if cnd
                                                                                                        (letrec ((g7615
                                                                                                                  (world-change-dir
                                                                                                                   w
                                                                                                                   'up)))
                                                                                                          g7615)
                                                                                                        (if cnd
                                                                                                          (letrec ((g7616
                                                                                                                    (world-change-dir
                                                                                                                     w
                                                                                                                     'down)))
                                                                                                            g7616)
                                                                                                          (if cnd
                                                                                                            (letrec ((g7617
                                                                                                                      (world-change-dir
                                                                                                                       w
                                                                                                                       'left)))
                                                                                                              g7617)
                                                                                                            (if cnd
                                                                                                              (letrec ((g7618
                                                                                                                        (world-change-dir
                                                                                                                         w
                                                                                                                         'right)))
                                                                                                                g7618)
                                                                                                              (letrec ((g7619
                                                                                                                        w))
                                                                                                                g7619)))))))
                                                                                              g7614)))
                                                                                         (game-over?
                                                                                          (lambda (w)
                                                                                            (letrec ((g7620
                                                                                                      (letrec ((val7146
                                                                                                                (letrec ((x7621
                                                                                                                          (world-snake
                                                                                                                           w)))
                                                                                                                  (snake-wall-collide?
                                                                                                                   x7621))))
                                                                                                        (letrec ((g7622
                                                                                                                  (if val7146
                                                                                                                    val7146
                                                                                                                    (letrec ((x7623
                                                                                                                              (world-snake
                                                                                                                               w)))
                                                                                                                      (snake-self-collide?
                                                                                                                       x7623)))))
                                                                                                          g7622))))
                                                                                              g7620)))
                                                                                         (world->scene
                                                                                          (lambda (w)
                                                                                            (letrec ((g7624
                                                                                                      (letrec ((x7627
                                                                                                                (world-snake
                                                                                                                 w))
                                                                                                               (x7625
                                                                                                                (letrec ((x7626
                                                                                                                          (world-food
                                                                                                                           w)))
                                                                                                                  (food+scene
                                                                                                                   x7626
                                                                                                                   BACKGROUND))))
                                                                                                        (snake+scene
                                                                                                         x7627
                                                                                                         x7625))))
                                                                                              g7624)))
                                                                                         (food+scene
                                                                                          (lambda (f
                                                                                                   scn)
                                                                                            (letrec ((g7628
                                                                                                      (letrec ((x7630
                                                                                                                (posn-x
                                                                                                                 f))
                                                                                                               (x7629
                                                                                                                (posn-y
                                                                                                                 f)))
                                                                                                        (place-image-on-grid
                                                                                                         FOOD-IMAGE
                                                                                                         x7630
                                                                                                         x7629
                                                                                                         scn))))
                                                                                              g7628)))
                                                                                         (place-image-on-grid
                                                                                          (lambda (img
                                                                                                   x
                                                                                                   y
                                                                                                   scn)
                                                                                            (letrec ((g7631
                                                                                                      (letrec ((x7634
                                                                                                                (*
                                                                                                                 GRID-SIZE
                                                                                                                 x))
                                                                                                               (x7632
                                                                                                                (letrec ((x7633
                                                                                                                          (*
                                                                                                                           GRID-SIZE
                                                                                                                           y)))
                                                                                                                  (-
                                                                                                                   BOARD-HEIGHT-PIXELS
                                                                                                                   x7633))))
                                                                                                        (place-image
                                                                                                         img
                                                                                                         x7634
                                                                                                         x7632
                                                                                                         scn))))
                                                                                              g7631)))
                                                                                         (snake+scene
                                                                                          (lambda (snk
                                                                                                   scn)
                                                                                            (letrec ((g7635
                                                                                                      (letrec ((x7636
                                                                                                                (snake-segs
                                                                                                                 snk)))
                                                                                                        (segments+scene
                                                                                                         x7636
                                                                                                         scn))))
                                                                                              g7635)))
                                                                                         (segments+scene
                                                                                          (lambda (segs
                                                                                                   scn)
                                                                                            (letrec ((g7637
                                                                                                      (if cnd
                                                                                                        (letrec ((g7638
                                                                                                                  scn))
                                                                                                          g7638)
                                                                                                        (letrec ((g7639
                                                                                                                  (letrec ((x7642
                                                                                                                            (cdr
                                                                                                                             segs))
                                                                                                                           (x7640
                                                                                                                            (letrec ((x7641
                                                                                                                                      (car
                                                                                                                                       segs)))
                                                                                                                              (segment+scene
                                                                                                                               x7641
                                                                                                                               scn))))
                                                                                                                    (segments+scene
                                                                                                                     x7642
                                                                                                                     x7640))))
                                                                                                          g7639))))
                                                                                              g7637)))
                                                                                         (segment+scene
                                                                                          (lambda (seg
                                                                                                   scn)
                                                                                            (letrec ((g7643
                                                                                                      (letrec ((x7645
                                                                                                                (posn-x
                                                                                                                 seg))
                                                                                                               (x7644
                                                                                                                (posn-y
                                                                                                                 seg)))
                                                                                                        (place-image-on-grid
                                                                                                         SEGMENT-IMAGE
                                                                                                         x7645
                                                                                                         x7644
                                                                                                         scn))))
                                                                                              g7643))))
                                                                                  (letrec ((g7646
                                                                                            (letrec ((g7647
                                                                                                      (letrec ((g7648
                                                                                                                (letrec ((x7682
                                                                                                                          ((lambda (j7246
                                                                                                                                    k7247
                                                                                                                                    f7248)
                                                                                                                             (lambda (g7244
                                                                                                                                      g7245)
                                                                                                                               (boolean?/c
                                                                                                                                j7246
                                                                                                                                k7247
                                                                                                                                (f7248
                                                                                                                                 (POSN/C
                                                                                                                                  j7246
                                                                                                                                  k7247
                                                                                                                                  g7244)
                                                                                                                                 (POSN/C
                                                                                                                                  j7246
                                                                                                                                  k7247
                                                                                                                                  g7245)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           posn=?))
                                                                                                                         (x7677
                                                                                                                          (letrec ((x7678
                                                                                                                                    (letrec ((x7681
                                                                                                                                              (input))
                                                                                                                                             (x7679
                                                                                                                                              (letrec ((x7680
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7680
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7681
                                                                                                                                       x7679))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x7678)))
                                                                                                                         (x7672
                                                                                                                          (letrec ((x7673
                                                                                                                                    (letrec ((x7676
                                                                                                                                              (input))
                                                                                                                                             (x7674
                                                                                                                                              (letrec ((x7675
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7675
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7676
                                                                                                                                       x7674))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x7673))))
                                                                                                                  (x7682
                                                                                                                   x7677
                                                                                                                   x7672)))
                                                                                                               (g7649
                                                                                                                (WORLD/C
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 WORLD))
                                                                                                               (g7650
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BACKGROUND))
                                                                                                               (g7651
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 FOOD-IMAGE))
                                                                                                               (g7652
                                                                                                                (image/c
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 SEGMENT-IMAGE))
                                                                                                               (g7653
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 GRID-SIZE))
                                                                                                               (g7654
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-HEIGHT-PIXELS))
                                                                                                               (g7655
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-WIDTH))
                                                                                                               (g7656
                                                                                                                (real?
                                                                                                                 'module
                                                                                                                 'importer
                                                                                                                 BOARD-HEIGHT))
                                                                                                               (g7657
                                                                                                                (letrec ((x7688
                                                                                                                          ((lambda (j7250
                                                                                                                                    k7251
                                                                                                                                    f7252)
                                                                                                                             (lambda (g7249)
                                                                                                                               (boolean?/c
                                                                                                                                j7250
                                                                                                                                k7251
                                                                                                                                (f7252
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7250
                                                                                                                                  k7251
                                                                                                                                  g7249)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-wall-collide?))
                                                                                                                         (x7683
                                                                                                                          (letrec ((x7684
                                                                                                                                    (letrec ((x7687
                                                                                                                                              (input))
                                                                                                                                             (x7685
                                                                                                                                              (letrec ((x7686
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7686
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7687
                                                                                                                                       x7685))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x7684))))
                                                                                                                  (x7688
                                                                                                                   x7683)))
                                                                                                               (g7658
                                                                                                                (letrec ((x7694
                                                                                                                          ((lambda (j7254
                                                                                                                                    k7255
                                                                                                                                    f7256)
                                                                                                                             (lambda (g7253)
                                                                                                                               (boolean?/c
                                                                                                                                j7254
                                                                                                                                k7255
                                                                                                                                (f7256
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7254
                                                                                                                                  k7255
                                                                                                                                  g7253)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-self-collide?))
                                                                                                                         (x7689
                                                                                                                          (letrec ((x7690
                                                                                                                                    (letrec ((x7693
                                                                                                                                              (input))
                                                                                                                                             (x7691
                                                                                                                                              (letrec ((x7692
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7692
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7693
                                                                                                                                       x7691))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x7690))))
                                                                                                                  (x7694
                                                                                                                   x7689)))
                                                                                                               (g7659
                                                                                                                (letrec ((x7696
                                                                                                                          ((lambda (j7258
                                                                                                                                    k7259
                                                                                                                                    f7260)
                                                                                                                             (lambda (g7257)
                                                                                                                               ((listof
                                                                                                                                 POSN/C)
                                                                                                                                j7258
                                                                                                                                k7259
                                                                                                                                (f7260
                                                                                                                                 ((and/c
                                                                                                                                   cons?/c
                                                                                                                                   (listof
                                                                                                                                    POSN/C))
                                                                                                                                  j7258
                                                                                                                                  k7259
                                                                                                                                  g7257)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           cut-tail))
                                                                                                                         (x7695
                                                                                                                          (input)))
                                                                                                                  (x7696
                                                                                                                   x7695)))
                                                                                                               (g7660
                                                                                                                (letrec ((x7702
                                                                                                                          ((lambda (j7262
                                                                                                                                    k7263
                                                                                                                                    f7264)
                                                                                                                             (lambda (g7261)
                                                                                                                               (SNAKE/C
                                                                                                                                j7262
                                                                                                                                k7263
                                                                                                                                (f7264
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7262
                                                                                                                                  k7263
                                                                                                                                  g7261)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-slither))
                                                                                                                         (x7697
                                                                                                                          (letrec ((x7698
                                                                                                                                    (letrec ((x7701
                                                                                                                                              (input))
                                                                                                                                             (x7699
                                                                                                                                              (letrec ((x7700
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7700
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7701
                                                                                                                                       x7699))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x7698))))
                                                                                                                  (x7702
                                                                                                                   x7697)))
                                                                                                               (g7661
                                                                                                                (letrec ((x7708
                                                                                                                          ((lambda (j7266
                                                                                                                                    k7267
                                                                                                                                    f7268)
                                                                                                                             (lambda (g7265)
                                                                                                                               (SNAKE/C
                                                                                                                                j7266
                                                                                                                                k7267
                                                                                                                                (f7268
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7266
                                                                                                                                  k7267
                                                                                                                                  g7265)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake-grow))
                                                                                                                         (x7703
                                                                                                                          (letrec ((x7704
                                                                                                                                    (letrec ((x7707
                                                                                                                                              (input))
                                                                                                                                             (x7705
                                                                                                                                              (letrec ((x7706
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7706
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7707
                                                                                                                                       x7705))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x7704))))
                                                                                                                  (x7708
                                                                                                                   x7703)))
                                                                                                               (g7662
                                                                                                                (letrec ((x7723
                                                                                                                          ((lambda (j7271
                                                                                                                                    k7272
                                                                                                                                    f7273)
                                                                                                                             (lambda (g7269
                                                                                                                                      g7270)
                                                                                                                               (WORLD/C
                                                                                                                                j7271
                                                                                                                                k7272
                                                                                                                                (f7273
                                                                                                                                 (WORLD/C
                                                                                                                                  j7271
                                                                                                                                  k7272
                                                                                                                                  g7269)
                                                                                                                                 (DIR/C
                                                                                                                                  j7271
                                                                                                                                  k7272
                                                                                                                                  g7270)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world-change-dir))
                                                                                                                         (x7710
                                                                                                                          (letrec ((x7711
                                                                                                                                    (letrec ((x7718
                                                                                                                                              (letrec ((x7719
                                                                                                                                                        (letrec ((x7722
                                                                                                                                                                  (input))
                                                                                                                                                                 (x7720
                                                                                                                                                                  (letrec ((x7721
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7721
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x7722
                                                                                                                                                           x7720))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x7719)))
                                                                                                                                             (x7712
                                                                                                                                              (letrec ((x7713
                                                                                                                                                        (letrec ((x7714
                                                                                                                                                                  (letrec ((x7717
                                                                                                                                                                            (input))
                                                                                                                                                                           (x7715
                                                                                                                                                                            (letrec ((x7716
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x7716
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7717
                                                                                                                                                                     x7715))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x7714))))
                                                                                                                                                (cons
                                                                                                                                                 x7713
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7718
                                                                                                                                       x7712))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x7711)))
                                                                                                                         (x7709
                                                                                                                          (input)))
                                                                                                                  (x7723
                                                                                                                   x7710
                                                                                                                   x7709)))
                                                                                                               (g7663
                                                                                                                (letrec ((x7737
                                                                                                                          ((lambda (j7275
                                                                                                                                    k7276
                                                                                                                                    f7277)
                                                                                                                             (lambda (g7274)
                                                                                                                               (WORLD/C
                                                                                                                                j7275
                                                                                                                                k7276
                                                                                                                                (f7277
                                                                                                                                 (WORLD/C
                                                                                                                                  j7275
                                                                                                                                  k7276
                                                                                                                                  g7274)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world->world))
                                                                                                                         (x7724
                                                                                                                          (letrec ((x7725
                                                                                                                                    (letrec ((x7732
                                                                                                                                              (letrec ((x7733
                                                                                                                                                        (letrec ((x7736
                                                                                                                                                                  (input))
                                                                                                                                                                 (x7734
                                                                                                                                                                  (letrec ((x7735
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7735
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x7736
                                                                                                                                                           x7734))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x7733)))
                                                                                                                                             (x7726
                                                                                                                                              (letrec ((x7727
                                                                                                                                                        (letrec ((x7728
                                                                                                                                                                  (letrec ((x7731
                                                                                                                                                                            (input))
                                                                                                                                                                           (x7729
                                                                                                                                                                            (letrec ((x7730
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x7730
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7731
                                                                                                                                                                     x7729))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x7728))))
                                                                                                                                                (cons
                                                                                                                                                 x7727
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7732
                                                                                                                                       x7726))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x7725))))
                                                                                                                  (x7737
                                                                                                                   x7724)))
                                                                                                               (g7664
                                                                                                                (letrec ((x7752
                                                                                                                          ((lambda (j7280
                                                                                                                                    k7281
                                                                                                                                    f7282)
                                                                                                                             (lambda (g7278
                                                                                                                                      g7279)
                                                                                                                               (WORLD/C
                                                                                                                                j7280
                                                                                                                                k7281
                                                                                                                                (f7282
                                                                                                                                 (WORLD/C
                                                                                                                                  j7280
                                                                                                                                  k7281
                                                                                                                                  g7278)
                                                                                                                                 (string?/c
                                                                                                                                  j7280
                                                                                                                                  k7281
                                                                                                                                  g7279)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           handle-key))
                                                                                                                         (x7739
                                                                                                                          (letrec ((x7740
                                                                                                                                    (letrec ((x7747
                                                                                                                                              (letrec ((x7748
                                                                                                                                                        (letrec ((x7751
                                                                                                                                                                  (input))
                                                                                                                                                                 (x7749
                                                                                                                                                                  (letrec ((x7750
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7750
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x7751
                                                                                                                                                           x7749))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x7748)))
                                                                                                                                             (x7741
                                                                                                                                              (letrec ((x7742
                                                                                                                                                        (letrec ((x7743
                                                                                                                                                                  (letrec ((x7746
                                                                                                                                                                            (input))
                                                                                                                                                                           (x7744
                                                                                                                                                                            (letrec ((x7745
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x7745
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7746
                                                                                                                                                                     x7744))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x7743))))
                                                                                                                                                (cons
                                                                                                                                                 x7742
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7747
                                                                                                                                       x7741))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x7740)))
                                                                                                                         (x7738
                                                                                                                          (input)))
                                                                                                                  (x7752
                                                                                                                   x7739
                                                                                                                   x7738)))
                                                                                                               (g7665
                                                                                                                (letrec ((x7766
                                                                                                                          ((lambda (j7284
                                                                                                                                    k7285
                                                                                                                                    f7286)
                                                                                                                             (lambda (g7283)
                                                                                                                               (boolean?/c
                                                                                                                                j7284
                                                                                                                                k7285
                                                                                                                                (f7286
                                                                                                                                 (WORLD/C
                                                                                                                                  j7284
                                                                                                                                  k7285
                                                                                                                                  g7283)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           game-over?))
                                                                                                                         (x7753
                                                                                                                          (letrec ((x7754
                                                                                                                                    (letrec ((x7761
                                                                                                                                              (letrec ((x7762
                                                                                                                                                        (letrec ((x7765
                                                                                                                                                                  (input))
                                                                                                                                                                 (x7763
                                                                                                                                                                  (letrec ((x7764
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7764
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x7765
                                                                                                                                                           x7763))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x7762)))
                                                                                                                                             (x7755
                                                                                                                                              (letrec ((x7756
                                                                                                                                                        (letrec ((x7757
                                                                                                                                                                  (letrec ((x7760
                                                                                                                                                                            (input))
                                                                                                                                                                           (x7758
                                                                                                                                                                            (letrec ((x7759
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x7759
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7760
                                                                                                                                                                     x7758))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x7757))))
                                                                                                                                                (cons
                                                                                                                                                 x7756
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7761
                                                                                                                                       x7755))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x7754))))
                                                                                                                  (x7766
                                                                                                                   x7753)))
                                                                                                               (g7666
                                                                                                                (letrec ((x7780
                                                                                                                          ((lambda (j7288
                                                                                                                                    k7289
                                                                                                                                    f7290)
                                                                                                                             (lambda (g7287)
                                                                                                                               (image/c
                                                                                                                                j7288
                                                                                                                                k7289
                                                                                                                                (f7290
                                                                                                                                 (WORLD/C
                                                                                                                                  j7288
                                                                                                                                  k7289
                                                                                                                                  g7287)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           world->scene))
                                                                                                                         (x7767
                                                                                                                          (letrec ((x7768
                                                                                                                                    (letrec ((x7775
                                                                                                                                              (letrec ((x7776
                                                                                                                                                        (letrec ((x7779
                                                                                                                                                                  (input))
                                                                                                                                                                 (x7777
                                                                                                                                                                  (letrec ((x7778
                                                                                                                                                                            (input)))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7778
                                                                                                                                                                     '()))))
                                                                                                                                                          (cons
                                                                                                                                                           x7779
                                                                                                                                                           x7777))))
                                                                                                                                                (cons
                                                                                                                                                 'snake
                                                                                                                                                 x7776)))
                                                                                                                                             (x7769
                                                                                                                                              (letrec ((x7770
                                                                                                                                                        (letrec ((x7771
                                                                                                                                                                  (letrec ((x7774
                                                                                                                                                                            (input))
                                                                                                                                                                           (x7772
                                                                                                                                                                            (letrec ((x7773
                                                                                                                                                                                      (input)))
                                                                                                                                                                              (cons
                                                                                                                                                                               x7773
                                                                                                                                                                               '()))))
                                                                                                                                                                    (cons
                                                                                                                                                                     x7774
                                                                                                                                                                     x7772))))
                                                                                                                                                          (cons
                                                                                                                                                           'posn
                                                                                                                                                           x7771))))
                                                                                                                                                (cons
                                                                                                                                                 x7770
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7775
                                                                                                                                       x7769))))
                                                                                                                            (cons
                                                                                                                             'world
                                                                                                                             x7768))))
                                                                                                                  (x7780
                                                                                                                   x7767)))
                                                                                                               (g7667
                                                                                                                (letrec ((x7787
                                                                                                                          ((lambda (j7293
                                                                                                                                    k7294
                                                                                                                                    f7295)
                                                                                                                             (lambda (g7291
                                                                                                                                      g7292)
                                                                                                                               (image/c
                                                                                                                                j7293
                                                                                                                                k7294
                                                                                                                                (f7295
                                                                                                                                 (POSN/C
                                                                                                                                  j7293
                                                                                                                                  k7294
                                                                                                                                  g7291)
                                                                                                                                 (image/c
                                                                                                                                  j7293
                                                                                                                                  k7294
                                                                                                                                  g7292)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           food+scene))
                                                                                                                         (x7782
                                                                                                                          (letrec ((x7783
                                                                                                                                    (letrec ((x7786
                                                                                                                                              (input))
                                                                                                                                             (x7784
                                                                                                                                              (letrec ((x7785
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7785
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7786
                                                                                                                                       x7784))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x7783)))
                                                                                                                         (x7781
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x7787
                                                                                                                   x7782
                                                                                                                   x7781)))
                                                                                                               (g7668
                                                                                                                (letrec ((x7792
                                                                                                                          ((lambda (j7300
                                                                                                                                    k7301
                                                                                                                                    f7302)
                                                                                                                             (lambda (g7296
                                                                                                                                      g7297
                                                                                                                                      g7298
                                                                                                                                      g7299)
                                                                                                                               (image/c
                                                                                                                                j7300
                                                                                                                                k7301
                                                                                                                                (f7302
                                                                                                                                 (image/c
                                                                                                                                  j7300
                                                                                                                                  k7301
                                                                                                                                  g7296)
                                                                                                                                 (real?/c
                                                                                                                                  j7300
                                                                                                                                  k7301
                                                                                                                                  g7297)
                                                                                                                                 (real?/c
                                                                                                                                  j7300
                                                                                                                                  k7301
                                                                                                                                  g7298)
                                                                                                                                 (image/c
                                                                                                                                  j7300
                                                                                                                                  k7301
                                                                                                                                  g7299)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           place-image-on-grid))
                                                                                                                         (x7791
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '()))
                                                                                                                         (x7790
                                                                                                                          (input))
                                                                                                                         (x7789
                                                                                                                          (input))
                                                                                                                         (x7788
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x7792
                                                                                                                   x7791
                                                                                                                   x7790
                                                                                                                   x7789
                                                                                                                   x7788)))
                                                                                                               (g7669
                                                                                                                (letrec ((x7799
                                                                                                                          ((lambda (j7305
                                                                                                                                    k7306
                                                                                                                                    f7307)
                                                                                                                             (lambda (g7303
                                                                                                                                      g7304)
                                                                                                                               (image/c
                                                                                                                                j7305
                                                                                                                                k7306
                                                                                                                                (f7307
                                                                                                                                 (SNAKE/C
                                                                                                                                  j7305
                                                                                                                                  k7306
                                                                                                                                  g7303)
                                                                                                                                 (image/c
                                                                                                                                  j7305
                                                                                                                                  k7306
                                                                                                                                  g7304)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           snake+scene))
                                                                                                                         (x7794
                                                                                                                          (letrec ((x7795
                                                                                                                                    (letrec ((x7798
                                                                                                                                              (input))
                                                                                                                                             (x7796
                                                                                                                                              (letrec ((x7797
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7797
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7798
                                                                                                                                       x7796))))
                                                                                                                            (cons
                                                                                                                             'snake
                                                                                                                             x7795)))
                                                                                                                         (x7793
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x7799
                                                                                                                   x7794
                                                                                                                   x7793)))
                                                                                                               (g7670
                                                                                                                (letrec ((x7802
                                                                                                                          ((lambda (j7310
                                                                                                                                    k7311
                                                                                                                                    f7312)
                                                                                                                             (lambda (g7308
                                                                                                                                      g7309)
                                                                                                                               (image/c
                                                                                                                                j7310
                                                                                                                                k7311
                                                                                                                                (f7312
                                                                                                                                 ((listof
                                                                                                                                   POSN/C)
                                                                                                                                  j7310
                                                                                                                                  k7311
                                                                                                                                  g7308)
                                                                                                                                 (image/c
                                                                                                                                  j7310
                                                                                                                                  k7311
                                                                                                                                  g7309)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           segments+scene))
                                                                                                                         (x7801
                                                                                                                          (input))
                                                                                                                         (x7800
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x7802
                                                                                                                   x7801
                                                                                                                   x7800)))
                                                                                                               (g7671
                                                                                                                (letrec ((x7809
                                                                                                                          ((lambda (j7315
                                                                                                                                    k7316
                                                                                                                                    f7317)
                                                                                                                             (lambda (g7313
                                                                                                                                      g7314)
                                                                                                                               (image/c
                                                                                                                                j7315
                                                                                                                                k7316
                                                                                                                                (f7317
                                                                                                                                 (POSN/C
                                                                                                                                  j7315
                                                                                                                                  k7316
                                                                                                                                  g7313)
                                                                                                                                 (image/c
                                                                                                                                  j7315
                                                                                                                                  k7316
                                                                                                                                  g7314)))))
                                                                                                                           'module
                                                                                                                           'importer
                                                                                                                           segment+scene))
                                                                                                                         (x7804
                                                                                                                          (letrec ((x7805
                                                                                                                                    (letrec ((x7808
                                                                                                                                              (input))
                                                                                                                                             (x7806
                                                                                                                                              (letrec ((x7807
                                                                                                                                                        (input)))
                                                                                                                                                (cons
                                                                                                                                                 x7807
                                                                                                                                                 '()))))
                                                                                                                                      (cons
                                                                                                                                       x7808
                                                                                                                                       x7806))))
                                                                                                                            (cons
                                                                                                                             'posn
                                                                                                                             x7805)))
                                                                                                                         (x7803
                                                                                                                          (cons
                                                                                                                           'image
                                                                                                                           '())))
                                                                                                                  (x7809
                                                                                                                   x7804
                                                                                                                   x7803))))
                                                                                                        g7671)))
                                                                                              g7647)))
                                                                                    g7646))))
                                                                        g7477))))
                                                            g7456))))
                                                g7429))))
                                    g7418)))
                          g7417))))
              g7346)))
    g7344))
