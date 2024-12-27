(letrec ((any? (lambda (v) (letrec ((g7234 #t)) g7234)))
         (meta (lambda (v) (letrec ((g7235 v)) g7235)))
         (member
          (lambda (v lst)
            (letrec ((g7236
                      (letrec ((g7237
                                (letrec ((x-e7238 lst))
                                  (match
                                   x-e7238
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7239 (eq? v v1)))
                                       (if x-cnd7239 #t (member v vs)))))))))
                        g7237)))
              g7236)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7240 (lambda (v) (letrec ((g7241 v)) g7241)))) g7240)))
         (nonzero?
          (lambda (v)
            (letrec ((g7242 (letrec ((x7243 (= v 0))) (not x7243)))) g7242))))
  (letrec ((g7244
            (letrec ((g7245
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7246 '())
                                 (g7247
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7248
                                                        (letrec ((x-cnd7249
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7249
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7248)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7250
                                                        (letrec ((x-cnd7251
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7251
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7250)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7252
                                                        (letrec ((x-cnd7253
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7253
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7252)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7254
                                                        (letrec ((x-cnd7255
                                                                  ((lambda (v)
                                                                     (letrec ((g7256
                                                                               #t))
                                                                       g7256))
                                                                   g7171)))
                                                          (if x-cnd7255
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7254)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7257
                                                        (letrec ((x-cnd7258
                                                                  ((lambda (v)
                                                                     (letrec ((g7259
                                                                               #t))
                                                                       g7259))
                                                                   g7174)))
                                                          (if x-cnd7258
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7257)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7260
                                                        (letrec ((x-cnd7261
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7261
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7260)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7263
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7262)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7265
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7264)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7266
                                                        (lambda (k j v)
                                                          (letrec ((g7267
                                                                    (letrec ((x-cnd7268
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7268
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7267))))
                                                g7266)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7269
                                                        (lambda (k j v)
                                                          (letrec ((g7270
                                                                    (letrec ((x-cnd7271
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7271
                                                                        '()
                                                                        (letrec ((x7275
                                                                                  (letrec ((x7276
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7276)))
                                                                                 (x7272
                                                                                  (letrec ((x7274
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7273
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7274
                                                                                     k
                                                                                     j
                                                                                     x7273))))
                                                                          (cons
                                                                           x7275
                                                                           x7272))))))
                                                            g7270))))
                                                g7269)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7277 #t)) g7277)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7278
                                                        (letrec ((x7279
                                                                  (= v 0)))
                                                          (not x7279))))
                                                g7278)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7280
                                                        (letrec ((x-cnd7281
                                                                  ((lambda (v)
                                                                     (letrec ((g7282
                                                                               (letrec ((x7283
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7283))))
                                                                       g7282))
                                                                   g7186)))
                                                          (if x-cnd7281
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7280)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7284 v)) g7284)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7286
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7287
                                                                     (letrec ((x7288
                                                                               (letrec ((x7290
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7289
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7290
                                                                                  x7289))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7288))))
                                                             g7287))))
                                                 g7286))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7285 (orig-+ a b)))
                                                 g7285))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7292
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7293
                                                                     (letrec ((x7294
                                                                               (letrec ((x7296
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7295
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7296
                                                                                  x7295))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7294))))
                                                             g7293))))
                                                 g7292))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7291 (orig-- a b)))
                                                 g7291))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7298
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7299
                                                                     (letrec ((x7300
                                                                               (letrec ((x7302
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7301
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7302
                                                                                  x7301))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7300))))
                                                             g7299))))
                                                 g7298))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7297 (orig-* a b)))
                                                 g7297))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7304
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7305
                                                                     (letrec ((x7306
                                                                               (letrec ((x7308
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7307
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7308
                                                                                  x7307))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7306))))
                                                             g7305))))
                                                 g7304))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7303 (orig-/ a b)))
                                                 g7303))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7310
                                                         (lambda (g7207)
                                                           (letrec ((g7311
                                                                     (letrec ((x7312
                                                                               (letrec ((x7313
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7313))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7312))))
                                                             g7311))))
                                                 g7310))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7309 (orig-car p)))
                                                 g7309))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7315
                                                         (lambda (g7211)
                                                           (letrec ((g7316
                                                                     (letrec ((x7317
                                                                               (letrec ((x7318
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7318))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7317))))
                                                             g7316))))
                                                 g7315))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7314 (orig-cdr p)))
                                                 g7314))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7320
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7321
                                                                     (letrec ((x7322
                                                                               (letrec ((x7324
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7323
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7324
                                                                                  x7323))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7322))))
                                                             g7321))))
                                                 g7320))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7319 (cons a b)))
                                                 g7319))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7326
                                                         (lambda (g7220)
                                                           (letrec ((g7327
                                                                     (letrec ((x7328
                                                                               (letrec ((x7329
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7329))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7328))))
                                                             g7327))))
                                                 g7326))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7325
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7325))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7331
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7332
                                                                     (letrec ((x7333
                                                                               (letrec ((x7335
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7334
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7335
                                                                                  x7334))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7333))))
                                                             g7332))))
                                                 g7331))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7330
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7330))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7336 #t)) g7336)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7337
                                                        (letrec ((x7338
                                                                  (letrec ((x7339
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7339))))
                                                          (cdr x7338))))
                                                g7337)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7340
                                                        (letrec ((x7343
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7343)))
                                                       (g7341
                                                        (letrec ((x7344
                                                                  (list? l)))
                                                          (assert x7344)))
                                                       (g7342
                                                        (letrec ((x-cnd7345
                                                                  (null? l)))
                                                          (if x-cnd7345
                                                            '()
                                                            (letrec ((x7348
                                                                      (letrec ((x7349
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7349)))
                                                                     (x7346
                                                                      (letrec ((x7347
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7347))))
                                                              (cons
                                                               x7348
                                                               x7346))))))
                                                g7342)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7350
                                                        (letrec ((x7351
                                                                  (car x)))
                                                          (cdr x7351))))
                                                g7350)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7352
                                                        (letrec ((x7353
                                                                  (letrec ((x7354
                                                                            (letrec ((x7355
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7355))))
                                                                    (cdr
                                                                     x7354))))
                                                          (car x7353))))
                                                g7352)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7356
                                                        (letrec ((x7357
                                                                  (letrec ((x7358
                                                                            (letrec ((x7359
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7359))))
                                                                    (car
                                                                     x7358))))
                                                          (cdr x7357))))
                                                g7356)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7360
                                                        (letrec ((x7363
                                                                  (string?
                                                                   filename)))
                                                          (assert x7363)))
                                                       (g7361
                                                        (letrec ((x7364
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7364)))
                                                       (g7362
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7365
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7366 res))
                                                            g7366))))
                                                g7362)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (letrec ((x7369
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7369))))
                                                          (car x7368))))
                                                g7367)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (letrec ((x7372
                                                                            (letrec ((x7373
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7373))))
                                                                    (car
                                                                     x7372))))
                                                          (cdr x7371))))
                                                g7370)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7374
                                                        (letrec ((x7376
                                                                  (list? l)))
                                                          (assert x7376)))
                                                       (g7375
                                                        (letrec ((x-cnd7377
                                                                  (null? l)))
                                                          (if x-cnd7377
                                                            #f
                                                            (letrec ((x-cnd7378
                                                                      (letrec ((x7379
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7379
                                                                         k))))
                                                              (if x-cnd7378
                                                                (car l)
                                                                (letrec ((x7380
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7380))))))))
                                                g7375)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7381
                                                        (letrec ((x7382
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7382))))
                                                g7381)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7383
                                                        (letrec ((x7385
                                                                  (list? l)))
                                                          (assert x7385)))
                                                       (g7384
                                                        (letrec ((x-cnd7386
                                                                  (null? l)))
                                                          (if x-cnd7386
                                                            ""
                                                            (letrec ((x7389
                                                                      (letrec ((x7390
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7390)))
                                                                     (x7387
                                                                      (letrec ((x7388
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7388))))
                                                              (string-append
                                                               x7389
                                                               x7387))))))
                                                g7384)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7391
                                                        (letrec ((x7394
                                                                  (char? c1)))
                                                          (assert x7394)))
                                                       (g7392
                                                        (letrec ((x7395
                                                                  (char? c2)))
                                                          (assert x7395)))
                                                       (g7393
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7396
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7396))))
                                                g7393)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7397
                                                        (letrec ((x7398
                                                                  (letrec ((x7399
                                                                            (letrec ((x7400
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7400))))
                                                                    (cdr
                                                                     x7399))))
                                                          (cdr x7398))))
                                                g7397)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7401
                                                        (letrec ((x7404
                                                                  (list? l)))
                                                          (assert x7404)))
                                                       (g7402
                                                        (letrec ((x7405
                                                                  (numer?)))
                                                          (assert x7405)))
                                                       (g7403
                                                        (letrec ((x-cnd7406
                                                                  (zero? k)))
                                                          (if x-cnd7406
                                                            x
                                                            (letrec ((x7408
                                                                      (cdr x))
                                                                     (x7407
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7408
                                                               x7407))))))
                                                g7403)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7409 '())) g7409)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7410
                                                        (letrec ((x-cnd7411
                                                                  (letrec ((x7412
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7412))))
                                                          (if x-cnd7411
                                                            (letrec ((x7413
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7413))
                                                            #f))))
                                                g7410)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7414
                                                        (letrec ((x7416
                                                                  (number? x)))
                                                          (assert x7416)))
                                                       (g7415
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7417
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7418
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7418)))))
                                                            g7417))))
                                                g7415)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7419
                                                        (letrec ((val7146
                                                                  (letrec ((x7420
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7420
                                                                     9))))
                                                          (letrec ((g7421
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7422
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7422
                                                                                   10))))
                                                                        (letrec ((g7423
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7424
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7424
                                                                                       32)))))
                                                                          g7423)))))
                                                            g7421))))
                                                g7419)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (letrec ((x7427
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7427))))
                                                          (cdr x7426))))
                                                g7425)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7430
                                                                  (number? x)))
                                                          (assert x7430)))
                                                       (g7429 (> x 0)))
                                                g7429)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7431 #f)) g7431)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7433
                                                                  (cdr x)))
                                                          (cdr x7433))))
                                                g7432)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7436
                                                                  (number? x)))
                                                          (assert x7436)))
                                                       (g7435
                                                        (letrec ((x-cnd7437
                                                                  (< x 0)))
                                                          (if x-cnd7437
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7435)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7438
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7439
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7441
                                                                                          (null?
                                                                                           a))
                                                                                         (x7440
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7441
                                                                                       x7440))))
                                                                        (letrec ((g7442
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7445
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7444
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7443
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7445
                                                                                                     x7444
                                                                                                     x7443))))
                                                                                      (letrec ((g7446
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7454
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7453
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7450
                                                                                                                      (letrec ((x7452
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7451
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7452
                                                                                                                         x7451)))
                                                                                                                     (x7447
                                                                                                                      (letrec ((x7449
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7448
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7449
                                                                                                                         x7448))))
                                                                                                              (and x7454
                                                                                                                   x7453
                                                                                                                   x7450
                                                                                                                   x7447))))
                                                                                                    (letrec ((g7455
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7474
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7473
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7456
                                                                                                                          (letrec ((x7470
                                                                                                                                    (letrec ((x7471
                                                                                                                                              (letrec ((x7472
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7472))))
                                                                                                                                      (x7471)))
                                                                                                                                   (x7457
                                                                                                                                    (letrec ((x7468
                                                                                                                                              (letrec ((x7469
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7469
                                                                                                                                                 n)))
                                                                                                                                             (x7458
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7459
                                                                                                                                                                    (letrec ((x7466
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7460
                                                                                                                                                                              (letrec ((x7463
                                                                                                                                                                                        (letrec ((x7465
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7464
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7465
                                                                                                                                                                                           x7464)))
                                                                                                                                                                                       (x7461
                                                                                                                                                                                        (letrec ((x7462
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7462))))
                                                                                                                                                                                (and x7463
                                                                                                                                                                                     x7461))))
                                                                                                                                                                      (or x7466
                                                                                                                                                                          x7460))))
                                                                                                                                                            g7459))))
                                                                                                                                                (letrec ((g7467
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7467))))
                                                                                                                                      (and x7468
                                                                                                                                           x7458))))
                                                                                                                            (let x7470 x7457))))
                                                                                                                  (and x7474
                                                                                                                       x7473
                                                                                                                       x7456)))))
                                                                                                      g7455)))))
                                                                                        g7446)))))
                                                                          g7442)))))
                                                            g7439))))
                                                g7438)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7478))))
                                                                    (car
                                                                     x7477))))
                                                          (cdr x7476))))
                                                g7475)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7479
                                                        (letrec ((x7480
                                                                  (letrec ((x7481
                                                                            (letrec ((x7482
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7482))))
                                                                    (car
                                                                     x7481))))
                                                          (car x7480))))
                                                g7479)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7483 (eq? x y)))
                                                g7483)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7484
                                                        (letrec ((x7486
                                                                  (number? x)))
                                                          (assert x7486)))
                                                       (g7485
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7487
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7488
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7488)))))
                                                            g7487))))
                                                g7485)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7489
                                                        (letrec ((x7492
                                                                  (string?
                                                                   filename)))
                                                          (assert x7492)))
                                                       (g7490
                                                        (letrec ((x7493
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7493)))
                                                       (g7491
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7494
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7495 res))
                                                            g7495))))
                                                g7491)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7496 (cons x '())))
                                                g7496)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7497
                                                        (letrec ((x7500
                                                                  (char? c1)))
                                                          (assert x7500)))
                                                       (g7498
                                                        (letrec ((x7501
                                                                  (char? c2)))
                                                          (assert x7501)))
                                                       (g7499
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7502
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7502))))
                                                g7499)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7503
                                                        (letrec ((x7504
                                                                  (letrec ((x7505
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7505))))
                                                          (cdr x7504))))
                                                g7503)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7506
                                                        (letrec ((x7507
                                                                  (letrec ((x7508
                                                                            (letrec ((x7509
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7509))))
                                                                    (car
                                                                     x7508))))
                                                          (cdr x7507))))
                                                g7506)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7512
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7512))))
                                                          (car x7511))))
                                                g7510)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7514
                                                                  (letrec ((x7515
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7515))))
                                                          (car x7514))))
                                                g7513)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7516
                                                        (letrec ((x7519
                                                                  (char? c1)))
                                                          (assert x7519)))
                                                       (g7517
                                                        (letrec ((x7520
                                                                  (char? c2)))
                                                          (assert x7520)))
                                                       (g7518
                                                        (letrec ((x7521
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7521))))
                                                g7518)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7522
                                                        (letrec ((x7523
                                                                  (letrec ((x7524
                                                                            (letrec ((x7525
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7525))))
                                                                    (car
                                                                     x7524))))
                                                          (car x7523))))
                                                g7522)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7526
                                                        (letrec ((x7528
                                                                  (number? x)))
                                                          (assert x7528)))
                                                       (g7527 (< x 0)))
                                                g7527)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7529 (memq e l)))
                                                g7529)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7530
                                                        (letrec ((x7531
                                                                  (letrec ((x7532
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7532))))
                                                          (car x7531))))
                                                g7530)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7533 '())) g7533)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7534
                                                        (letrec ((x7536
                                                                  (list? l)))
                                                          (assert x7536)))
                                                       (g7535
                                                        (letrec ((x-cnd7537
                                                                  (null? l)))
                                                          (if x-cnd7537
                                                            '()
                                                            (letrec ((x7540
                                                                      (letrec ((x7541
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7541)))
                                                                     (x7538
                                                                      (letrec ((x7539
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7539))))
                                                              (append
                                                               x7540
                                                               x7538))))))
                                                g7535)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7542
                                                        (letrec ((x7543
                                                                  (letrec ((x7544
                                                                            (letrec ((x7545
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7545))))
                                                                    (car
                                                                     x7544))))
                                                          (car x7543))))
                                                g7542)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7546
                                                        (letrec ((x7547
                                                                  (letrec ((x7548
                                                                            (letrec ((x7549
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7549))))
                                                                    (cdr
                                                                     x7548))))
                                                          (cdr x7547))))
                                                g7546)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7550
                                                        (letrec ((x7552
                                                                  (number? x)))
                                                          (assert x7552)))
                                                       (g7551
                                                        (letrec ((x7553
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7553))))
                                                g7551)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7554
                                                        (letrec ((x7555
                                                                  (letrec ((x7556
                                                                            (letrec ((x7557
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7557))))
                                                                    (car
                                                                     x7556))))
                                                          (car x7555))))
                                                g7554)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7558
                                                        (letrec ((x7561
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7561)))
                                                       (g7559
                                                        (letrec ((x7562
                                                                  (list?
                                                                   args)))
                                                          (assert x7562)))
                                                       (g7560
                                                        (if cnd
                                                          (letrec ((g7563
                                                                    (proc)))
                                                            g7563)
                                                          (if cnd
                                                            (letrec ((g7564
                                                                      (letrec ((x7565
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7565))))
                                                              g7564)
                                                            (if cnd
                                                              (letrec ((g7566
                                                                        (letrec ((x7568
                                                                                  (car
                                                                                   args))
                                                                                 (x7567
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7568
                                                                           x7567))))
                                                                g7566)
                                                              (if cnd
                                                                (letrec ((g7569
                                                                          (letrec ((x7572
                                                                                    (car
                                                                                     args))
                                                                                   (x7571
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7570
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7572
                                                                             x7571
                                                                             x7570))))
                                                                  g7569)
                                                                (if cnd
                                                                  (letrec ((g7573
                                                                            (letrec ((x7577
                                                                                      (car
                                                                                       args))
                                                                                     (x7576
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7575
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7574
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7577
                                                                               x7576
                                                                               x7575
                                                                               x7574))))
                                                                    g7573)
                                                                  (if cnd
                                                                    (letrec ((g7578
                                                                              (letrec ((x7584
                                                                                        (car
                                                                                         args))
                                                                                       (x7583
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7582
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7581
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7579
                                                                                        (letrec ((x7580
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7580))))
                                                                                (proc
                                                                                 x7584
                                                                                 x7583
                                                                                 x7582
                                                                                 x7581
                                                                                 x7579))))
                                                                      g7578)
                                                                    (if cnd
                                                                      (letrec ((g7585
                                                                                (letrec ((x7593
                                                                                          (car
                                                                                           args))
                                                                                         (x7592
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7591
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7590
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7588
                                                                                          (letrec ((x7589
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7589)))
                                                                                         (x7586
                                                                                          (letrec ((x7587
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7587))))
                                                                                  (proc
                                                                                   x7593
                                                                                   x7592
                                                                                   x7591
                                                                                   x7590
                                                                                   x7588
                                                                                   x7586))))
                                                                        g7585)
                                                                      (if cnd
                                                                        (letrec ((g7594
                                                                                  (letrec ((x7604
                                                                                            (car
                                                                                             args))
                                                                                           (x7603
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7602
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7601
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7599
                                                                                            (letrec ((x7600
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7600)))
                                                                                           (x7597
                                                                                            (letrec ((x7598
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7598)))
                                                                                           (x7595
                                                                                            (letrec ((x7596
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7596))))
                                                                                    (proc
                                                                                     x7604
                                                                                     x7603
                                                                                     x7602
                                                                                     x7601
                                                                                     x7599
                                                                                     x7597
                                                                                     x7595))))
                                                                          g7594)
                                                                        (letrec ((g7605
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7605)))))))))))
                                                g7560)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7606
                                                        (letrec ((x7608
                                                                  (list? l)))
                                                          (assert x7608)))
                                                       (g7607
                                                        (letrec ((x-cnd7609
                                                                  (null? l)))
                                                          (if x-cnd7609
                                                            #f
                                                            (letrec ((x-cnd7610
                                                                      (letrec ((x7611
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7611
                                                                         e))))
                                                              (if x-cnd7610
                                                                l
                                                                (letrec ((x7612
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7612))))))))
                                                g7607)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (letrec ((x7615
                                                                            (letrec ((x7616
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7616))))
                                                                    (cdr
                                                                     x7615))))
                                                          (cdr x7614))))
                                                g7613)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (letrec ((x7619
                                                                            (letrec ((x7620
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7620))))
                                                                    (cdr
                                                                     x7619))))
                                                          (car x7618))))
                                                g7617)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7621 (random 42)))
                                                g7621)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7622
                                                        (letrec ((x7624
                                                                  (number? x)))
                                                          (assert x7624)))
                                                       (g7623 (= x 0)))
                                                g7623)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7625
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7626
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7626))))
                                                g7625)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (cdr x)))
                                                          (car x7628))))
                                                g7627)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7629
                                                        (letrec ((val7156
                                                                  (letrec ((x7632
                                                                            (pair?
                                                                             l))
                                                                           (x7630
                                                                            (letrec ((x7631
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7631))))
                                                                    (and x7632
                                                                         x7630))))
                                                          (letrec ((g7633
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7633))))
                                                g7629)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (letrec ((x7637
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7637))))
                                                                    (cdr
                                                                     x7636))))
                                                          (cdr x7635))))
                                                g7634)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7638
                                                        (letrec ((x-cnd7639
                                                                  (letrec ((x7640
                                                                            #\0))
                                                                    (char<=?
                                                                     x7640
                                                                     c))))
                                                          (if x-cnd7639
                                                            (letrec ((x7641
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7641))
                                                            #f))))
                                                g7638)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7642
                                                        (letrec ((x7644
                                                                  (list? l)))
                                                          (assert x7644)))
                                                       (g7643
                                                        (letrec ((x-cnd7645
                                                                  (null? l)))
                                                          (if x-cnd7645
                                                            #f
                                                            (letrec ((x-cnd7646
                                                                      (letrec ((x7647
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7647
                                                                         k))))
                                                              (if x-cnd7646
                                                                (car l)
                                                                (letrec ((x7648
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7648))))))))
                                                g7643)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7649 (if x #f #t)))
                                                g7649)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7650 (append l1 l2)))
                                                g7650)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7651
                                                        (letrec ((x7653
                                                                  (list? l)))
                                                          (assert x7653)))
                                                       (g7652
                                                        (letrec ((x-cnd7654
                                                                  (null? l)))
                                                          (if x-cnd7654
                                                            #f
                                                            (letrec ((x-cnd7655
                                                                      (letrec ((x7656
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7656
                                                                         e))))
                                                              (if x-cnd7655
                                                                l
                                                                (letrec ((x7657
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7657))))))))
                                                g7652)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7658
                                                        (letrec ((x7659
                                                                  (letrec ((x7660
                                                                            (letrec ((x7661
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7661))))
                                                                    (cdr
                                                                     x7660))))
                                                          (car x7659))))
                                                g7658)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7662
                                                        (letrec ((x7664
                                                                  (list? l)))
                                                          (assert x7664)))
                                                       (g7663
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7665
                                                                              (letrec ((x-cnd7666
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7666
                                                                                  0
                                                                                  (letrec ((x7667
                                                                                            (letrec ((x7668
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7668))))
                                                                                    (+
                                                                                     1
                                                                                     x7667))))))
                                                                      g7665))))
                                                          (letrec ((g7669
                                                                    (rec l)))
                                                            g7669))))
                                                g7663)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7670
                                                        (letrec ((x7673
                                                                  (char? c1)))
                                                          (assert x7673)))
                                                       (g7671
                                                        (letrec ((x7674
                                                                  (char? c2)))
                                                          (assert x7674)))
                                                       (g7672
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7675
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7675))))
                                                g7672)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7676
                                                        (letrec ((x7677
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7677))))
                                                g7676)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7678
                                                        (letrec ((x7679
                                                                  (letrec ((x7680
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7680))))
                                                          (cdr x7679))))
                                                g7678)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7681
                                                        (letrec ((x7683
                                                                  (list? l)))
                                                          (assert x7683)))
                                                       (g7682
                                                        (letrec ((x-cnd7684
                                                                  (null? l)))
                                                          (if x-cnd7684
                                                            #f
                                                            (letrec ((x-cnd7685
                                                                      (letrec ((x7686
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7686
                                                                         k))))
                                                              (if x-cnd7685
                                                                (car l)
                                                                (letrec ((x7687
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7687))))))))
                                                g7682)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7688
                                                        (letrec ((x7689
                                                                  (car x)))
                                                          (car x7689))))
                                                g7688)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7690
                                                        (letrec ((x7693
                                                                  (char? c1)))
                                                          (assert x7693)))
                                                       (g7691
                                                        (letrec ((x7694
                                                                  (char? c2)))
                                                          (assert x7694)))
                                                       (g7692
                                                        (letrec ((x7695
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7695))))
                                                g7692)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7696
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7697
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7697))))
                                                g7696)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7698
                                                        (letrec ((x7701
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7701)))
                                                       (g7699
                                                        (letrec ((x7702
                                                                  (list? l)))
                                                          (assert x7702)))
                                                       (g7700
                                                        (letrec ((x-cnd7703
                                                                  (null? l)))
                                                          (if x-cnd7703
                                                            #t
                                                            (letrec ((x-cnd7704
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7704
                                                                (letrec ((g7705
                                                                          (letrec ((x7707
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7707)))
                                                                         (g7706
                                                                          (letrec ((x7708
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7708))))
                                                                  g7706)
                                                                '()))))))
                                                g7700)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7709
                                                        (letrec ((x7711
                                                                  (number? x)))
                                                          (assert x7711)))
                                                       (g7710
                                                        (letrec ((x-cnd7712
                                                                  (< x 0)))
                                                          (if x-cnd7712
                                                            (- 0 x)
                                                            x))))
                                                g7710)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7713
                                                        (letrec ((x7716
                                                                  (char? c1)))
                                                          (assert x7716)))
                                                       (g7714
                                                        (letrec ((x7717
                                                                  (char? c2)))
                                                          (assert x7717)))
                                                       (g7715
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7718
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7718))))
                                                g7715)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x7720
                                                                  (letrec ((x7721
                                                                            (letrec ((x7722
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7722))))
                                                                    (cdr
                                                                     x7721))))
                                                          (car x7720))))
                                                g7719)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7723 #f)) g7723)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7724
                                                        (letrec ((x7726
                                                                  (letrec ((x7727
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7727)))
                                                                 (x7725
                                                                  (gcd m n)))
                                                          (/ x7726 x7725))))
                                                g7724)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7728
                                                        (letrec ((x7730
                                                                  (number? x)))
                                                          (assert x7730)))
                                                       (g7729
                                                        (letrec ((x7731
                                                                  (<= x y)))
                                                          (not x7731))))
                                                g7729)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7732
                                                        (letrec ((x7736
                                                                  (list? l)))
                                                          (assert x7736)))
                                                       (g7733
                                                        (letrec ((x7737
                                                                  (number?
                                                                   index)))
                                                          (assert x7737)))
                                                       (g7734
                                                        (letrec ((x7738
                                                                  (letrec ((x7739
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7739))))
                                                          (assert x7738)))
                                                       (g7735
                                                        (letrec ((x-cnd7740
                                                                  (= index 0)))
                                                          (if x-cnd7740
                                                            (car l)
                                                            (letrec ((x7742
                                                                      (cdr l))
                                                                     (x7741
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7742
                                                               x7741))))))
                                                g7735)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7743
                                                        (letrec ((x-cnd7744
                                                                  (= b 0)))
                                                          (if x-cnd7744
                                                            a
                                                            (letrec ((x7745
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7745))))))
                                                g7743)))
                                           (sum
                                            (lambda (n)
                                              (letrec ((g7746
                                                        (letrec ((x-cnd7747
                                                                  (<= n 0)))
                                                          (if x-cnd7747
                                                            0
                                                            (letrec ((x7748
                                                                      (letrec ((x7749
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (sum
                                                                         x7749))))
                                                              (+ n x7748))))))
                                                g7746))))
                                    (letrec ((g7750
                                              ((lambda (j7230 k7231 f7232)
                                                 (letrec ((g7751
                                                           (lambda (g7229)
                                                             (letrec ((g7752
                                                                       (letrec ((x7233
                                                                                 (integer?/c
                                                                                  j7230
                                                                                  k7231
                                                                                  g7229)))
                                                                         (letrec ((g7753
                                                                                   (letrec ((x7755
                                                                                             ((lambda (n)
                                                                                                (letrec ((g7756
                                                                                                          (letrec ((x7757
                                                                                                                    (>=/c
                                                                                                                     n)))
                                                                                                            (and/c
                                                                                                             integer?/c
                                                                                                             x7757))))
                                                                                                  g7756))
                                                                                              x7233))
                                                                                            (x7754
                                                                                             (f7232
                                                                                              x7233)))
                                                                                     (x7755
                                                                                      j7230
                                                                                      k7231
                                                                                      x7754))))
                                                                           g7753))))
                                                               g7752))))
                                                   g7751))
                                               'module
                                               'importer
                                               sum)))
                                      g7750))))
                          g7247))))
              g7245)))
    g7244))
