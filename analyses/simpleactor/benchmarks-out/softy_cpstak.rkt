(letrec ((any? (lambda (v) (letrec ((g7218 #t)) g7218)))
         (meta (lambda (v) (letrec ((g7219 v)) g7219)))
         (member
          (lambda (v lst)
            (letrec ((g7220
                      (letrec ((g7221
                                (letrec ((x-e7222 lst))
                                  (match
                                   x-e7222
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7223 (eq? v v1)))
                                       (if x-cnd7223 #t (member v vs)))))))))
                        g7221)))
              g7220)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7224 (lambda (v) (letrec ((g7225 v)) g7225)))) g7224)))
         (nonzero?
          (lambda (v)
            (letrec ((g7226 (letrec ((x7227 (= v 0))) (not x7227)))) g7226))))
  (letrec ((g7228
            (letrec ((g7229
                      (letrec ((g7231
                                (letrec ((real/c
                                          (lambda (g7143 g7144 g7145)
                                            (letrec ((g7232
                                                      (letrec ((x-cnd7233
                                                                (real? g7145)))
                                                        (if x-cnd7233
                                                          g7145
                                                          (blame
                                                           g7143
                                                           'real?)))))
                                              g7232)))
                                         (boolean?/c
                                          (lambda (g7146 g7147 g7148)
                                            (letrec ((g7234
                                                      (letrec ((x-cnd7235
                                                                (boolean?
                                                                 g7148)))
                                                        (if x-cnd7235
                                                          g7148
                                                          (blame
                                                           g7146
                                                           'boolean?)))))
                                              g7234)))
                                         (number?/c
                                          (lambda (g7149 g7150 g7151)
                                            (letrec ((g7236
                                                      (letrec ((x-cnd7237
                                                                (number?
                                                                 g7151)))
                                                        (if x-cnd7237
                                                          g7151
                                                          (blame
                                                           g7149
                                                           'number?)))))
                                              g7236)))
                                         (any/c
                                          (lambda (g7152 g7153 g7154)
                                            (letrec ((g7238
                                                      (letrec ((x-cnd7239
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7154)))
                                                        (if x-cnd7239
                                                          g7154
                                                          (blame
                                                           g7152
                                                           '(lambda (v)
                                                              #t))))))
                                              g7238)))
                                         (any?/c
                                          (lambda (g7155 g7156 g7157)
                                            (letrec ((g7240
                                                      (letrec ((x-cnd7241
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7157)))
                                                        (if x-cnd7241
                                                          g7157
                                                          (blame
                                                           g7155
                                                           '(lambda (v)
                                                              #t))))))
                                              g7240)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7158 g7159 g7160)
                                            (letrec ((g7242
                                                      (letrec ((x-cnd7243
                                                                (pair? g7160)))
                                                        (if x-cnd7243
                                                          g7160
                                                          (blame
                                                           g7158
                                                           'pair?)))))
                                              g7242)))
                                         (pair?/c
                                          (lambda (g7161 g7162 g7163)
                                            (letrec ((g7244
                                                      (letrec ((x-cnd7245
                                                                (pair? g7163)))
                                                        (if x-cnd7245
                                                          g7163
                                                          (blame
                                                           g7161
                                                           'pair?)))))
                                              g7244)))
                                         (integer?
                                          (lambda (g7164 g7165 g7166)
                                            (letrec ((g7246
                                                      (letrec ((x-cnd7247
                                                                (integer?
                                                                 g7166)))
                                                        (if x-cnd7247
                                                          g7166
                                                          (blame
                                                           g7164
                                                           'integer?)))))
                                              g7246)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7248
                                                      (lambda (k j v)
                                                        (letrec ((g7249
                                                                  (letrec ((x-cnd7250
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7250
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7249))))
                                              g7248)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7251
                                                      (lambda (k j v)
                                                        (letrec ((g7252
                                                                  (letrec ((x-cnd7253
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7253
                                                                      '()
                                                                      (letrec ((x7257
                                                                                (letrec ((x7258
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7258)))
                                                                               (x7254
                                                                                (letrec ((x7256
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7255
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7256
                                                                                   k
                                                                                   j
                                                                                   x7255))))
                                                                        (cons
                                                                         x7257
                                                                         x7254))))))
                                                          g7252))))
                                              g7251)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7259 #t)) g7259)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7260
                                                      (letrec ((x7261 (= v 0)))
                                                        (not x7261))))
                                              g7260)))
                                         (nonzero?/c
                                          (lambda (g7167 g7168 g7169)
                                            (letrec ((g7262
                                                      (letrec ((x-cnd7263
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7169)))
                                                        (if x-cnd7263
                                                          g7169
                                                          (blame
                                                           g7167
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7262)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7264 v)) g7264)))
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
                                            (letrec ((g7265 #t)) g7265)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7266 '())) g7266))))
                        g7231))
                     (g7230
                      (letrec ((real/c
                                (lambda (g7143 g7144 g7145)
                                  (letrec ((g7267
                                            (letrec ((x-cnd7268 (real? g7145)))
                                              (if x-cnd7268
                                                g7145
                                                (blame g7143 'real?)))))
                                    g7267)))
                               (boolean?/c
                                (lambda (g7146 g7147 g7148)
                                  (letrec ((g7269
                                            (letrec ((x-cnd7270
                                                      (boolean? g7148)))
                                              (if x-cnd7270
                                                g7148
                                                (blame g7146 'boolean?)))))
                                    g7269)))
                               (number?/c
                                (lambda (g7149 g7150 g7151)
                                  (letrec ((g7271
                                            (letrec ((x-cnd7272
                                                      (number? g7151)))
                                              (if x-cnd7272
                                                g7151
                                                (blame g7149 'number?)))))
                                    g7271)))
                               (any/c
                                (lambda (g7152 g7153 g7154)
                                  (letrec ((g7273
                                            (letrec ((x-cnd7274
                                                      ((lambda (v) #t) g7154)))
                                              (if x-cnd7274
                                                g7154
                                                (blame
                                                 g7152
                                                 '(lambda (v) #t))))))
                                    g7273)))
                               (any?/c
                                (lambda (g7155 g7156 g7157)
                                  (letrec ((g7275
                                            (letrec ((x-cnd7276
                                                      ((lambda (v) #t) g7157)))
                                              (if x-cnd7276
                                                g7157
                                                (blame
                                                 g7155
                                                 '(lambda (v) #t))))))
                                    g7275)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7158 g7159 g7160)
                                  (letrec ((g7277
                                            (letrec ((x-cnd7278 (pair? g7160)))
                                              (if x-cnd7278
                                                g7160
                                                (blame g7158 'pair?)))))
                                    g7277)))
                               (pair?/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7279
                                            (letrec ((x-cnd7280 (pair? g7163)))
                                              (if x-cnd7280
                                                g7163
                                                (blame g7161 'pair?)))))
                                    g7279)))
                               (integer?
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7281
                                            (letrec ((x-cnd7282
                                                      (integer? g7166)))
                                              (if x-cnd7282
                                                g7166
                                                (blame g7164 'integer?)))))
                                    g7281)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7283
                                            (lambda (k j v)
                                              (letrec ((g7284
                                                        (letrec ((x-cnd7285
                                                                  (c1 k j v)))
                                                          (if x-cnd7285
                                                            (c2 k j v)
                                                            #f))))
                                                g7284))))
                                    g7283)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7286
                                            (lambda (k j v)
                                              (letrec ((g7287
                                                        (letrec ((x-cnd7288
                                                                  (null? v)))
                                                          (if x-cnd7288
                                                            '()
                                                            (letrec ((x7292
                                                                      (letrec ((x7293
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7293)))
                                                                     (x7289
                                                                      (letrec ((x7291
                                                                                (list-of
                                                                                 contract))
                                                                               (x7290
                                                                                (cdr
                                                                                 v)))
                                                                        (x7291
                                                                         k
                                                                         j
                                                                         x7290))))
                                                              (cons
                                                               x7292
                                                               x7289))))))
                                                g7287))))
                                    g7286)))
                               (any? (lambda (v) (letrec ((g7294 #t)) g7294)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7295
                                            (letrec ((x7296 (= v 0)))
                                              (not x7296))))
                                    g7295)))
                               (nonzero?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7297
                                            (letrec ((x-cnd7298
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7169)))
                                              (if x-cnd7298
                                                g7169
                                                (blame
                                                 g7167
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7297)))
                               (meta (lambda (v) (letrec ((g7299 v)) g7299)))
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
                                (lambda (cnd) (letrec ((g7300 #t)) g7300))))
                        (letrec ((g7301
                                  (letrec ((g7302
                                            (letrec ((tak
                                                      (lambda (x y z k)
                                                        (letrec ((g7303
                                                                  (letrec ((x-cnd7304
                                                                            (letrec ((x7305
                                                                                      (<
                                                                                       y
                                                                                       x)))
                                                                              (not
                                                                               x7305))))
                                                                    (if x-cnd7304
                                                                      (k z)
                                                                      (letrec ((x7306
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x7306
                                                                         y
                                                                         z
                                                                         (lambda (v1)
                                                                           (tak
                                                                            (-
                                                                             y
                                                                             1)
                                                                            z
                                                                            x
                                                                            (lambda (v2)
                                                                              (tak
                                                                               (-
                                                                                z
                                                                                1)
                                                                               x
                                                                               y
                                                                               (lambda (v3)
                                                                                 (tak
                                                                                  v1
                                                                                  v2
                                                                                  v3
                                                                                  k))))))))))))
                                                          g7303)))
                                                     (tak-main
                                                      (lambda (x y z)
                                                        (letrec ((g7307
                                                                  (letrec ((x7308
                                                                            (letrec ((x7309
                                                                                      (x)))
                                                                              (λ x7309
                                                                                x))))
                                                                    (tak
                                                                     x
                                                                     y
                                                                     z
                                                                     x7308))))
                                                          g7307))))
                                              (letrec ((g7310
                                                        (letrec ((g7311
                                                                  (letrec ((g7312
                                                                            (letrec ((x7316
                                                                                      ((lambda (j7215
                                                                                                k7216
                                                                                                f7217)
                                                                                         (lambda (g7212
                                                                                                  g7213
                                                                                                  g7214)
                                                                                           (integer?/c
                                                                                            j7215
                                                                                            k7216
                                                                                            (f7217
                                                                                             (integer?/c
                                                                                              j7215
                                                                                              k7216
                                                                                              g7212)
                                                                                             (integer?/c
                                                                                              j7215
                                                                                              k7216
                                                                                              g7213)
                                                                                             (integer?/c
                                                                                              j7215
                                                                                              k7216
                                                                                              g7214)))))
                                                                                       'module
                                                                                       'importer
                                                                                       tak-main))
                                                                                     (x7315
                                                                                      (input))
                                                                                     (x7314
                                                                                      (input))
                                                                                     (x7313
                                                                                      (input)))
                                                                              (x7316
                                                                               x7315
                                                                               x7314
                                                                               x7313))))
                                                                    g7312)))
                                                          g7311)))
                                                g7310))))
                                    g7302)))
                          g7301))))
              g7230)))
    g7228))
