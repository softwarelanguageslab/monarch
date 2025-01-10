(letrec ((any? (lambda (v) (letrec ((g7236 #t)) g7236)))
         (meta (lambda (v) (letrec ((g7237 v)) g7237)))
         (member
          (lambda (v lst)
            (letrec ((g7238
                      (letrec ((g7239
                                (letrec ((x-e7240 lst))
                                  (match
                                   x-e7240
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7241 (eq? v v1)))
                                       (if x-cnd7241 #t (member v vs)))))))))
                        g7239)))
              g7238)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7242 (lambda (v) (letrec ((g7243 v)) g7243)))) g7242)))
         (nonzero?
          (lambda (v)
            (letrec ((g7244 (letrec ((x7245 (= v 0))) (not x7245)))) g7244))))
  (letrec ((g7246
            (letrec ((g7247
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7248 '())
                                 (g7249
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7250
                                                        (letrec ((x-cnd7251
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7251
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7250)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7252
                                                        (letrec ((x-cnd7253
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7253
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7252)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7254
                                                        (letrec ((x-cnd7255
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7255
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7254)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7256
                                                        (letrec ((x-cnd7257
                                                                  ((lambda (v)
                                                                     (letrec ((g7258
                                                                               #t))
                                                                       g7258))
                                                                   g7171)))
                                                          (if x-cnd7257
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7256)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7259
                                                        (letrec ((x-cnd7260
                                                                  ((lambda (v)
                                                                     (letrec ((g7261
                                                                               #t))
                                                                       g7261))
                                                                   g7174)))
                                                          (if x-cnd7260
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7259)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7262
                                                        (letrec ((x-cnd7263
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7263
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7262)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7264
                                                        (letrec ((x-cnd7265
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7265
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7264)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7266
                                                        (letrec ((x-cnd7267
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7267
                                                            g7183
                                                            (blame
                                                             g7181
                                                             'integer?)))))
                                                g7266)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7268
                                                        (lambda (k j v)
                                                          (letrec ((g7269
                                                                    (letrec ((x-cnd7270
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7270
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7269))))
                                                g7268)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7271
                                                        (lambda (k j v)
                                                          (letrec ((g7272
                                                                    (letrec ((x-cnd7273
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7273
                                                                        '()
                                                                        (letrec ((x7277
                                                                                  (letrec ((x7278
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7278)))
                                                                                 (x7274
                                                                                  (letrec ((x7276
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7275
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7276
                                                                                     k
                                                                                     j
                                                                                     x7275))))
                                                                          (cons
                                                                           x7277
                                                                           x7274))))))
                                                            g7272))))
                                                g7271)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7279 #t)) g7279)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7280
                                                        (letrec ((x7281
                                                                  (= v 0)))
                                                          (not x7281))))
                                                g7280)))
                                           (nonzero?/c
                                            (lambda (g7184 g7185 g7186)
                                              (letrec ((g7282
                                                        (letrec ((x-cnd7283
                                                                  ((lambda (v)
                                                                     (letrec ((g7284
                                                                               (letrec ((x7285
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7285))))
                                                                       g7284))
                                                                   g7186)))
                                                          (if x-cnd7283
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7282)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7286 v)) g7286)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7288
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7289
                                                                     (letrec ((x7290
                                                                               (letrec ((x7292
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7291
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7292
                                                                                  x7291))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7290))))
                                                             g7289))))
                                                 g7288))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7287 (orig-+ a b)))
                                                 g7287))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7294
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7295
                                                                     (letrec ((x7296
                                                                               (letrec ((x7298
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7297
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7298
                                                                                  x7297))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7296))))
                                                             g7295))))
                                                 g7294))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7293 (orig-- a b)))
                                                 g7293))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7300
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7301
                                                                     (letrec ((x7302
                                                                               (letrec ((x7304
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7303
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7304
                                                                                  x7303))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7302))))
                                                             g7301))))
                                                 g7300))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7299 (orig-* a b)))
                                                 g7299))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7306
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7307
                                                                     (letrec ((x7308
                                                                               (letrec ((x7310
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7309
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7310
                                                                                  x7309))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7308))))
                                                             g7307))))
                                                 g7306))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7305 (orig-/ a b)))
                                                 g7305))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7312
                                                         (lambda (g7207)
                                                           (letrec ((g7313
                                                                     (letrec ((x7314
                                                                               (letrec ((x7315
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7315))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7314))))
                                                             g7313))))
                                                 g7312))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7311 (orig-car p)))
                                                 g7311))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7317
                                                         (lambda (g7211)
                                                           (letrec ((g7318
                                                                     (letrec ((x7319
                                                                               (letrec ((x7320
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7320))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7319))))
                                                             g7318))))
                                                 g7317))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7316 (orig-cdr p)))
                                                 g7316))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7322
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7323
                                                                     (letrec ((x7324
                                                                               (letrec ((x7326
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7325
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7326
                                                                                  x7325))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7324))))
                                                             g7323))))
                                                 g7322))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7321 (cons a b)))
                                                 g7321))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7328
                                                         (lambda (g7220)
                                                           (letrec ((g7329
                                                                     (letrec ((x7330
                                                                               (letrec ((x7331
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7331))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
                                                                        x7330))))
                                                             g7329))))
                                                 g7328))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7327
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7327))))
                                           (vector-set!
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7333
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7334
                                                                     (letrec ((x7335
                                                                               (letrec ((x7337
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7336
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7337
                                                                                  x7336))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
                                                                        x7335))))
                                                             g7334))))
                                                 g7333))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7332
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7332))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7338 #t)) g7338)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7339
                                                        (letrec ((x7340
                                                                  (letrec ((x7341
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7341))))
                                                          (cdr x7340))))
                                                g7339)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7342
                                                        (letrec ((x7345
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7345)))
                                                       (g7343
                                                        (letrec ((x7346
                                                                  (list? l)))
                                                          (assert x7346)))
                                                       (g7344
                                                        (letrec ((x-cnd7347
                                                                  (null? l)))
                                                          (if x-cnd7347
                                                            '()
                                                            (letrec ((x7350
                                                                      (letrec ((x7351
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7351)))
                                                                     (x7348
                                                                      (letrec ((x7349
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7349))))
                                                              (cons
                                                               x7350
                                                               x7348))))))
                                                g7344)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7352
                                                        (letrec ((x7353
                                                                  (car x)))
                                                          (cdr x7353))))
                                                g7352)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7354
                                                        (letrec ((x7355
                                                                  (letrec ((x7356
                                                                            (letrec ((x7357
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7357))))
                                                                    (cdr
                                                                     x7356))))
                                                          (car x7355))))
                                                g7354)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7359
                                                                  (letrec ((x7360
                                                                            (letrec ((x7361
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7361))))
                                                                    (car
                                                                     x7360))))
                                                          (cdr x7359))))
                                                g7358)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7362
                                                        (letrec ((x7365
                                                                  (string?
                                                                   filename)))
                                                          (assert x7365)))
                                                       (g7363
                                                        (letrec ((x7366
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7366)))
                                                       (g7364
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7367
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7368 res))
                                                            g7368))))
                                                g7364)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7370
                                                                  (letrec ((x7371
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7371))))
                                                          (car x7370))))
                                                g7369)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7373
                                                                  (letrec ((x7374
                                                                            (letrec ((x7375
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7375))))
                                                                    (car
                                                                     x7374))))
                                                          (cdr x7373))))
                                                g7372)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7376
                                                        (letrec ((x7378
                                                                  (list? l)))
                                                          (assert x7378)))
                                                       (g7377
                                                        (letrec ((x-cnd7379
                                                                  (null? l)))
                                                          (if x-cnd7379
                                                            #f
                                                            (letrec ((x-cnd7380
                                                                      (letrec ((x7381
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7381
                                                                         k))))
                                                              (if x-cnd7380
                                                                (car l)
                                                                (letrec ((x7382
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7382))))))))
                                                g7377)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7384))))
                                                g7383)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7385
                                                        (letrec ((x7387
                                                                  (list? l)))
                                                          (assert x7387)))
                                                       (g7386
                                                        (letrec ((x-cnd7388
                                                                  (null? l)))
                                                          (if x-cnd7388
                                                            ""
                                                            (letrec ((x7391
                                                                      (letrec ((x7392
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7392)))
                                                                     (x7389
                                                                      (letrec ((x7390
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7390))))
                                                              (string-append
                                                               x7391
                                                               x7389))))))
                                                g7386)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7393
                                                        (letrec ((x7396
                                                                  (char? c1)))
                                                          (assert x7396)))
                                                       (g7394
                                                        (letrec ((x7397
                                                                  (char? c2)))
                                                          (assert x7397)))
                                                       (g7395
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7398
                                                                    (if val7143
                                                                      val7143
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7398))))
                                                g7395)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7399
                                                        (letrec ((x7400
                                                                  (letrec ((x7401
                                                                            (letrec ((x7402
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7402))))
                                                                    (cdr
                                                                     x7401))))
                                                          (cdr x7400))))
                                                g7399)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7403
                                                        (letrec ((x7406
                                                                  (list? l)))
                                                          (assert x7406)))
                                                       (g7404
                                                        (letrec ((x7407
                                                                  (numer?)))
                                                          (assert x7407)))
                                                       (g7405
                                                        (letrec ((x-cnd7408
                                                                  (zero? k)))
                                                          (if x-cnd7408
                                                            x
                                                            (letrec ((x7410
                                                                      (cdr x))
                                                                     (x7409
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7410
                                                               x7409))))))
                                                g7405)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7411 '())) g7411)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7412
                                                        (letrec ((x-cnd7413
                                                                  (letrec ((x7414
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7414))))
                                                          (if x-cnd7413
                                                            (letrec ((x7415
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7415))
                                                            #f))))
                                                g7412)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7416
                                                        (letrec ((x7418
                                                                  (number? x)))
                                                          (assert x7418)))
                                                       (g7417
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7419
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7420
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7420)))))
                                                            g7419))))
                                                g7417)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7421
                                                        (letrec ((val7146
                                                                  (letrec ((x7422
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7422
                                                                     9))))
                                                          (letrec ((g7423
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7424
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7424
                                                                                   10))))
                                                                        (letrec ((g7425
                                                                                  (if val7147
                                                                                    val7147
                                                                                    (letrec ((x7426
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7426
                                                                                       32)))))
                                                                          g7425)))))
                                                            g7423))))
                                                g7421)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7428
                                                                  (letrec ((x7429
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7429))))
                                                          (cdr x7428))))
                                                g7427)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7432
                                                                  (number? x)))
                                                          (assert x7432)))
                                                       (g7431 (> x 0)))
                                                g7431)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7433 #f)) g7433)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7435
                                                                  (cdr x)))
                                                          (cdr x7435))))
                                                g7434)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7436
                                                        (letrec ((x7438
                                                                  (number? x)))
                                                          (assert x7438)))
                                                       (g7437
                                                        (letrec ((x-cnd7439
                                                                  (< x 0)))
                                                          (if x-cnd7439
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7437)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7440
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7441
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7443
                                                                                          (null?
                                                                                           a))
                                                                                         (x7442
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7443
                                                                                       x7442))))
                                                                        (letrec ((g7444
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7447
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7446
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7445
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7447
                                                                                                     x7446
                                                                                                     x7445))))
                                                                                      (letrec ((g7448
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7456
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7455
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7452
                                                                                                                      (letrec ((x7454
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7453
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7454
                                                                                                                         x7453)))
                                                                                                                     (x7449
                                                                                                                      (letrec ((x7451
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7450
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7451
                                                                                                                         x7450))))
                                                                                                              (and x7456
                                                                                                                   x7455
                                                                                                                   x7452
                                                                                                                   x7449))))
                                                                                                    (letrec ((g7457
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7476
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7475
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7458
                                                                                                                          (letrec ((x7472
                                                                                                                                    (letrec ((x7473
                                                                                                                                              (letrec ((x7474
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7474))))
                                                                                                                                      (x7473)))
                                                                                                                                   (x7459
                                                                                                                                    (letrec ((x7470
                                                                                                                                              (letrec ((x7471
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7471
                                                                                                                                                 n)))
                                                                                                                                             (x7460
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7461
                                                                                                                                                                    (letrec ((x7468
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7462
                                                                                                                                                                              (letrec ((x7465
                                                                                                                                                                                        (letrec ((x7467
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7466
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7467
                                                                                                                                                                                           x7466)))
                                                                                                                                                                                       (x7463
                                                                                                                                                                                        (letrec ((x7464
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7464))))
                                                                                                                                                                                (and x7465
                                                                                                                                                                                     x7463))))
                                                                                                                                                                      (or x7468
                                                                                                                                                                          x7462))))
                                                                                                                                                            g7461))))
                                                                                                                                                (letrec ((g7469
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7469))))
                                                                                                                                      (and x7470
                                                                                                                                           x7460))))
                                                                                                                            (let x7472 x7459))))
                                                                                                                  (and x7476
                                                                                                                       x7475
                                                                                                                       x7458)))))
                                                                                                      g7457)))))
                                                                                        g7448)))))
                                                                          g7444)))))
                                                            g7441))))
                                                g7440)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7477
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (letrec ((x7480
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7480))))
                                                                    (car
                                                                     x7479))))
                                                          (cdr x7478))))
                                                g7477)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7481
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (letrec ((x7484
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7484))))
                                                                    (car
                                                                     x7483))))
                                                          (car x7482))))
                                                g7481)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7485 (eq? x y)))
                                                g7485)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7486
                                                        (letrec ((x7488
                                                                  (number? x)))
                                                          (assert x7488)))
                                                       (g7487
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7489
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7490
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7490)))))
                                                            g7489))))
                                                g7487)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7491
                                                        (letrec ((x7494
                                                                  (string?
                                                                   filename)))
                                                          (assert x7494)))
                                                       (g7492
                                                        (letrec ((x7495
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7495)))
                                                       (g7493
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7496
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7497 res))
                                                            g7497))))
                                                g7493)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7498 (cons x '())))
                                                g7498)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7499
                                                        (letrec ((x7502
                                                                  (char? c1)))
                                                          (assert x7502)))
                                                       (g7500
                                                        (letrec ((x7503
                                                                  (char? c2)))
                                                          (assert x7503)))
                                                       (g7501
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7504
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7504))))
                                                g7501)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7507))))
                                                          (cdr x7506))))
                                                g7505)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7508
                                                        (letrec ((x7509
                                                                  (letrec ((x7510
                                                                            (letrec ((x7511
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7511))))
                                                                    (car
                                                                     x7510))))
                                                          (cdr x7509))))
                                                g7508)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7512
                                                        (letrec ((x7513
                                                                  (letrec ((x7514
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7514))))
                                                          (car x7513))))
                                                g7512)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7515
                                                        (letrec ((x7516
                                                                  (letrec ((x7517
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7517))))
                                                          (car x7516))))
                                                g7515)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7518
                                                        (letrec ((x7521
                                                                  (char? c1)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x7522
                                                                  (char? c2)))
                                                          (assert x7522)))
                                                       (g7520
                                                        (letrec ((x7523
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7523))))
                                                g7520)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7524
                                                        (letrec ((x7525
                                                                  (letrec ((x7526
                                                                            (letrec ((x7527
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7527))))
                                                                    (car
                                                                     x7526))))
                                                          (car x7525))))
                                                g7524)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7528
                                                        (letrec ((x7530
                                                                  (number? x)))
                                                          (assert x7530)))
                                                       (g7529 (< x 0)))
                                                g7529)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7531 (memq e l)))
                                                g7531)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7532
                                                        (letrec ((x7533
                                                                  (letrec ((x7534
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7534))))
                                                          (car x7533))))
                                                g7532)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7535 '())) g7535)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7536
                                                        (letrec ((x7538
                                                                  (list? l)))
                                                          (assert x7538)))
                                                       (g7537
                                                        (letrec ((x-cnd7539
                                                                  (null? l)))
                                                          (if x-cnd7539
                                                            '()
                                                            (letrec ((x7542
                                                                      (letrec ((x7543
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7543)))
                                                                     (x7540
                                                                      (letrec ((x7541
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7541))))
                                                              (append
                                                               x7542
                                                               x7540))))))
                                                g7537)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7544
                                                        (letrec ((x7545
                                                                  (letrec ((x7546
                                                                            (letrec ((x7547
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7547))))
                                                                    (car
                                                                     x7546))))
                                                          (car x7545))))
                                                g7544)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7548
                                                        (letrec ((x7549
                                                                  (letrec ((x7550
                                                                            (letrec ((x7551
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7551))))
                                                                    (cdr
                                                                     x7550))))
                                                          (cdr x7549))))
                                                g7548)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7552
                                                        (letrec ((x7554
                                                                  (number? x)))
                                                          (assert x7554)))
                                                       (g7553
                                                        (letrec ((x7555
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7555))))
                                                g7553)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7556
                                                        (letrec ((x7557
                                                                  (letrec ((x7558
                                                                            (letrec ((x7559
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7559))))
                                                                    (car
                                                                     x7558))))
                                                          (car x7557))))
                                                g7556)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7560
                                                        (letrec ((x7563
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7563)))
                                                       (g7561
                                                        (letrec ((x7564
                                                                  (list?
                                                                   args)))
                                                          (assert x7564)))
                                                       (g7562
                                                        (if cnd
                                                          (letrec ((g7565
                                                                    (proc)))
                                                            g7565)
                                                          (if cnd
                                                            (letrec ((g7566
                                                                      (letrec ((x7567
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7567))))
                                                              g7566)
                                                            (if cnd
                                                              (letrec ((g7568
                                                                        (letrec ((x7570
                                                                                  (car
                                                                                   args))
                                                                                 (x7569
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7570
                                                                           x7569))))
                                                                g7568)
                                                              (if cnd
                                                                (letrec ((g7571
                                                                          (letrec ((x7574
                                                                                    (car
                                                                                     args))
                                                                                   (x7573
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7572
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7574
                                                                             x7573
                                                                             x7572))))
                                                                  g7571)
                                                                (if cnd
                                                                  (letrec ((g7575
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
                                                                                       args)))
                                                                              (proc
                                                                               x7579
                                                                               x7578
                                                                               x7577
                                                                               x7576))))
                                                                    g7575)
                                                                  (if cnd
                                                                    (letrec ((g7580
                                                                              (letrec ((x7586
                                                                                        (car
                                                                                         args))
                                                                                       (x7585
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7584
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7583
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7581
                                                                                        (letrec ((x7582
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7582))))
                                                                                (proc
                                                                                 x7586
                                                                                 x7585
                                                                                 x7584
                                                                                 x7583
                                                                                 x7581))))
                                                                      g7580)
                                                                    (if cnd
                                                                      (letrec ((g7587
                                                                                (letrec ((x7595
                                                                                          (car
                                                                                           args))
                                                                                         (x7594
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7593
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7592
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7590
                                                                                          (letrec ((x7591
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7591)))
                                                                                         (x7588
                                                                                          (letrec ((x7589
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7589))))
                                                                                  (proc
                                                                                   x7595
                                                                                   x7594
                                                                                   x7593
                                                                                   x7592
                                                                                   x7590
                                                                                   x7588))))
                                                                        g7587)
                                                                      (if cnd
                                                                        (letrec ((g7596
                                                                                  (letrec ((x7606
                                                                                            (car
                                                                                             args))
                                                                                           (x7605
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7604
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7603
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7601
                                                                                            (letrec ((x7602
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7602)))
                                                                                           (x7599
                                                                                            (letrec ((x7600
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7600)))
                                                                                           (x7597
                                                                                            (letrec ((x7598
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7598))))
                                                                                    (proc
                                                                                     x7606
                                                                                     x7605
                                                                                     x7604
                                                                                     x7603
                                                                                     x7601
                                                                                     x7599
                                                                                     x7597))))
                                                                          g7596)
                                                                        (letrec ((g7607
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7607)))))))))))
                                                g7562)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7608
                                                        (letrec ((x7610
                                                                  (list? l)))
                                                          (assert x7610)))
                                                       (g7609
                                                        (letrec ((x-cnd7611
                                                                  (null? l)))
                                                          (if x-cnd7611
                                                            #f
                                                            (letrec ((x-cnd7612
                                                                      (letrec ((x7613
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7613
                                                                         e))))
                                                              (if x-cnd7612
                                                                l
                                                                (letrec ((x7614
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7614))))))))
                                                g7609)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7615
                                                        (letrec ((x7616
                                                                  (letrec ((x7617
                                                                            (letrec ((x7618
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7618))))
                                                                    (cdr
                                                                     x7617))))
                                                          (cdr x7616))))
                                                g7615)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (letrec ((x7621
                                                                            (letrec ((x7622
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7622))))
                                                                    (cdr
                                                                     x7621))))
                                                          (car x7620))))
                                                g7619)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7623 (random 42)))
                                                g7623)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7624
                                                        (letrec ((x7626
                                                                  (number? x)))
                                                          (assert x7626)))
                                                       (g7625 (= x 0)))
                                                g7625)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7627
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7628
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7628))))
                                                g7627)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7629
                                                        (letrec ((x7630
                                                                  (cdr x)))
                                                          (car x7630))))
                                                g7629)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7631
                                                        (letrec ((val7156
                                                                  (letrec ((x7634
                                                                            (pair?
                                                                             l))
                                                                           (x7632
                                                                            (letrec ((x7633
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7633))))
                                                                    (and x7634
                                                                         x7632))))
                                                          (letrec ((g7635
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7635))))
                                                g7631)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (letrec ((x7638
                                                                            (letrec ((x7639
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7639))))
                                                                    (cdr
                                                                     x7638))))
                                                          (cdr x7637))))
                                                g7636)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7640
                                                        (letrec ((x-cnd7641
                                                                  (letrec ((x7642
                                                                            #\0))
                                                                    (char<=?
                                                                     x7642
                                                                     c))))
                                                          (if x-cnd7641
                                                            (letrec ((x7643
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7643))
                                                            #f))))
                                                g7640)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7644
                                                        (letrec ((x7646
                                                                  (list? l)))
                                                          (assert x7646)))
                                                       (g7645
                                                        (letrec ((x-cnd7647
                                                                  (null? l)))
                                                          (if x-cnd7647
                                                            #f
                                                            (letrec ((x-cnd7648
                                                                      (letrec ((x7649
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7649
                                                                         k))))
                                                              (if x-cnd7648
                                                                (car l)
                                                                (letrec ((x7650
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7650))))))))
                                                g7645)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7651 (if x #f #t)))
                                                g7651)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7652 (append l1 l2)))
                                                g7652)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7653
                                                        (letrec ((x7655
                                                                  (list? l)))
                                                          (assert x7655)))
                                                       (g7654
                                                        (letrec ((x-cnd7656
                                                                  (null? l)))
                                                          (if x-cnd7656
                                                            #f
                                                            (letrec ((x-cnd7657
                                                                      (letrec ((x7658
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7658
                                                                         e))))
                                                              (if x-cnd7657
                                                                l
                                                                (letrec ((x7659
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7659))))))))
                                                g7654)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7660
                                                        (letrec ((x7661
                                                                  (letrec ((x7662
                                                                            (letrec ((x7663
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7663))))
                                                                    (cdr
                                                                     x7662))))
                                                          (car x7661))))
                                                g7660)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7664
                                                        (letrec ((x7666
                                                                  (list? l)))
                                                          (assert x7666)))
                                                       (g7665
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7667
                                                                              (letrec ((x-cnd7668
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7668
                                                                                  0
                                                                                  (letrec ((x7669
                                                                                            (letrec ((x7670
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7670))))
                                                                                    (+
                                                                                     1
                                                                                     x7669))))))
                                                                      g7667))))
                                                          (letrec ((g7671
                                                                    (rec l)))
                                                            g7671))))
                                                g7665)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7672
                                                        (letrec ((x7675
                                                                  (char? c1)))
                                                          (assert x7675)))
                                                       (g7673
                                                        (letrec ((x7676
                                                                  (char? c2)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7677
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7677))))
                                                g7674)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7678
                                                        (letrec ((x7679
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7679))))
                                                g7678)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7680
                                                        (letrec ((x7681
                                                                  (letrec ((x7682
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7682))))
                                                          (cdr x7681))))
                                                g7680)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7683
                                                        (letrec ((x7685
                                                                  (list? l)))
                                                          (assert x7685)))
                                                       (g7684
                                                        (letrec ((x-cnd7686
                                                                  (null? l)))
                                                          (if x-cnd7686
                                                            #f
                                                            (letrec ((x-cnd7687
                                                                      (letrec ((x7688
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7688
                                                                         k))))
                                                              (if x-cnd7687
                                                                (car l)
                                                                (letrec ((x7689
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7689))))))))
                                                g7684)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7690
                                                        (letrec ((x7691
                                                                  (car x)))
                                                          (car x7691))))
                                                g7690)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7692
                                                        (letrec ((x7695
                                                                  (char? c1)))
                                                          (assert x7695)))
                                                       (g7693
                                                        (letrec ((x7696
                                                                  (char? c2)))
                                                          (assert x7696)))
                                                       (g7694
                                                        (letrec ((x7697
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7697))))
                                                g7694)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7698
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7699
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7699))))
                                                g7698)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7700
                                                        (letrec ((x7703
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7703)))
                                                       (g7701
                                                        (letrec ((x7704
                                                                  (list? l)))
                                                          (assert x7704)))
                                                       (g7702
                                                        (letrec ((x-cnd7705
                                                                  (null? l)))
                                                          (if x-cnd7705
                                                            #t
                                                            (letrec ((x-cnd7706
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7706
                                                                (letrec ((g7707
                                                                          (letrec ((x7709
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7709)))
                                                                         (g7708
                                                                          (letrec ((x7710
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7710))))
                                                                  g7708)
                                                                '()))))))
                                                g7702)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7711
                                                        (letrec ((x7713
                                                                  (number? x)))
                                                          (assert x7713)))
                                                       (g7712
                                                        (letrec ((x-cnd7714
                                                                  (< x 0)))
                                                          (if x-cnd7714
                                                            (- 0 x)
                                                            x))))
                                                g7712)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7715
                                                        (letrec ((x7718
                                                                  (char? c1)))
                                                          (assert x7718)))
                                                       (g7716
                                                        (letrec ((x7719
                                                                  (char? c2)))
                                                          (assert x7719)))
                                                       (g7717
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7720
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7720))))
                                                g7717)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7721
                                                        (letrec ((x7722
                                                                  (letrec ((x7723
                                                                            (letrec ((x7724
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7724))))
                                                                    (cdr
                                                                     x7723))))
                                                          (car x7722))))
                                                g7721)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7725 #f)) g7725)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7726
                                                        (letrec ((x7728
                                                                  (letrec ((x7729
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7729)))
                                                                 (x7727
                                                                  (gcd m n)))
                                                          (/ x7728 x7727))))
                                                g7726)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7730
                                                        (letrec ((x7732
                                                                  (number? x)))
                                                          (assert x7732)))
                                                       (g7731
                                                        (letrec ((x7733
                                                                  (<= x y)))
                                                          (not x7733))))
                                                g7731)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7734
                                                        (letrec ((x7738
                                                                  (list? l)))
                                                          (assert x7738)))
                                                       (g7735
                                                        (letrec ((x7739
                                                                  (number?
                                                                   index)))
                                                          (assert x7739)))
                                                       (g7736
                                                        (letrec ((x7740
                                                                  (letrec ((x7741
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7741))))
                                                          (assert x7740)))
                                                       (g7737
                                                        (letrec ((x-cnd7742
                                                                  (= index 0)))
                                                          (if x-cnd7742
                                                            (car l)
                                                            (letrec ((x7744
                                                                      (cdr l))
                                                                     (x7743
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7744
                                                               x7743))))))
                                                g7737)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7745
                                                        (letrec ((x-cnd7746
                                                                  (= b 0)))
                                                          (if x-cnd7746
                                                            a
                                                            (letrec ((x7747
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7747))))))
                                                g7745)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7748
                                                        (letrec ((x-cnd7749
                                                                  (empty? l)))
                                                          (if x-cnd7749
                                                            empty
                                                            (letrec ((x7753
                                                                      (car l))
                                                                     (x7750
                                                                      (letrec ((x7751
                                                                                (letrec ((x7752
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7752))))
                                                                        (recursive-div2
                                                                         x7751))))
                                                              (cons
                                                               x7753
                                                               x7750))))))
                                                g7748)))
                                           (even-list/c
                                            (lambda (g7229 g7230 g7231)
                                              (letrec ((g7754
                                                        (letrec ((x-cnd7755
                                                                  ((lambda ()
                                                                     (letrec ((g7756
                                                                               (letrec ((x7757
                                                                                         (letrec ((x7758
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7758))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7757))))
                                                                       g7756))
                                                                   g7231)))
                                                          (if x-cnd7755
                                                            g7231
                                                            (blame
                                                             g7229
                                                             '(lambda ()
                                                                (or/c
                                                                 null?
                                                                 (cons/c
                                                                  any/c
                                                                  (cons/c
                                                                   any/c
                                                                   even-list/c)))))))))
                                                g7754))))
                                    (letrec ((g7759
                                              (letrec ((x7761
                                                        ((lambda (j7233
                                                                  k7234
                                                                  f7235)
                                                           (letrec ((g7762
                                                                     (lambda (g7232)
                                                                       (letrec ((g7763
                                                                                 (letrec ((x7767
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7764
                                                                                           (letrec ((x7765
                                                                                                     (letrec ((x7766
                                                                                                               (even-list/c)))
                                                                                                       (x7766
                                                                                                        j7233
                                                                                                        k7234
                                                                                                        g7232))))
                                                                                             (f7235
                                                                                              x7765))))
                                                                                   (x7767
                                                                                    j7233
                                                                                    k7234
                                                                                    x7764))))
                                                                         g7763))))
                                                             g7762))
                                                         'module
                                                         'importer
                                                         recursive-div2))
                                                       (x7760 (input)))
                                                (x7761 x7760))))
                                      g7759))))
                          g7249))))
              g7247)))
    g7246))
