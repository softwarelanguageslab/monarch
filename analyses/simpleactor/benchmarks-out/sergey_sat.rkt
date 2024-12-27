(letrec ((any? (lambda (v) (letrec ((g7213 #t)) g7213)))
         (meta (lambda (v) (letrec ((g7214 v)) g7214)))
         (member
          (lambda (v lst)
            (letrec ((g7215
                      (letrec ((g7216
                                (letrec ((x-e7217 lst))
                                  (match
                                   x-e7217
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7218 (eq? v v1)))
                                       (if x-cnd7218 #t (member v vs)))))))))
                        g7216)))
              g7215)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7219 (lambda (v) (letrec ((g7220 v)) g7220)))) g7219)))
         (nonzero?
          (lambda (v)
            (letrec ((g7221 (letrec ((x7222 (= v 0))) (not x7222)))) g7221))))
  (letrec ((g7223
            (letrec ((g7224
                      (letrec ((g7226
                                (letrec ((real/c
                                          (lambda (g7144 g7145 g7146)
                                            (letrec ((g7227
                                                      (letrec ((x-cnd7228
                                                                (real? g7146)))
                                                        (if x-cnd7228
                                                          g7146
                                                          (blame
                                                           g7144
                                                           'real?)))))
                                              g7227)))
                                         (boolean?/c
                                          (lambda (g7147 g7148 g7149)
                                            (letrec ((g7229
                                                      (letrec ((x-cnd7230
                                                                (boolean?
                                                                 g7149)))
                                                        (if x-cnd7230
                                                          g7149
                                                          (blame
                                                           g7147
                                                           'boolean?)))))
                                              g7229)))
                                         (number?/c
                                          (lambda (g7150 g7151 g7152)
                                            (letrec ((g7231
                                                      (letrec ((x-cnd7232
                                                                (number?
                                                                 g7152)))
                                                        (if x-cnd7232
                                                          g7152
                                                          (blame
                                                           g7150
                                                           'number?)))))
                                              g7231)))
                                         (any/c
                                          (lambda (g7153 g7154 g7155)
                                            (letrec ((g7233
                                                      (letrec ((x-cnd7234
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7155)))
                                                        (if x-cnd7234
                                                          g7155
                                                          (blame
                                                           g7153
                                                           '(lambda (v)
                                                              #t))))))
                                              g7233)))
                                         (any?/c
                                          (lambda (g7156 g7157 g7158)
                                            (letrec ((g7235
                                                      (letrec ((x-cnd7236
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7158)))
                                                        (if x-cnd7236
                                                          g7158
                                                          (blame
                                                           g7156
                                                           '(lambda (v)
                                                              #t))))))
                                              g7235)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7159 g7160 g7161)
                                            (letrec ((g7237
                                                      (letrec ((x-cnd7238
                                                                (pair? g7161)))
                                                        (if x-cnd7238
                                                          g7161
                                                          (blame
                                                           g7159
                                                           'pair?)))))
                                              g7237)))
                                         (pair?/c
                                          (lambda (g7162 g7163 g7164)
                                            (letrec ((g7239
                                                      (letrec ((x-cnd7240
                                                                (pair? g7164)))
                                                        (if x-cnd7240
                                                          g7164
                                                          (blame
                                                           g7162
                                                           'pair?)))))
                                              g7239)))
                                         (integer?
                                          (lambda (g7165 g7166 g7167)
                                            (letrec ((g7241
                                                      (letrec ((x-cnd7242
                                                                (integer?
                                                                 g7167)))
                                                        (if x-cnd7242
                                                          g7167
                                                          (blame
                                                           g7165
                                                           'integer?)))))
                                              g7241)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7243
                                                      (lambda (k j v)
                                                        (letrec ((g7244
                                                                  (letrec ((x-cnd7245
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7245
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7244))))
                                              g7243)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7246
                                                      (lambda (k j v)
                                                        (letrec ((g7247
                                                                  (letrec ((x-cnd7248
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7248
                                                                      '()
                                                                      (letrec ((x7252
                                                                                (letrec ((x7253
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7253)))
                                                                               (x7249
                                                                                (letrec ((x7251
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7250
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7251
                                                                                   k
                                                                                   j
                                                                                   x7250))))
                                                                        (cons
                                                                         x7252
                                                                         x7249))))))
                                                          g7247))))
                                              g7246)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7254 #t)) g7254)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7255
                                                      (letrec ((x7256 (= v 0)))
                                                        (not x7256))))
                                              g7255)))
                                         (nonzero?/c
                                          (lambda (g7168 g7169 g7170)
                                            (letrec ((g7257
                                                      (letrec ((x-cnd7258
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7170)))
                                                        (if x-cnd7258
                                                          g7170
                                                          (blame
                                                           g7168
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7257)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7259 v)) g7259)))
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
                                            (letrec ((g7260 #t)) g7260)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7261 '())) g7261))))
                        g7226))
                     (g7225
                      (letrec ((real/c
                                (lambda (g7144 g7145 g7146)
                                  (letrec ((g7262
                                            (letrec ((x-cnd7263 (real? g7146)))
                                              (if x-cnd7263
                                                g7146
                                                (blame g7144 'real?)))))
                                    g7262)))
                               (boolean?/c
                                (lambda (g7147 g7148 g7149)
                                  (letrec ((g7264
                                            (letrec ((x-cnd7265
                                                      (boolean? g7149)))
                                              (if x-cnd7265
                                                g7149
                                                (blame g7147 'boolean?)))))
                                    g7264)))
                               (number?/c
                                (lambda (g7150 g7151 g7152)
                                  (letrec ((g7266
                                            (letrec ((x-cnd7267
                                                      (number? g7152)))
                                              (if x-cnd7267
                                                g7152
                                                (blame g7150 'number?)))))
                                    g7266)))
                               (any/c
                                (lambda (g7153 g7154 g7155)
                                  (letrec ((g7268
                                            (letrec ((x-cnd7269
                                                      ((lambda (v) #t) g7155)))
                                              (if x-cnd7269
                                                g7155
                                                (blame
                                                 g7153
                                                 '(lambda (v) #t))))))
                                    g7268)))
                               (any?/c
                                (lambda (g7156 g7157 g7158)
                                  (letrec ((g7270
                                            (letrec ((x-cnd7271
                                                      ((lambda (v) #t) g7158)))
                                              (if x-cnd7271
                                                g7158
                                                (blame
                                                 g7156
                                                 '(lambda (v) #t))))))
                                    g7270)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7159 g7160 g7161)
                                  (letrec ((g7272
                                            (letrec ((x-cnd7273 (pair? g7161)))
                                              (if x-cnd7273
                                                g7161
                                                (blame g7159 'pair?)))))
                                    g7272)))
                               (pair?/c
                                (lambda (g7162 g7163 g7164)
                                  (letrec ((g7274
                                            (letrec ((x-cnd7275 (pair? g7164)))
                                              (if x-cnd7275
                                                g7164
                                                (blame g7162 'pair?)))))
                                    g7274)))
                               (integer?
                                (lambda (g7165 g7166 g7167)
                                  (letrec ((g7276
                                            (letrec ((x-cnd7277
                                                      (integer? g7167)))
                                              (if x-cnd7277
                                                g7167
                                                (blame g7165 'integer?)))))
                                    g7276)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7278
                                            (lambda (k j v)
                                              (letrec ((g7279
                                                        (letrec ((x-cnd7280
                                                                  (c1 k j v)))
                                                          (if x-cnd7280
                                                            (c2 k j v)
                                                            #f))))
                                                g7279))))
                                    g7278)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7281
                                            (lambda (k j v)
                                              (letrec ((g7282
                                                        (letrec ((x-cnd7283
                                                                  (null? v)))
                                                          (if x-cnd7283
                                                            '()
                                                            (letrec ((x7287
                                                                      (letrec ((x7288
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7288)))
                                                                     (x7284
                                                                      (letrec ((x7286
                                                                                (list-of
                                                                                 contract))
                                                                               (x7285
                                                                                (cdr
                                                                                 v)))
                                                                        (x7286
                                                                         k
                                                                         j
                                                                         x7285))))
                                                              (cons
                                                               x7287
                                                               x7284))))))
                                                g7282))))
                                    g7281)))
                               (any? (lambda (v) (letrec ((g7289 #t)) g7289)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7290
                                            (letrec ((x7291 (= v 0)))
                                              (not x7291))))
                                    g7290)))
                               (nonzero?/c
                                (lambda (g7168 g7169 g7170)
                                  (letrec ((g7292
                                            (letrec ((x-cnd7293
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7170)))
                                              (if x-cnd7293
                                                g7170
                                                (blame
                                                 g7168
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7292)))
                               (meta (lambda (v) (letrec ((g7294 v)) g7294)))
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
                                (lambda (cnd) (letrec ((g7295 #t)) g7295))))
                        (letrec ((g7296
                                  (letrec ((g7297
                                            (letrec ((phi
                                                      (letrec ((x7321 (x1))
                                                               (x7298
                                                                (letrec ((x7320
                                                                          (x2))
                                                                         (x7299
                                                                          (letrec ((x7319
                                                                                    (x3))
                                                                                   (x7300
                                                                                    (letrec ((x7318
                                                                                              (x4))
                                                                                             (x7301
                                                                                              (letrec ((x7317
                                                                                                        (x5))
                                                                                                       (x7302
                                                                                                        (letrec ((x7316
                                                                                                                  (x6))
                                                                                                                 (x7303
                                                                                                                  (letrec ((x7315
                                                                                                                            (x7))
                                                                                                                           (x7304
                                                                                                                            (letrec ((x-cnd7305
                                                                                                                                      (or x1
                                                                                                                                          x2)))
                                                                                                                              (if x-cnd7305
                                                                                                                                (letrec ((x-cnd7306
                                                                                                                                          (letrec ((x7308
                                                                                                                                                    (not
                                                                                                                                                     x2))
                                                                                                                                                   (x7307
                                                                                                                                                    (not
                                                                                                                                                     x3)))
                                                                                                                                            (or x1
                                                                                                                                                x7308
                                                                                                                                                x7307))))
                                                                                                                                  (if x-cnd7306
                                                                                                                                    (letrec ((x-cnd7309
                                                                                                                                              (or x3
                                                                                                                                                  x4)))
                                                                                                                                      (if x-cnd7309
                                                                                                                                        (letrec ((x-cnd7310
                                                                                                                                                  (letrec ((x7311
                                                                                                                                                            (not
                                                                                                                                                             x4)))
                                                                                                                                                    (or x7311
                                                                                                                                                        x1))))
                                                                                                                                          (if x-cnd7310
                                                                                                                                            (letrec ((x-cnd7312
                                                                                                                                                      (letrec ((x7314
                                                                                                                                                                (not
                                                                                                                                                                 x2))
                                                                                                                                                               (x7313
                                                                                                                                                                (not
                                                                                                                                                                 x3)))
                                                                                                                                                        (or x7314
                                                                                                                                                            x7313))))
                                                                                                                                              (if x-cnd7312
                                                                                                                                                (or x4
                                                                                                                                                    x2)
                                                                                                                                                #f))
                                                                                                                                            #f))
                                                                                                                                        #f))
                                                                                                                                    #f))
                                                                                                                                #f))))
                                                                                                                    (λ x7315
                                                                                                                      x7304))))
                                                                                                          (λ x7316
                                                                                                            x7303))))
                                                                                                (λ x7317
                                                                                                  x7302))))
                                                                                      (λ x7318
                                                                                        x7301))))
                                                                            (λ x7319
                                                                              x7300))))
                                                                  (λ x7320
                                                                    x7299))))
                                                        (λ x7321 x7298)))
                                                     (try
                                                      (letrec ((x7324 (f))
                                                               (x7322
                                                                (letrec ((val7143
                                                                          (f
                                                                           #t)))
                                                                  (letrec ((g7323
                                                                            (if val7143
                                                                              val7143
                                                                              (f
                                                                               #f))))
                                                                    g7323))))
                                                        (λ x7324 x7322)))
                                                     (sat-solve-7
                                                      (letrec ((x7353 (p))
                                                               (x7325
                                                                (letrec ((x7326
                                                                          (letrec ((x7352
                                                                                    (n1))
                                                                                   (x7327
                                                                                    (letrec ((x7328
                                                                                              (letrec ((x7351
                                                                                                        (n2))
                                                                                                       (x7329
                                                                                                        (letrec ((x7330
                                                                                                                  (letrec ((x7350
                                                                                                                            (n3))
                                                                                                                           (x7331
                                                                                                                            (letrec ((x7332
                                                                                                                                      (letrec ((x7349
                                                                                                                                                (n4))
                                                                                                                                               (x7333
                                                                                                                                                (letrec ((x7334
                                                                                                                                                          (letrec ((x7348
                                                                                                                                                                    (n5))
                                                                                                                                                                   (x7335
                                                                                                                                                                    (letrec ((x7336
                                                                                                                                                                              (letrec ((x7347
                                                                                                                                                                                        (n6))
                                                                                                                                                                                       (x7337
                                                                                                                                                                                        (letrec ((x7338
                                                                                                                                                                                                  (letrec ((x7346
                                                                                                                                                                                                            (n7))
                                                                                                                                                                                                           (x7339
                                                                                                                                                                                                            (letrec ((x7340
                                                                                                                                                                                                                      (letrec ((x7341
                                                                                                                                                                                                                                (letrec ((x7342
                                                                                                                                                                                                                                          (letrec ((x7343
                                                                                                                                                                                                                                                    (letrec ((x7344
                                                                                                                                                                                                                                                              (letrec ((x7345
                                                                                                                                                                                                                                                                        (p
                                                                                                                                                                                                                                                                         n1)))
                                                                                                                                                                                                                                                                (x7345
                                                                                                                                                                                                                                                                 n2))))
                                                                                                                                                                                                                                                      (x7344
                                                                                                                                                                                                                                                       n3))))
                                                                                                                                                                                                                                            (x7343
                                                                                                                                                                                                                                             n4))))
                                                                                                                                                                                                                                  (x7342
                                                                                                                                                                                                                                   n5))))
                                                                                                                                                                                                                        (x7341
                                                                                                                                                                                                                         n6))))
                                                                                                                                                                                                              (x7340
                                                                                                                                                                                                               n7))))
                                                                                                                                                                                                    (λ x7346
                                                                                                                                                                                                      x7339))))
                                                                                                                                                                                          (try
                                                                                                                                                                                           x7338))))
                                                                                                                                                                                (λ x7347
                                                                                                                                                                                  x7337))))
                                                                                                                                                                      (try
                                                                                                                                                                       x7336))))
                                                                                                                                                            (λ x7348
                                                                                                                                                              x7335))))
                                                                                                                                                  (try
                                                                                                                                                   x7334))))
                                                                                                                                        (λ x7349
                                                                                                                                          x7333))))
                                                                                                                              (try
                                                                                                                               x7332))))
                                                                                                                    (λ x7350
                                                                                                                      x7331))))
                                                                                                          (try
                                                                                                           x7330))))
                                                                                                (λ x7351
                                                                                                  x7329))))
                                                                                      (try
                                                                                       x7328))))
                                                                            (λ x7352
                                                                              x7327))))
                                                                  (try
                                                                   x7326))))
                                                        (λ x7353 x7325))))
                                              (letrec ((g7354
                                                        (sat-solve-7 phi)))
                                                g7354))))
                                    g7297)))
                          g7296))))
              g7225)))
    g7223))
