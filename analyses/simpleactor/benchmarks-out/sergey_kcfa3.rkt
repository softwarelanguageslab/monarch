(letrec ((any? (lambda (v) (letrec ((g7229 #t)) g7229)))
         (meta (lambda (v) (letrec ((g7230 v)) g7230)))
         (member
          (lambda (v lst)
            (letrec ((g7231
                      (letrec ((g7232
                                (letrec ((x-e7233 lst))
                                  (match
                                   x-e7233
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7234 (eq? v v1)))
                                       (if x-cnd7234 #t (member v vs)))))))))
                        g7232)))
              g7231)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7235 (lambda (v) (letrec ((g7236 v)) g7236)))) g7235)))
         (nonzero?
          (lambda (v)
            (letrec ((g7237 (letrec ((x7238 (= v 0))) (not x7238)))) g7237))))
  (letrec ((g7239
            (letrec ((g7240
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7241 '())
                                 (g7242
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7243
                                                        (letrec ((x-cnd7244
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7244
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7243)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7245
                                                        (letrec ((x-cnd7246
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7246
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7245)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7247
                                                        (letrec ((x-cnd7248
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7248
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7247)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7249
                                                        (letrec ((x-cnd7250
                                                                  ((lambda (v)
                                                                     (letrec ((g7251
                                                                               #t))
                                                                       g7251))
                                                                   g7171)))
                                                          (if x-cnd7250
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7249)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7252
                                                        (letrec ((x-cnd7253
                                                                  ((lambda (v)
                                                                     (letrec ((g7254
                                                                               #t))
                                                                       g7254))
                                                                   g7174)))
                                                          (if x-cnd7253
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7252)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7255
                                                        (letrec ((x-cnd7256
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7256
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7255)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7257
                                                        (letrec ((x-cnd7258
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7258
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7257)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7260
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7259)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7261
                                                        (lambda (k j v)
                                                          (letrec ((g7262
                                                                    (letrec ((x-cnd7263
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7263
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7262))))
                                                g7261)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7264
                                                        (lambda (k j v)
                                                          (letrec ((g7265
                                                                    (letrec ((x-cnd7266
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7266
                                                                        '()
                                                                        (letrec ((x7270
                                                                                  (letrec ((x7271
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7271)))
                                                                                 (x7267
                                                                                  (letrec ((x7269
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7268
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7269
                                                                                     k
                                                                                     j
                                                                                     x7268))))
                                                                          (cons
                                                                           x7270
                                                                           x7267))))))
                                                            g7265))))
                                                g7264)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7272 #t)) g7272)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7273
                                                        (letrec ((x7274
                                                                  (= v 0)))
                                                          (not x7274))))
                                                g7273)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7275
                                                        (letrec ((x-cnd7276
                                                                  ((lambda (v)
                                                                     (letrec ((g7277
                                                                               (letrec ((x7278
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7278))))
                                                                       g7277))
                                                                   g7186)))
                                                          (if x-cnd7276
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7275)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7279 v)) g7279)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7281
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7282
                                                                     (letrec ((x7283
                                                                               (letrec ((x7285
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7284
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7285
                                                                                  x7284))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7283))))
                                                             g7282))))
                                                 g7281))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7280 (orig-+ a b)))
                                                 g7280))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7287
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7288
                                                                     (letrec ((x7289
                                                                               (letrec ((x7291
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7290
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7291
                                                                                  x7290))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7289))))
                                                             g7288))))
                                                 g7287))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7286 (orig-- a b)))
                                                 g7286))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7293
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7294
                                                                     (letrec ((x7295
                                                                               (letrec ((x7297
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7296
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7297
                                                                                  x7296))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7295))))
                                                             g7294))))
                                                 g7293))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7292 (orig-* a b)))
                                                 g7292))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7299
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7300
                                                                     (letrec ((x7301
                                                                               (letrec ((x7303
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7302
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7303
                                                                                  x7302))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7301))))
                                                             g7300))))
                                                 g7299))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7298 (orig-/ a b)))
                                                 g7298))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7305
                                                         (lambda (g7207)
                                                           (letrec ((g7306
                                                                     (letrec ((x7307
                                                                               (letrec ((x7308
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7308))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7307))))
                                                             g7306))))
                                                 g7305))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7304 (orig-car p)))
                                                 g7304))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7310
                                                         (lambda (g7211)
                                                           (letrec ((g7311
                                                                     (letrec ((x7312
                                                                               (letrec ((x7313
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7313))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7312))))
                                                             g7311))))
                                                 g7310))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7309 (orig-cdr p)))
                                                 g7309))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7315
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7316
                                                                     (letrec ((x7317
                                                                               (letrec ((x7319
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7318
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7319
                                                                                  x7318))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7317))))
                                                             g7316))))
                                                 g7315))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7314 (cons a b)))
                                                 g7314))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7321
                                                         (lambda (g7220)
                                                           (letrec ((g7322
                                                                     (letrec ((x7323
                                                                               (letrec ((x7324
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7324))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7323))))
                                                             g7322))))
                                                 g7321))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7320
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7320))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7326
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7327
                                                                     (letrec ((x7328
                                                                               (letrec ((x7330
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7329
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7330
                                                                                  x7329))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7328))))
                                                             g7327))))
                                                 g7326))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7325
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7325))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7331 #t)) g7331)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7332
                                                        (letrec ((x7333
                                                                  (letrec ((x7334
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7334))))
                                                          (cdr x7333))))
                                                g7332)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7335
                                                        (letrec ((x7338
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7338)))
                                                       (g7336
                                                        (letrec ((x7339
                                                                  (list? l)))
                                                          (assert x7339)))
                                                       (g7337
                                                        (letrec ((x-cnd7340
                                                                  (null? l)))
                                                          (if x-cnd7340
                                                            '()
                                                            (letrec ((x7343
                                                                      (letrec ((x7344
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7344)))
                                                                     (x7341
                                                                      (letrec ((x7342
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7342))))
                                                              (cons
                                                               x7343
                                                               x7341))))))
                                                g7337)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7345
                                                        (letrec ((x7346
                                                                  (car x)))
                                                          (cdr x7346))))
                                                g7345)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7347
                                                        (letrec ((x7348
                                                                  (letrec ((x7349
                                                                            (letrec ((x7350
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7350))))
                                                                    (cdr
                                                                     x7349))))
                                                          (car x7348))))
                                                g7347)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7351
                                                        (letrec ((x7352
                                                                  (letrec ((x7353
                                                                            (letrec ((x7354
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7354))))
                                                                    (car
                                                                     x7353))))
                                                          (cdr x7352))))
                                                g7351)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7355
                                                        (letrec ((x7358
                                                                  (string?
                                                                   filename)))
                                                          (assert x7358)))
                                                       (g7356
                                                        (letrec ((x7359
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7359)))
                                                       (g7357
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7360
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7361 res))
                                                            g7361))))
                                                g7357)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7363
                                                                  (letrec ((x7364
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7364))))
                                                          (car x7363))))
                                                g7362)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7366
                                                                  (letrec ((x7367
                                                                            (letrec ((x7368
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7368))))
                                                                    (car
                                                                     x7367))))
                                                          (cdr x7366))))
                                                g7365)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7369
                                                        (letrec ((x7371
                                                                  (list? l)))
                                                          (assert x7371)))
                                                       (g7370
                                                        (letrec ((x-cnd7372
                                                                  (null? l)))
                                                          (if x-cnd7372
                                                            #f
                                                            (letrec ((x-cnd7373
                                                                      (letrec ((x7374
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7374
                                                                         k))))
                                                              (if x-cnd7373
                                                                (car l)
                                                                (letrec ((x7375
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7375))))))))
                                                g7370)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7377))))
                                                g7376)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7378
                                                        (letrec ((x7380
                                                                  (list? l)))
                                                          (assert x7380)))
                                                       (g7379
                                                        (letrec ((x-cnd7381
                                                                  (null? l)))
                                                          (if x-cnd7381
                                                            ""
                                                            (letrec ((x7384
                                                                      (letrec ((x7385
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7385)))
                                                                     (x7382
                                                                      (letrec ((x7383
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7383))))
                                                              (string-append
                                                               x7384
                                                               x7382))))))
                                                g7379)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7386
                                                        (letrec ((x7389
                                                                  (char? c1)))
                                                          (assert x7389)))
                                                       (g7387
                                                        (letrec ((x7390
                                                                  (char? c2)))
                                                          (assert x7390)))
                                                       (g7388
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7391
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7391))))
                                                g7388)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7392
                                                        (letrec ((x7393
                                                                  (letrec ((x7394
                                                                            (letrec ((x7395
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7395))))
                                                                    (cdr
                                                                     x7394))))
                                                          (cdr x7393))))
                                                g7392)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7396
                                                        (letrec ((x7399
                                                                  (list? l)))
                                                          (assert x7399)))
                                                       (g7397
                                                        (letrec ((x7400
                                                                  (numer?)))
                                                          (assert x7400)))
                                                       (g7398
                                                        (letrec ((x-cnd7401
                                                                  (zero? k)))
                                                          (if x-cnd7401
                                                            x
                                                            (letrec ((x7403
                                                                      (cdr x))
                                                                     (x7402
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7403
                                                               x7402))))))
                                                g7398)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7404 '())) g7404)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7405
                                                        (letrec ((x-cnd7406
                                                                  (letrec ((x7407
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7407))))
                                                          (if x-cnd7406
                                                            (letrec ((x7408
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7408))
                                                            #f))))
                                                g7405)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7409
                                                        (letrec ((x7411
                                                                  (number? x)))
                                                          (assert x7411)))
                                                       (g7410
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7412
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7413
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7413)))))
                                                            g7412))))
                                                g7410)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7414
                                                        (letrec ((val7146
                                                                  (letrec ((x7415
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7415
                                                                     9))))
                                                          (letrec ((g7416
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7417
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7417
                                                                                   10))))
                                                                        (letrec ((g7418
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7419
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7419
                                                                                       32)))))
                                                                          g7418)))))
                                                            g7416))))
                                                g7414)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7420
                                                        (letrec ((x7421
                                                                  (letrec ((x7422
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7422))))
                                                          (cdr x7421))))
                                                g7420)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7423
                                                        (letrec ((x7425
                                                                  (number? x)))
                                                          (assert x7425)))
                                                       (g7424 (> x 0)))
                                                g7424)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7426 #f)) g7426)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7428
                                                                  (cdr x)))
                                                          (cdr x7428))))
                                                g7427)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7429
                                                        (letrec ((x7431
                                                                  (number? x)))
                                                          (assert x7431)))
                                                       (g7430
                                                        (letrec ((x-cnd7432
                                                                  (< x 0)))
                                                          (if x-cnd7432
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7430)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7433
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7434
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7436
                                                                                          (null?
                                                                                           a))
                                                                                         (x7435
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7436
                                                                                       x7435))))
                                                                        (letrec ((g7437
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7440
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7439
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7438
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7440
                                                                                                     x7439
                                                                                                     x7438))))
                                                                                      (letrec ((g7441
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7449
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7448
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7445
                                                                                                                      (letrec ((x7447
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7446
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7447
                                                                                                                         x7446)))
                                                                                                                     (x7442
                                                                                                                      (letrec ((x7444
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7443
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7444
                                                                                                                         x7443))))
                                                                                                              (and x7449
                                                                                                                   x7448
                                                                                                                   x7445
                                                                                                                   x7442))))
                                                                                                    (letrec ((g7450
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7469
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7468
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7451
                                                                                                                          (letrec ((x7465
                                                                                                                                    (letrec ((x7466
                                                                                                                                              (letrec ((x7467
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7467))))
                                                                                                                                      (x7466)))
                                                                                                                                   (x7452
                                                                                                                                    (letrec ((x7463
                                                                                                                                              (letrec ((x7464
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7464
                                                                                                                                                 n)))
                                                                                                                                             (x7453
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7454
                                                                                                                                                                    (letrec ((x7461
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7455
                                                                                                                                                                              (letrec ((x7458
                                                                                                                                                                                        (letrec ((x7460
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7459
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7460
                                                                                                                                                                                           x7459)))
                                                                                                                                                                                       (x7456
                                                                                                                                                                                        (letrec ((x7457
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7457))))
                                                                                                                                                                                (and x7458
                                                                                                                                                                                     x7456))))
                                                                                                                                                                      (or x7461
                                                                                                                                                                          x7455))))
                                                                                                                                                            g7454))))
                                                                                                                                                (letrec ((g7462
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7462))))
                                                                                                                                      (and x7463
                                                                                                                                           x7453))))
                                                                                                                            (let x7465 x7452))))
                                                                                                                  (and x7469
                                                                                                                       x7468
                                                                                                                       x7451)))))
                                                                                                      g7450)))))
                                                                                        g7441)))))
                                                                          g7437)))))
                                                            g7434))))
                                                g7433)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7470
                                                        (letrec ((x7471
                                                                  (letrec ((x7472
                                                                            (letrec ((x7473
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7473))))
                                                                    (car
                                                                     x7472))))
                                                          (cdr x7471))))
                                                g7470)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (letrec ((x7477
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7477))))
                                                                    (car
                                                                     x7476))))
                                                          (car x7475))))
                                                g7474)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7478 (eq? x y)))
                                                g7478)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7479
                                                        (letrec ((x7481
                                                                  (number? x)))
                                                          (assert x7481)))
                                                       (g7480
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7482
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7483
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7483)))))
                                                            g7482))))
                                                g7480)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7484
                                                        (letrec ((x7487
                                                                  (string?
                                                                   filename)))
                                                          (assert x7487)))
                                                       (g7485
                                                        (letrec ((x7488
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7488)))
                                                       (g7486
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7489
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7490 res))
                                                            g7490))))
                                                g7486)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7491 (cons x '())))
                                                g7491)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7492
                                                        (letrec ((x7495
                                                                  (char? c1)))
                                                          (assert x7495)))
                                                       (g7493
                                                        (letrec ((x7496
                                                                  (char? c2)))
                                                          (assert x7496)))
                                                       (g7494
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7497
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7497))))
                                                g7494)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7498
                                                        (letrec ((x7499
                                                                  (letrec ((x7500
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7500))))
                                                          (cdr x7499))))
                                                g7498)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7501
                                                        (letrec ((x7502
                                                                  (letrec ((x7503
                                                                            (letrec ((x7504
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7504))))
                                                                    (car
                                                                     x7503))))
                                                          (cdr x7502))))
                                                g7501)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7507))))
                                                          (car x7506))))
                                                g7505)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7510))))
                                                          (car x7509))))
                                                g7508)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7511
                                                        (letrec ((x7514
                                                                  (char? c1)))
                                                          (assert x7514)))
                                                       (g7512
                                                        (letrec ((x7515
                                                                  (char? c2)))
                                                          (assert x7515)))
                                                       (g7513
                                                        (letrec ((x7516
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7516))))
                                                g7513)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7517
                                                        (letrec ((x7518
                                                                  (letrec ((x7519
                                                                            (letrec ((x7520
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7520))))
                                                                    (car
                                                                     x7519))))
                                                          (car x7518))))
                                                g7517)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7521
                                                        (letrec ((x7523
                                                                  (number? x)))
                                                          (assert x7523)))
                                                       (g7522 (< x 0)))
                                                g7522)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7524 (memq e l)))
                                                g7524)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7525
                                                        (letrec ((x7526
                                                                  (letrec ((x7527
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7527))))
                                                          (car x7526))))
                                                g7525)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7528 '())) g7528)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7529
                                                        (letrec ((x7531
                                                                  (list? l)))
                                                          (assert x7531)))
                                                       (g7530
                                                        (letrec ((x-cnd7532
                                                                  (null? l)))
                                                          (if x-cnd7532
                                                            '()
                                                            (letrec ((x7535
                                                                      (letrec ((x7536
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7536)))
                                                                     (x7533
                                                                      (letrec ((x7534
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7534))))
                                                              (append
                                                               x7535
                                                               x7533))))))
                                                g7530)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7537
                                                        (letrec ((x7538
                                                                  (letrec ((x7539
                                                                            (letrec ((x7540
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7540))))
                                                                    (car
                                                                     x7539))))
                                                          (car x7538))))
                                                g7537)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7541
                                                        (letrec ((x7542
                                                                  (letrec ((x7543
                                                                            (letrec ((x7544
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7544))))
                                                                    (cdr
                                                                     x7543))))
                                                          (cdr x7542))))
                                                g7541)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7545
                                                        (letrec ((x7547
                                                                  (number? x)))
                                                          (assert x7547)))
                                                       (g7546
                                                        (letrec ((x7548
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7548))))
                                                g7546)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7549
                                                        (letrec ((x7550
                                                                  (letrec ((x7551
                                                                            (letrec ((x7552
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7552))))
                                                                    (car
                                                                     x7551))))
                                                          (car x7550))))
                                                g7549)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7553
                                                        (letrec ((x7556
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7556)))
                                                       (g7554
                                                        (letrec ((x7557
                                                                  (list?
                                                                   args)))
                                                          (assert x7557)))
                                                       (g7555
                                                        (if cnd
                                                          (letrec ((g7558
                                                                    (proc)))
                                                            g7558)
                                                          (if cnd
                                                            (letrec ((g7559
                                                                      (letrec ((x7560
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7560))))
                                                              g7559)
                                                            (if cnd
                                                              (letrec ((g7561
                                                                        (letrec ((x7563
                                                                                  (car
                                                                                   args))
                                                                                 (x7562
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7563
                                                                           x7562))))
                                                                g7561)
                                                              (if cnd
                                                                (letrec ((g7564
                                                                          (letrec ((x7567
                                                                                    (car
                                                                                     args))
                                                                                   (x7566
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7565
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7567
                                                                             x7566
                                                                             x7565))))
                                                                  g7564)
                                                                (if cnd
                                                                  (letrec ((g7568
                                                                            (letrec ((x7572
                                                                                      (car
                                                                                       args))
                                                                                     (x7571
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7570
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7569
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7572
                                                                               x7571
                                                                               x7570
                                                                               x7569))))
                                                                    g7568)
                                                                  (if cnd
                                                                    (letrec ((g7573
                                                                              (letrec ((x7579
                                                                                        (car
                                                                                         args))
                                                                                       (x7578
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7577
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7576
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7574
                                                                                        (letrec ((x7575
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7575))))
                                                                                (proc
                                                                                 x7579
                                                                                 x7578
                                                                                 x7577
                                                                                 x7576
                                                                                 x7574))))
                                                                      g7573)
                                                                    (if cnd
                                                                      (letrec ((g7580
                                                                                (letrec ((x7588
                                                                                          (car
                                                                                           args))
                                                                                         (x7587
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7586
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7585
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7583
                                                                                          (letrec ((x7584
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7584)))
                                                                                         (x7581
                                                                                          (letrec ((x7582
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7582))))
                                                                                  (proc
                                                                                   x7588
                                                                                   x7587
                                                                                   x7586
                                                                                   x7585
                                                                                   x7583
                                                                                   x7581))))
                                                                        g7580)
                                                                      (if cnd
                                                                        (letrec ((g7589
                                                                                  (letrec ((x7599
                                                                                            (car
                                                                                             args))
                                                                                           (x7598
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7597
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7596
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7594
                                                                                            (letrec ((x7595
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7595)))
                                                                                           (x7592
                                                                                            (letrec ((x7593
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7593)))
                                                                                           (x7590
                                                                                            (letrec ((x7591
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7591))))
                                                                                    (proc
                                                                                     x7599
                                                                                     x7598
                                                                                     x7597
                                                                                     x7596
                                                                                     x7594
                                                                                     x7592
                                                                                     x7590))))
                                                                          g7589)
                                                                        (letrec ((g7600
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7600)))))))))))
                                                g7555)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7601
                                                        (letrec ((x7603
                                                                  (list? l)))
                                                          (assert x7603)))
                                                       (g7602
                                                        (letrec ((x-cnd7604
                                                                  (null? l)))
                                                          (if x-cnd7604
                                                            #f
                                                            (letrec ((x-cnd7605
                                                                      (letrec ((x7606
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7606
                                                                         e))))
                                                              (if x-cnd7605
                                                                l
                                                                (letrec ((x7607
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7607))))))))
                                                g7602)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7608
                                                        (letrec ((x7609
                                                                  (letrec ((x7610
                                                                            (letrec ((x7611
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7611))))
                                                                    (cdr
                                                                     x7610))))
                                                          (cdr x7609))))
                                                g7608)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7612
                                                        (letrec ((x7613
                                                                  (letrec ((x7614
                                                                            (letrec ((x7615
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7615))))
                                                                    (cdr
                                                                     x7614))))
                                                          (car x7613))))
                                                g7612)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7616 (random 42)))
                                                g7616)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7619
                                                                  (number? x)))
                                                          (assert x7619)))
                                                       (g7618 (= x 0)))
                                                g7618)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7620
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7621
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7621))))
                                                g7620)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7623
                                                                  (cdr x)))
                                                          (car x7623))))
                                                g7622)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7624
                                                        (letrec ((val7156
                                                                  (letrec ((x7627
                                                                            (pair?
                                                                             l))
                                                                           (x7625
                                                                            (letrec ((x7626
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7626))))
                                                                    (and x7627
                                                                         x7625))))
                                                          (letrec ((g7628
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7628))))
                                                g7624)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (letrec ((x7631
                                                                            (letrec ((x7632
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7632))))
                                                                    (cdr
                                                                     x7631))))
                                                          (cdr x7630))))
                                                g7629)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7633
                                                        (letrec ((x-cnd7634
                                                                  (letrec ((x7635
                                                                            #\0))
                                                                    (char<=?
                                                                     x7635
                                                                     c))))
                                                          (if x-cnd7634
                                                            (letrec ((x7636
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7636))
                                                            #f))))
                                                g7633)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7637
                                                        (letrec ((x7639
                                                                  (list? l)))
                                                          (assert x7639)))
                                                       (g7638
                                                        (letrec ((x-cnd7640
                                                                  (null? l)))
                                                          (if x-cnd7640
                                                            #f
                                                            (letrec ((x-cnd7641
                                                                      (letrec ((x7642
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7642
                                                                         k))))
                                                              (if x-cnd7641
                                                                (car l)
                                                                (letrec ((x7643
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7643))))))))
                                                g7638)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7644 (if x #f #t)))
                                                g7644)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7645 (append l1 l2)))
                                                g7645)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7646
                                                        (letrec ((x7648
                                                                  (list? l)))
                                                          (assert x7648)))
                                                       (g7647
                                                        (letrec ((x-cnd7649
                                                                  (null? l)))
                                                          (if x-cnd7649
                                                            #f
                                                            (letrec ((x-cnd7650
                                                                      (letrec ((x7651
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7651
                                                                         e))))
                                                              (if x-cnd7650
                                                                l
                                                                (letrec ((x7652
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7652))))))))
                                                g7647)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7653
                                                        (letrec ((x7654
                                                                  (letrec ((x7655
                                                                            (letrec ((x7656
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7656))))
                                                                    (cdr
                                                                     x7655))))
                                                          (car x7654))))
                                                g7653)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7657
                                                        (letrec ((x7659
                                                                  (list? l)))
                                                          (assert x7659)))
                                                       (g7658
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7660
                                                                              (letrec ((x-cnd7661
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7661
                                                                                  0
                                                                                  (letrec ((x7662
                                                                                            (letrec ((x7663
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7663))))
                                                                                    (+
                                                                                     1
                                                                                     x7662))))))
                                                                      g7660))))
                                                          (letrec ((g7664
                                                                    (rec l)))
                                                            g7664))))
                                                g7658)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7665
                                                        (letrec ((x7668
                                                                  (char? c1)))
                                                          (assert x7668)))
                                                       (g7666
                                                        (letrec ((x7669
                                                                  (char? c2)))
                                                          (assert x7669)))
                                                       (g7667
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7670
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7670))))
                                                g7667)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7671
                                                        (letrec ((x7672
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7672))))
                                                g7671)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7673
                                                        (letrec ((x7674
                                                                  (letrec ((x7675
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7675))))
                                                          (cdr x7674))))
                                                g7673)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7676
                                                        (letrec ((x7678
                                                                  (list? l)))
                                                          (assert x7678)))
                                                       (g7677
                                                        (letrec ((x-cnd7679
                                                                  (null? l)))
                                                          (if x-cnd7679
                                                            #f
                                                            (letrec ((x-cnd7680
                                                                      (letrec ((x7681
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7681
                                                                         k))))
                                                              (if x-cnd7680
                                                                (car l)
                                                                (letrec ((x7682
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7682))))))))
                                                g7677)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7683
                                                        (letrec ((x7684
                                                                  (car x)))
                                                          (car x7684))))
                                                g7683)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7685
                                                        (letrec ((x7688
                                                                  (char? c1)))
                                                          (assert x7688)))
                                                       (g7686
                                                        (letrec ((x7689
                                                                  (char? c2)))
                                                          (assert x7689)))
                                                       (g7687
                                                        (letrec ((x7690
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7690))))
                                                g7687)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7691
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7692
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7692))))
                                                g7691)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7693
                                                        (letrec ((x7696
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7696)))
                                                       (g7694
                                                        (letrec ((x7697
                                                                  (list? l)))
                                                          (assert x7697)))
                                                       (g7695
                                                        (letrec ((x-cnd7698
                                                                  (null? l)))
                                                          (if x-cnd7698
                                                            #t
                                                            (letrec ((x-cnd7699
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7699
                                                                (letrec ((g7700
                                                                          (letrec ((x7702
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7702)))
                                                                         (g7701
                                                                          (letrec ((x7703
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7703))))
                                                                  g7701)
                                                                '()))))))
                                                g7695)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7704
                                                        (letrec ((x7706
                                                                  (number? x)))
                                                          (assert x7706)))
                                                       (g7705
                                                        (letrec ((x-cnd7707
                                                                  (< x 0)))
                                                          (if x-cnd7707
                                                            (- 0 x)
                                                            x))))
                                                g7705)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7708
                                                        (letrec ((x7711
                                                                  (char? c1)))
                                                          (assert x7711)))
                                                       (g7709
                                                        (letrec ((x7712
                                                                  (char? c2)))
                                                          (assert x7712)))
                                                       (g7710
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7713
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7713))))
                                                g7710)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7714
                                                        (letrec ((x7715
                                                                  (letrec ((x7716
                                                                            (letrec ((x7717
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7717))))
                                                                    (cdr
                                                                     x7716))))
                                                          (car x7715))))
                                                g7714)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7718 #f)) g7718)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7719
                                                        (letrec ((x7721
                                                                  (letrec ((x7722
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7722)))
                                                                 (x7720
                                                                  (gcd m n)))
                                                          (/ x7721 x7720))))
                                                g7719)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7723
                                                        (letrec ((x7725
                                                                  (number? x)))
                                                          (assert x7725)))
                                                       (g7724
                                                        (letrec ((x7726
                                                                  (<= x y)))
                                                          (not x7726))))
                                                g7724)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7727
                                                        (letrec ((x7731
                                                                  (list? l)))
                                                          (assert x7731)))
                                                       (g7728
                                                        (letrec ((x7732
                                                                  (number?
                                                                   index)))
                                                          (assert x7732)))
                                                       (g7729
                                                        (letrec ((x7733
                                                                  (letrec ((x7734
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7734))))
                                                          (assert x7733)))
                                                       (g7730
                                                        (letrec ((x-cnd7735
                                                                  (= index 0)))
                                                          (if x-cnd7735
                                                            (car l)
                                                            (letrec ((x7737
                                                                      (cdr l))
                                                                     (x7736
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7737
                                                               x7736))))))
                                                g7730)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7738
                                                        (letrec ((x-cnd7739
                                                                  (= b 0)))
                                                          (if x-cnd7739
                                                            a
                                                            (letrec ((x7740
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7740))))))
                                                g7738))))
                                    (letrec ((g7741
                                              (letrec ((x7764
                                                        (letrec ((x7767 (f1))
                                                                 (x7765
                                                                  (letrec ((a
                                                                            (f1
                                                                             #t)))
                                                                    (letrec ((g7766
                                                                              (f1
                                                                               #f)))
                                                                      g7766))))
                                                          (λ x7767 x7765)))
                                                       (x7742
                                                        (letrec ((x7763 (x1))
                                                                 (x7743
                                                                  (letrec ((x7759
                                                                            (letrec ((x7762
                                                                                      (f2))
                                                                                     (x7760
                                                                                      (letrec ((b
                                                                                                (f2
                                                                                                 #t)))
                                                                                        (letrec ((g7761
                                                                                                  (f2
                                                                                                   #f)))
                                                                                          g7761))))
                                                                              (λ x7762
                                                                                x7760)))
                                                                           (x7744
                                                                            (letrec ((x7758
                                                                                      (x2))
                                                                                     (x7745
                                                                                      (letrec ((x7754
                                                                                                (letrec ((x7757
                                                                                                          (f3))
                                                                                                         (x7755
                                                                                                          (letrec ((c
                                                                                                                    (f3
                                                                                                                     #t)))
                                                                                                            (letrec ((g7756
                                                                                                                      (f3
                                                                                                                       #f)))
                                                                                                              g7756))))
                                                                                                  (λ x7757
                                                                                                    x7755)))
                                                                                               (x7746
                                                                                                (letrec ((x7753
                                                                                                          (x3))
                                                                                                         (x7747
                                                                                                          (letrec ((x7750
                                                                                                                    (letrec ((x7752
                                                                                                                              (z))
                                                                                                                             (x7751
                                                                                                                              (z
                                                                                                                               x1
                                                                                                                               x2
                                                                                                                               x3)))
                                                                                                                      (λ x7752
                                                                                                                        x7751)))
                                                                                                                   (x7748
                                                                                                                    (letrec ((x7749
                                                                                                                              (y1
                                                                                                                               y2
                                                                                                                               y3)))
                                                                                                                      (λ x7749
                                                                                                                        y1))))
                                                                                                            (x7750
                                                                                                             x7748))))
                                                                                                  (λ x7753
                                                                                                    x7747))))
                                                                                        (x7754
                                                                                         x7746))))
                                                                              (λ x7758
                                                                                x7745))))
                                                                    (x7759
                                                                     x7744))))
                                                          (λ x7763 x7743))))
                                                (x7764 x7742))))
                                      g7741))))
                          g7242))))
              g7240)))
    g7239))
