(letrec ((any? (lambda (v) (letrec ((g7223 #t)) g7223)))
         (meta (lambda (v) (letrec ((g7224 v)) g7224)))
         (member
          (lambda (v lst)
            (letrec ((g7225
                      (letrec ((g7226
                                (letrec ((x-e7227 lst))
                                  (match
                                   x-e7227
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7228 (eq? v v1)))
                                       (if x-cnd7228 #t (member v vs)))))))))
                        g7226)))
              g7225)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7229 (lambda (v) (letrec ((g7230 v)) g7230)))) g7229)))
         (nonzero?
          (lambda (v)
            (letrec ((g7231 (letrec ((x7232 (= v 0))) (not x7232)))) g7231))))
  (letrec ((g7233
            (letrec ((g7234
                      (letrec ((g7236
                                (letrec ((real/c
                                          (lambda (g7143 g7144 g7145)
                                            (letrec ((g7237
                                                      (letrec ((x-cnd7238
                                                                (real? g7145)))
                                                        (if x-cnd7238
                                                          g7145
                                                          (blame
                                                           g7143
                                                           'real?)))))
                                              g7237)))
                                         (boolean?/c
                                          (lambda (g7146 g7147 g7148)
                                            (letrec ((g7239
                                                      (letrec ((x-cnd7240
                                                                (boolean?
                                                                 g7148)))
                                                        (if x-cnd7240
                                                          g7148
                                                          (blame
                                                           g7146
                                                           'boolean?)))))
                                              g7239)))
                                         (number?/c
                                          (lambda (g7149 g7150 g7151)
                                            (letrec ((g7241
                                                      (letrec ((x-cnd7242
                                                                (number?
                                                                 g7151)))
                                                        (if x-cnd7242
                                                          g7151
                                                          (blame
                                                           g7149
                                                           'number?)))))
                                              g7241)))
                                         (any/c
                                          (lambda (g7152 g7153 g7154)
                                            (letrec ((g7243
                                                      (letrec ((x-cnd7244
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7154)))
                                                        (if x-cnd7244
                                                          g7154
                                                          (blame
                                                           g7152
                                                           '(lambda (v)
                                                              #t))))))
                                              g7243)))
                                         (any?/c
                                          (lambda (g7155 g7156 g7157)
                                            (letrec ((g7245
                                                      (letrec ((x-cnd7246
                                                                ((lambda (v)
                                                                   #t)
                                                                 g7157)))
                                                        (if x-cnd7246
                                                          g7157
                                                          (blame
                                                           g7155
                                                           '(lambda (v)
                                                              #t))))))
                                              g7245)))
                                         (image? any/c)
                                         (cons?/c
                                          (lambda (g7158 g7159 g7160)
                                            (letrec ((g7247
                                                      (letrec ((x-cnd7248
                                                                (pair? g7160)))
                                                        (if x-cnd7248
                                                          g7160
                                                          (blame
                                                           g7158
                                                           'pair?)))))
                                              g7247)))
                                         (pair?/c
                                          (lambda (g7161 g7162 g7163)
                                            (letrec ((g7249
                                                      (letrec ((x-cnd7250
                                                                (pair? g7163)))
                                                        (if x-cnd7250
                                                          g7163
                                                          (blame
                                                           g7161
                                                           'pair?)))))
                                              g7249)))
                                         (integer?
                                          (lambda (g7164 g7165 g7166)
                                            (letrec ((g7251
                                                      (letrec ((x-cnd7252
                                                                (integer?
                                                                 g7166)))
                                                        (if x-cnd7252
                                                          g7166
                                                          (blame
                                                           g7164
                                                           'integer?)))))
                                              g7251)))
                                         (and/c
                                          (lambda (c1 c2)
                                            (letrec ((g7253
                                                      (lambda (k j v)
                                                        (letrec ((g7254
                                                                  (letrec ((x-cnd7255
                                                                            (c1
                                                                             k
                                                                             j
                                                                             v)))
                                                                    (if x-cnd7255
                                                                      (c2
                                                                       k
                                                                       j
                                                                       v)
                                                                      #f))))
                                                          g7254))))
                                              g7253)))
                                         (list-of
                                          (lambda (contract)
                                            (letrec ((g7256
                                                      (lambda (k j v)
                                                        (letrec ((g7257
                                                                  (letrec ((x-cnd7258
                                                                            (null?
                                                                             v)))
                                                                    (if x-cnd7258
                                                                      '()
                                                                      (letrec ((x7262
                                                                                (letrec ((x7263
                                                                                          (car
                                                                                           v)))
                                                                                  (contract
                                                                                   k
                                                                                   j
                                                                                   x7263)))
                                                                               (x7259
                                                                                (letrec ((x7261
                                                                                          (list-of
                                                                                           contract))
                                                                                         (x7260
                                                                                          (cdr
                                                                                           v)))
                                                                                  (x7261
                                                                                   k
                                                                                   j
                                                                                   x7260))))
                                                                        (cons
                                                                         x7262
                                                                         x7259))))))
                                                          g7257))))
                                              g7256)))
                                         (any?
                                          (lambda (v)
                                            (letrec ((g7264 #t)) g7264)))
                                         (nonzero?
                                          (lambda (v)
                                            (letrec ((g7265
                                                      (letrec ((x7266 (= v 0)))
                                                        (not x7266))))
                                              g7265)))
                                         (nonzero?/c
                                          (lambda (g7167 g7168 g7169)
                                            (letrec ((g7267
                                                      (letrec ((x-cnd7268
                                                                ((lambda (v)
                                                                   (not
                                                                    (= v 0)))
                                                                 g7169)))
                                                        (if x-cnd7268
                                                          g7169
                                                          (blame
                                                           g7167
                                                           '(lambda (v)
                                                              (not
                                                               (= v 0))))))))
                                              g7267)))
                                         (meta
                                          (lambda (v)
                                            (letrec ((g7269 v)) g7269)))
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
                                            (letrec ((g7270 #t)) g7270)))
                                         (orig-+ +)
                                         (orig-- -)
                                         (orig-* *)
                                         (orig-/ /)
                                         (orig-car car)
                                         (orig-cdr cdr)
                                         (orig-cons cons)
                                         (orig-vector-ref vector-ref)
                                         (orig-vector-set vector-set!))
                                  (letrec ((g7271 '())) g7271))))
                        g7236))
                     (g7235
                      (letrec ((real/c
                                (lambda (g7143 g7144 g7145)
                                  (letrec ((g7272
                                            (letrec ((x-cnd7273 (real? g7145)))
                                              (if x-cnd7273
                                                g7145
                                                (blame g7143 'real?)))))
                                    g7272)))
                               (boolean?/c
                                (lambda (g7146 g7147 g7148)
                                  (letrec ((g7274
                                            (letrec ((x-cnd7275
                                                      (boolean? g7148)))
                                              (if x-cnd7275
                                                g7148
                                                (blame g7146 'boolean?)))))
                                    g7274)))
                               (number?/c
                                (lambda (g7149 g7150 g7151)
                                  (letrec ((g7276
                                            (letrec ((x-cnd7277
                                                      (number? g7151)))
                                              (if x-cnd7277
                                                g7151
                                                (blame g7149 'number?)))))
                                    g7276)))
                               (any/c
                                (lambda (g7152 g7153 g7154)
                                  (letrec ((g7278
                                            (letrec ((x-cnd7279
                                                      ((lambda (v) #t) g7154)))
                                              (if x-cnd7279
                                                g7154
                                                (blame
                                                 g7152
                                                 '(lambda (v) #t))))))
                                    g7278)))
                               (any?/c
                                (lambda (g7155 g7156 g7157)
                                  (letrec ((g7280
                                            (letrec ((x-cnd7281
                                                      ((lambda (v) #t) g7157)))
                                              (if x-cnd7281
                                                g7157
                                                (blame
                                                 g7155
                                                 '(lambda (v) #t))))))
                                    g7280)))
                               (image? any/c)
                               (cons?/c
                                (lambda (g7158 g7159 g7160)
                                  (letrec ((g7282
                                            (letrec ((x-cnd7283 (pair? g7160)))
                                              (if x-cnd7283
                                                g7160
                                                (blame g7158 'pair?)))))
                                    g7282)))
                               (pair?/c
                                (lambda (g7161 g7162 g7163)
                                  (letrec ((g7284
                                            (letrec ((x-cnd7285 (pair? g7163)))
                                              (if x-cnd7285
                                                g7163
                                                (blame g7161 'pair?)))))
                                    g7284)))
                               (integer?
                                (lambda (g7164 g7165 g7166)
                                  (letrec ((g7286
                                            (letrec ((x-cnd7287
                                                      (integer? g7166)))
                                              (if x-cnd7287
                                                g7166
                                                (blame g7164 'integer?)))))
                                    g7286)))
                               (and/c
                                (lambda (c1 c2)
                                  (letrec ((g7288
                                            (lambda (k j v)
                                              (letrec ((g7289
                                                        (letrec ((x-cnd7290
                                                                  (c1 k j v)))
                                                          (if x-cnd7290
                                                            (c2 k j v)
                                                            #f))))
                                                g7289))))
                                    g7288)))
                               (list-of
                                (lambda (contract)
                                  (letrec ((g7291
                                            (lambda (k j v)
                                              (letrec ((g7292
                                                        (letrec ((x-cnd7293
                                                                  (null? v)))
                                                          (if x-cnd7293
                                                            '()
                                                            (letrec ((x7297
                                                                      (letrec ((x7298
                                                                                (car
                                                                                 v)))
                                                                        (contract
                                                                         k
                                                                         j
                                                                         x7298)))
                                                                     (x7294
                                                                      (letrec ((x7296
                                                                                (list-of
                                                                                 contract))
                                                                               (x7295
                                                                                (cdr
                                                                                 v)))
                                                                        (x7296
                                                                         k
                                                                         j
                                                                         x7295))))
                                                              (cons
                                                               x7297
                                                               x7294))))))
                                                g7292))))
                                    g7291)))
                               (any? (lambda (v) (letrec ((g7299 #t)) g7299)))
                               (nonzero?
                                (lambda (v)
                                  (letrec ((g7300
                                            (letrec ((x7301 (= v 0)))
                                              (not x7301))))
                                    g7300)))
                               (nonzero?/c
                                (lambda (g7167 g7168 g7169)
                                  (letrec ((g7302
                                            (letrec ((x-cnd7303
                                                      ((lambda (v)
                                                         (not (= v 0)))
                                                       g7169)))
                                              (if x-cnd7303
                                                g7169
                                                (blame
                                                 g7167
                                                 '(lambda (v)
                                                    (not (= v 0))))))))
                                    g7302)))
                               (meta (lambda (v) (letrec ((g7304 v)) g7304)))
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
                                (lambda (cnd) (letrec ((g7305 #t)) g7305))))
                        (letrec ((g7306
                                  (letrec ((g7307
                                            (letrec ((STATE/C
                                                      (lambda (g7215
                                                               g7216
                                                               g7217)
                                                        (letrec ((g7308
                                                                  (letrec ((x-cnd7309
                                                                            ((lambda (v7214)
                                                                               (if (eq?
                                                                                    'init
                                                                                    v7214)
                                                                                 #t
                                                                                 (if (eq?
                                                                                      'opened
                                                                                      v7214)
                                                                                   #t
                                                                                   (if (eq?
                                                                                        'closed
                                                                                        v7214)
                                                                                     #t
                                                                                     (eq?
                                                                                      'ignore
                                                                                      v7214)))))
                                                                             g7217)))
                                                                    (if x-cnd7309
                                                                      g7217
                                                                      (blame
                                                                       g7215
                                                                       '(lambda (v7214)
                                                                          (if (eq?
                                                                               'init
                                                                               v7214)
                                                                            #t
                                                                            (if (eq?
                                                                                 'opened
                                                                                 v7214)
                                                                              #t
                                                                              (if (eq?
                                                                                   'closed
                                                                                   v7214)
                                                                                #t
                                                                                (eq?
                                                                                 'ignore
                                                                                 v7214))))))))))
                                                          g7308)))
                                                     (loop
                                                      (lambda ()
                                                        (letrec ((g7310
                                                                  (loop)))
                                                          g7310)))
                                                     (readit
                                                      (lambda (st)
                                                        (letrec ((g7311
                                                                  (letrec ((x-cnd7312
                                                                            (equal?
                                                                             'opened
                                                                             st)))
                                                                    (if x-cnd7312
                                                                      'opened
                                                                      'ignore))))
                                                          g7311)))
                                                     (read_
                                                      (lambda (x st)
                                                        (letrec ((g7313
                                                                  (if x
                                                                    (readit st)
                                                                    st)))
                                                          g7313)))
                                                     (closeit
                                                      (lambda (st)
                                                        (letrec ((g7314
                                                                  (if cnd
                                                                    (letrec ((g7315
                                                                              'closed))
                                                                      g7315)
                                                                    (if cnd
                                                                      (letrec ((g7316
                                                                                'ignore))
                                                                        g7316)
                                                                      (letrec ((g7317
                                                                                (loop))
                                                                               (g7318
                                                                                0))
                                                                        g7318)))))
                                                          g7314)))
                                                     (close_
                                                      (lambda (x st)
                                                        (letrec ((g7319
                                                                  (if x
                                                                    (closeit
                                                                     st)
                                                                    st)))
                                                          g7319)))
                                                     (f
                                                      (lambda (x y st)
                                                        (letrec ((g7320
                                                                  (letrec ((x7322
                                                                            (close_
                                                                             x
                                                                             st)))
                                                                    (close_
                                                                     y
                                                                     x7322)))
                                                                 (g7321
                                                                  (letrec ((x7323
                                                                            (letrec ((x7324
                                                                                      (read_
                                                                                       x
                                                                                       st)))
                                                                              (read_
                                                                               y
                                                                               x7324))))
                                                                    (f
                                                                     x
                                                                     y
                                                                     x7323))))
                                                          g7321)))
                                                     (next
                                                      (lambda (st)
                                                        (letrec ((g7325
                                                                  (letrec ((x-cnd7326
                                                                            (equal?
                                                                             'init
                                                                             st)))
                                                                    (if x-cnd7326
                                                                      'opened
                                                                      'ignore))))
                                                          g7325)))
                                                     (g
                                                      (lambda (b3 x st)
                                                        (letrec ((g7327
                                                                  (letrec ((x-cnd7328
                                                                            (>
                                                                             b3
                                                                             0)))
                                                                    (if x-cnd7328
                                                                      (letrec ((x7329
                                                                                (next
                                                                                 st)))
                                                                        (f
                                                                         x
                                                                         #t
                                                                         x7329))
                                                                      (f
                                                                       x
                                                                       #f
                                                                       st)))))
                                                          g7327)))
                                                     (main
                                                      (lambda (b2 b3)
                                                        (letrec ((g7330
                                                                  (letrec ((x-cnd7332
                                                                            (>
                                                                             b2
                                                                             0)))
                                                                    (if x-cnd7332
                                                                      (g
                                                                       b3
                                                                       #t
                                                                       'opened)
                                                                      (g
                                                                       b3
                                                                       #f
                                                                       'init))))
                                                                 (g7331 'unit))
                                                          g7331))))
                                              (letrec ((g7333
                                                        (letrec ((g7334
                                                                  (letrec ((g7335
                                                                            (letrec ((x7338
                                                                                      ((lambda (j7220
                                                                                                k7221
                                                                                                f7222)
                                                                                         (lambda (g7218
                                                                                                  g7219)
                                                                                           (any/c
                                                                                            j7220
                                                                                            k7221
                                                                                            (f7222
                                                                                             (integer?/c
                                                                                              j7220
                                                                                              k7221
                                                                                              g7218)
                                                                                             (integer?/c
                                                                                              j7220
                                                                                              k7221
                                                                                              g7219)))))
                                                                                       'module
                                                                                       'importer
                                                                                       main))
                                                                                     (x7337
                                                                                      (input))
                                                                                     (x7336
                                                                                      (input)))
                                                                              (x7338
                                                                               x7337
                                                                               x7336))))
                                                                    g7335)))
                                                          g7334)))
                                                g7333))))
                                    g7307)))
                          g7306))))
              g7235)))
    g7233))
